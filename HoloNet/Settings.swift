import WebKit

struct Cookie {
    var name: String
    var value: String
}

// lot of new things 
let gcmMessageIDKey = "00000000000" // update this with actual ID if using Firebase

// URL for first launch
let rootUrl = URL(string: "https://holonet.stormgalaxy.com")!

// allowed origin is for what we are sticking to pwa domain
// This should also appear in Info.plist
let allowedOrigins: [String] = ["holonet.stormgalaxy.com", "appleid.apple.com", "apple.com", "525f19cb-holonet.s3.twcstorage.ru"]

// auth origins will open in modal and show toolbar for back into the main origin.
// These should also appear in Info.plist
let authOrigins: [String] = ["accounts.google.com", "discord.com", "github.com", "vk.com"]
// allowedOrigins + authOrigins <= 10

let platformCookie = Cookie(name: "app-platform", value: "iOS App Store")

// UI options
let displayMode = "standalone" // standalone / fullscreen.
let adaptiveUIStyle = true     // iOS 15+ only. Change app theme on the fly to dark/light related to WebView background color.
let overrideStatusBar = true   // iOS 13-14 only. if you don't support dark/light system theme.
let statusBarTheme = "dark"    // dark / light, related to override option.
let pullToRefresh = false    // Enable/disable pull down to refresh page
