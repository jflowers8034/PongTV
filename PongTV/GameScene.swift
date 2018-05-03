//
//  GameScene.swift
//  PongTV
//
//  Created by JP Flowers on 5/2/18.
//  Copyright © 2018 JP Flowers. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
var ball = SKSpriteNode()
var leftPaddle = SKSpriteNode()
var rightPaddle = SKSpriteNode()
    
    override func didMove(to view: SKView) {
      ball = self.childNode(withName: "ball")
    leftPaddle = self.childNode(withName: "leftPaddle")
    rightPaddle = self.childNode(withName: "rightPaddle")
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
