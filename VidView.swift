import SwiftUI
import AVFoundation
import AVKit

struct VidView: UIViewRepresentable {
    
    var videoURL:URL
    var previewLength:Double
    
    func makeUIView(context: Context) -> UIView {
        return PlayaView(frame: .zero, url: videoURL, previewLength: previewLength)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}
