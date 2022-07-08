//
//  HomeViewController.swift
//  small-project-iOS
//
//  Created by Dipika Kansara on 8/7/2022.
//


import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var videoIDText: UITextField!
    @IBOutlet var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoIDText.layer.cornerRadius = videoIDText.frame.size.height / 2
        videoIDText.layer.borderWidth = 4
        videoIDText.layer.borderColor = CGColor.init(red: 128, green: 0, blue: 128, alpha: 1)
        playButton.layer.cornerRadius = playButton.frame.size.height / 2

        
    }
    
    
    @IBAction func playButtonPressed(_ sender: Any) {
      
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VideoViewController") as! VideoViewController
          self.navigationController?.pushViewController(vc, animated: true)
        
        vc.passedValue = videoIDText.text
        
    }
    

}
