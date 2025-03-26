# jukerstone-ios-sdk

The **Jukerstone iOS SDK** lets developers integrate licensed Music Video playback with nothing but an ISRC.

⚡️ Start playing in seconds.  
🎯 No clearance hurdles.  
🎵 5 free Spins included with your developer account.

---

## ✅ What’s Included

- 🔁 `playNow(isrc:)` — stream a licensed track by ISRC
- ⏹ `stop()` — immediately stop playback
- 📊 `videoCurrentTime` — get playback progress (via WebView event)
- 🛑 `videoEnded` — detect when track finishes playing

---

## 📦 Installation

Coming soon via Swift Package Manager or Cocoapods.

---

## 🚀 Usage (Minimal Example)

```swift
import SwiftUI
import dmg_player_ios_sdk

struct ContentView: View {
  @StateObject private var playerSDK = DMGPlayerSDK()

  var body: some View {
    VStack(spacing: 16) {
      DMGPictureLicense(sdk: playerSDK).frame(height: 0) // Required once

      Button("▶️ Play Track") {
        playerSDK.playNow(isrc: "USUM72105973") // Replace with your ISRC
      }

      Button("⏹ Stop") {
        playerSDK.stop()
      }
    }
    .padding()
  }
}
