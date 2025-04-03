import Foundation
import JukerstoneSDK

public class JukerstoneSDK: ObservableObject {
    private let playerSDK = JukePodSDK()
    
    private let jukerstoneId: String
    private let developerToken: String

    // Expose values using @Published so SwiftUI can react
    @Published public private(set) var progress: Double = 0.0
    @Published public private(set) var currentTime: Double = 0.0
    @Published public private(set) var duration: Double = 0.0

    public var player: Jukerstone {
        Jukerstone(
            sdk: playerSDK,
            jukerstoneId: jukerstoneId,
            developerToken: developerToken
        )
    }

    public init(jukerstoneId: String, developerToken: String) {
        self.jukerstoneId = jukerstoneId
        self.developerToken = developerToken

        playerSDK.onVideoEnd = {
            print("✅ [SDKWrapper] Video ended")
        }

        playerSDK.onNext = {
            print("✅ [SDKWrapper] Next triggered")
        }

        playerSDK.onPrevious = {
            print("✅ [SDKWrapper] Previous triggered")
        }
    }

    public func playNow(isrc: String) {
        playerSDK.playNow(isrc: isrc)
    }

    public func seek(to percentage: Double) {
        playerSDK.seek(percentage: percentage)
    }

    public func pause() {
        playerSDK.pause()
    }

    public func resume() {
        playerSDK.resume()
    }

    public func stop() {
        playerSDK.stop()
    }
}
