# Jukerstone iOS SDK

The **Jukerstone iOS SDK** enables authenticated access to music videos via ISRC, with token-based pricing and real-time video streaming infrastructure.

Built for developers who need licensed video access and low-latency playback — without negotiating with rights holders.

---

## 🎯 What This SDK Does

- ✅ Plays official **music videos** using just the ISRC  
- 🔐 Authenticates with your **Developer Token**  
- 🔄 **Burns a Spin** for every playback — reducing token supply  
- 📊 Reports activity to your Jukerstone Dashboard  
- 🎮 Supports playback control, seeking, and events  
- 🎵 Automatically syncs metadata to `MediaSession`  

> Access is tokenized. Pricing is dynamic. Burn is permanent.

---

## 📦 Installation

Install via **Swift Package Manager**:

https://github.com/jukerstone/jukerstone-ios-sdk

yaml
Copy
Edit

---

## 🛠 Requirements

To use the SDK, you need:

- A **Jukerstone ID (JID)**
- A **Jukerstone Developer Token (JDT)**

👉 Request both at [jukerstone.com/dashboard](https://jukerstone.com/dashboard)

---

## 🚀 Quickstart

```swift
import SwiftUI
import JukerstoneSDK

struct ContentView: View {
    @StateObject private var sdk = JukePodSDK()
    
    private var JID: String = "your-jukerstone-id"
    private var JDT: String = "your-jukerstone-developer-token"
    
    var body: some View {
        VStack {
            Jukerstone(
                sdk: sdk,
                jukerstoneId: JID,
                developerToken: JDT
            )
            
            Button("Play") {
                let isrc = "GBAYE0601641"
                sdk.playNow(isrc: isrc)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Progress: \(sdk.progress, specifier: "%.1f")%")
                Text("Current Time: \(sdk.currentTime, specifier: "%.2f")s")
                Text("Duration: \(sdk.duration, specifier: "%.2f")s")
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            Divider()
            
            Button("Seek") {
                sdk.seek(percentage: 0.5)
            }
            
            Button("Pause") {
                sdk.pause()
            }
            
            Button("Resume") {
                sdk.resume()
            }
            
            Button("Stop") {
                sdk.stop()
            }
        }
        .onAppear {
            sdk.onVideoEnd = {
                print("✅ [SDK] Video ended callback triggered")
            }
            sdk.onNext = {
                print("✅ [SDK] Control panel next callback triggered")
            }
            sdk.onPrevious = {
                print("✅ [SDK] Control panel previous callback triggered")
            }
        }
        .padding()
    }
}
```
## 🎥 Play a Music Video

```swift
Button("Play Track") {
    playerSDK.playNow(isrc: "USSM19922502")
}
```

- Requires a valid ISRC
- Burns a Spin on each play
- Streams the licensed video instantly

## 🔁 Core Controls

```swift
playerSDK.pause()
playerSDK.resume()
playerSDK.stop()
playerSDK.seek(percentage: 0.25)
```

## 📡 Event Hooks
```swift
playerSDK.onVideoEnd = { 
  // Playback finished
}

playerSDK.onNext = {
  // Next track requested
}

playerSDK.onPrevious = {
  // Previous track requested
}

```
## 🔉 MediaSession Support

Automatically integrates with system-level playback controls:

- 🎵 Displays title, artist, and album artwork on the lock screen  
- 🎛 Enables Control Center actions (play, pause, skip)  
- 🎧 Supports remote controls (AirPods, CarPlay, Bluetooth devices)  

---

## 🔥 Why Spins?

Spins are the protocol-level unit of access.  
Every time a video is played through the SDK:

- 🔥 A Spin is **burned**  
- 📉 Supply **decreases**  
- 📈 Value **increases** for holders  

This creates a deflationary access model —  
Apps contribute to the network by consuming tokens.

You can:

- 💼 Hold Spins for personal or team access  
- 🏦 Pre-fund apps so your users never worry  
- 📊 Monitor usage and burn in real time from the dashboard  

> Holding tokens gives you leverage.  
> Paying per-use supports sustainable licensing.

---

## 📊 Dashboard & Analytics

Your [Jukerstone Dashboard](https://jukerstone.com/dashboard) lets you:

- 🔥 View real-time burn logs  
- 📈 Explore per-track analytics  
- 🎯 Monitor app activity and ISRCs  
- 🏆 Track global leaderboard metrics  

---

## 🧾 Notes

- ✅ This SDK is optimized for licensed music video playback  
- 🎯 You pass the ISRC, we handle the rest (search, metadata, artwork)  
- 🚀 Works out of the box — no media hosting required  

---

## 📈 Getting Started

1. 🆔 Request your Jukerstone ID (JID) and Developer Token (JDT)  
2. 💸 Fund your account with Spins  
3. 🧰 Start building with real music video access — no sandbox, real Spins  

---

## 🪙 Buy Tokens

Spins are available via:

- 🔄 Direct allocation  
- 🤝 Partnerships  
- 🧑‍💻 Developer purchase program  

> 🎯 Early builders receive discounts  
> 💰 Treasury-backed with transparent burn economics

👉 [Get started at jukerstone.com](https://jukerstone.com)

---

## 🧩 SDK Compatibility

- ✅ Native Swift (UIKit)  
- ✅ SwiftUI-ready  
- ✅ React Native (via bridge – available on request)  

---

## 🧠 Build with Confidence

This SDK powers video playback in production across:

- 🛍 Retail environments  
- 🏋️‍♀️ Gyms and fitness studios  
- 🎧 Music-facing mobile apps  
- 🖥 Interactive displays and embedded devices  

> 📦 Weekly updates  
> 🎵 Real content  
> 🚚 Shipping software  

---

## 📣 Need Help?

- Visit your dashboard: [jukerstone.com/dashboard](https://jukerstone.com/dashboard)  
- Reach out via the developer portal or Discord  
- Questions? We're here to support you  

---

© Jukerstone Ltd. All rights reserved.
