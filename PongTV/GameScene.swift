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
    
var levelTimerLabel = SKLabelNode(fontNamed: "crackedCode")
var levelTimerValue: Int = 500
    
   // didSet {
//    levelTimerLabel.text = "Time Left: \(levelTimerValue"
//    }
//}

var labelLeft = SKLabelNode(text:"")
var labelRight = SKLabelNode(text:"")

    
var ball = SKSpriteNode()
var leftPaddle = SKSpriteNode()
var rightPaddle = SKSpriteNode()
var score = [Int] ()

  
    
    
    
    
    override func didMove(to view: SKView) {
        

        
        StartGame()
        
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        leftPaddle = self.childNode(withName: "leftPaddle") as! SKSpriteNode
        rightPaddle = self.childNode(withName: "rightPaddle") as! SKSpriteNode
        
        labelLeft = self.childNode(withName: "labelLeft") as! SKLabelNode
        labelRight = self.childNode(withName: "labelRight") as! SKLabelNode
        
        labelLeft.fontName = "crackedCode"
        labelRight.fontName = "crackedCode"
        
        ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20))
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 1
        self.physicsBody = border
     
    
    }
    
    func StartGame() {
        score = [0,0]
        labelLeft.text = "\(score[0])"
        labelRight.text = "\(score[1])"
    }
    
    func addScore(playerWhoScored: SKSpriteNode) {
        ball.position = CGPoint(x: 0, y: 0)
        ball.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
        
        if playerWhoScored == leftPaddle {
            score[0] += 1
            
             ball.physicsBody?.applyImpulse(CGVector(dx: -20, dy: -20))
        }
        else if playerWhoScored == rightPaddle {
            score[1] += 1
            
             ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20))
        }
      
        labelLeft.text = "\(score[0])"
        labelRight.text = "\(score[1])"
    }
    
    override func update(_ currentTime: TimeInterval) {
      
        rightPaddle.run(SKAction.moveTo(y: ball.position.y, duration: 0.3))
        
        if ball.position.x <= leftPaddle.position.x - 60 {
            addScore(playerWhoScored: rightPaddle)
        }
        else if ball.position.x >= rightPaddle.position.x + 65 {
            addScore(playerWhoScored: leftPaddle)
        }
     
    }
    
    
    }

