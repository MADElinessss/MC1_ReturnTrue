//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI
import AVKit

struct AVPlayerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = AVPlayerViewController
    
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        player.play() // Play the video as soon as the view is initialized
        return playerViewController
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Update the AVPlayerViewController with any changes to the AVPlayer instance
        uiViewController.player = player
    }
}

