//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI
import AVFoundation

struct dummy: View {
    
    let fileURL = URL(string: "https://www.youtube.com/watch?v=0Kxpm8sgZsM")!
        let player: AVPlayer
        init() {
            player = AVPlayer(url: fileURL)
        }
    
        var body: some View {
            VideoPlayerView(player: player)
                .edgesIgnoringSafeArea(.all)
        }
}
//
//struct VideoPlayerView: UIViewRepresentable {
//    let player: AVPlayer
//
//    func makeUIView(context: UIViewRepresentableContext<VideoPlayerView>) -> UIView {
//        let videoLayer = AVPlayerLayer(player: player)
//        let view = UIView()
//        view.layer.addSublayer(videoLayer)
//        videoLayer.frame = view.bounds
//        return view
//    }
//
//    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<VideoPlayerView>) {
//        // No need to do anything here for this example
//    }
//}
//
//struct ContentView: View {
//    let fileURL = URL(fileURLWithPath: "/Users/YourUsername/Documents/myVideo.mp4")
//    let player: AVPlayer
//    init() {
//        player = AVPlayer(url: fileURL)
//    }
//
//    var body: some View {
//
//        VideoPlayerView(player: player)
//            .edgesIgnoringSafeArea(.all)
//    }
//}
