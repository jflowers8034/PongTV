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
        
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        leftPaddle = self.childNode(withName: "leftPaddle") as! SKSpriteNode
        rightPaddle = self.childNode(withName: "rightPaddle") as! SKSpriteNode
        
        ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20))
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 1
        self.physicsBody = border
    }
    
    override func update(_ currentTime: TimeInterval) {
      
        rightPaddle.run(SKAction.moveTo(y: ball.position.y, duration: 1.0))
     
    }
}
