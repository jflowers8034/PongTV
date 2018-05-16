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

    @IBOutlet weak var welcomePlayerLabel: UILabel!
    @IBOutlet weak var startGameButton: UIButton!
    
    @IBAction func whenButtonPressed(_ sender: UIButton) {
      self.welcomePlayerLabel.isHidden = true
      self.startGameButton.isHidden = true
        GameScene().applyImpulse()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let musicFile = Bundle.main.path(forResource: "retro", ofType: ".mp3")
        
        do {
            try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
        }
        catch {
            print(error)
            
        }
        
        
    
        
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
    

    @IBAction func startButton(_ sender: Any) {
        musicEffect.play()
        
        
    }
    
   
    
    
    
}
