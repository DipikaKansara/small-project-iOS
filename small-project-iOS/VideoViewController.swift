//
//  VideoViewController.swift
//  small-project-iOS
//
//  Created by Dipika Kansara on 8/7/2022.
//

import UIKit
import youtube_ios_player_helper

class VideoViewController: UIViewController, YTPlayerViewDelegate {
    
   @IBOutlet var playerView : YTPlayerView!
    
    var passedValue : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.delegate = self
            
        
        
        if let myPassedData = passedValue {
            print(passedValue)
            playerView.load(withVideoId: passedValue!)
        }
        

    }
        func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
            playerView.playVideo()
    
        }
    
    
    

    
}
