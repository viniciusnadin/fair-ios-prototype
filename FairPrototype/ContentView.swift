//
//  ContentView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 30/01/24.
//

import SwiftUI
import AVKit
import AVFoundation

#Preview {
    ContentView()
}

struct VideoBackgroundView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return VideoPlayerUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

class VideoPlayerUIView: UIView {
    private var playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        guard let url = Bundle.main.url(forResource: "backgroundVideo", withExtension: "mp4") else { return }
        let playerItem = AVPlayerItem(url: url)
        let queuePlayer = AVQueuePlayer(items: [playerItem])
        playerLooper = AVPlayerLooper(player: queuePlayer, templateItem: playerItem)
        
        playerLayer.player = queuePlayer
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        
        queuePlayer.play()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            VideoBackgroundView()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("fair")
                    .font(.system(size: 100))
                    .foregroundStyle(.white)
                    .bold()
                    .fontWeight(.medium)
                Spacer().frame(maxHeight: 40)
                Button(action: {
                    print("Botão pressionado")
                }) {
                    Text("Get Started")
                        .frame(maxWidth: .infinity)
                        .padding(13)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(4)
                        .fontWeight(.light)
                }
                
                Button(action: {
                    print("Botão pressionado")
                }) {
                    Text("go ahead")
                        .frame(maxWidth: .infinity)
                        .padding(13)
                        .background(Color.white.opacity(0.3))
                        .foregroundColor(.white)
                        .cornerRadius(4)
                        .fontWeight(.light)
                }
                Spacer().frame(maxHeight: 20)
                Text("Some are born great, some achieve greatness, and some have greatness thrust upon them.")
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .fontWeight(.light)
                    .padding(20)
                Spacer()
            }.padding(40)
                .background(Color.black.opacity(0.2))
        }
    }
}

