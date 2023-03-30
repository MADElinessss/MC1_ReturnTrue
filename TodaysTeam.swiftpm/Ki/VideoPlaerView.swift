//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/30.
//

import AVFoundation
import SwiftUI



struct VideoPlayerView: UIViewRepresentable {
    let player: AVPlayer

    func makeUIView(context: UIViewRepresentableContext<VideoPlayerView>) -> UIView {
        let videoLayer = AVPlayerLayer(player: player)
        let view = UIView()
        view.layer.addSublayer(videoLayer)
        videoLayer.frame = view.bounds
        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<VideoPlayerView>) {
        // No need to do anything here for this example
    }
}
