//
//  GameViewController.swift
//  PongTV
//
//  Created by JP Flowers on 5/2/18.
//  Copyright © 2018 JP Flowers. All rights reserved.
// Olivia Glowacka

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation


class GameViewController: UIViewController {
    
    var musicEffect: AVAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var startGameButton: UIButton!
    
    @IBOutlet weak var welcomePlayerLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBAction func whenButtonPressed(_ sender: UIButton) {
      self.welcomePlayerLabel.isHidden = true
      self.startGameButton.isHidden = true
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        
        
    
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
        }
    

    
    
    

}
