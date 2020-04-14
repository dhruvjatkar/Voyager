//
//  PlayaView.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 3/14/20.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

let rect = CGRect(
    origin: CGPoint(x: 0, y: 0),
    size: UIScreen.main.bounds.size
)

class PlayaView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var previewTimer:Timer?
    var previewLength:Double
    
    init(frame: CGRect, url: URL, previewLength:Double) {
        self.previewLength = previewLength
        
        super.init(frame: frame)
        
        let player = AVPlayer(url: url)
        player.volume = 0
        player.play()
        
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.backgroundColor = UIColor.black.cgColor
        
        previewTimer = Timer.scheduledTimer(withTimeInterval: previewLength, repeats: true, block: { (timer) in
            player.seek(to: CMTime(seconds: 0, preferredTimescale: CMTimeScale(1)))
        })
        
        
        layer.addSublayer(playerLayer)
    }
    
    required init?(coder: NSCoder) {
        self.previewLength = 15
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = rect
    }
}
