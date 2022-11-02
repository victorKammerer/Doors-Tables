//
//  GameScene.swift
//  GameAthenas
//
//  Created by vko on 25/10/22.
//

import SpriteKit
import GameKit
import SwiftUI

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var controllerGameSceneDelegate: GameSceneDelegate?
    
    var scrollNode: SKNode!
    var doorNode: SKNode!
    var empadaNode: SKNode!
    var player: SKSpriteNode!
    
    var background = SKSpriteNode(imageNamed: "background")

    let playerCategory: UInt32 = 1 << 0
 // let groundCategory: UInt32 = 1 << 1
    let doorCategory: UInt32 = 1 << 1
    let empadaCategory: UInt32 = 1 << 2
    let scoreCategory: UInt32 = 1 << 3

    var score = 5
    var scoreLabelNode: SKLabelNode!
    var highScoreLabelNode: SKLabelNode!
    let userDefaults: UserDefaults = UserDefaults.standard
    
    
    
    override func didMove(to view: SKView) {
        
        backgroundColor = UIColor(.black)
        
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        physicsWorld.contactDelegate = self
        
        scrollNode = SKNode()
        addChild(scrollNode)
        
        doorNode = SKNode()
        scrollNode.addChild(doorNode)
        empadaNode = SKNode()
        scrollNode.addChild(empadaNode)
        
        
        
        //setupGround()
        setupFloor()
        setupDoor()
        setupEmpada()
        setupPlayer()
        
        setupScoreLabel()
        
        
    }
    
    func setupFloor() {
      
        background.zPosition = 0
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        addChild(background)
        
    }
    
       // elis
    
    func setupDoor() {
        let doorTexture = SKTexture(imageNamed: "doorTexture")
//        doorTexture.filteringMode = .nearest
        
        let movingDistance = CGFloat(doorTexture.size().height + self.frame.size.height)
        
        let moveDoor = SKAction.moveBy(x: 0, y: -movingDistance - 200, duration: 2)
        
        let removeDoor = SKAction.removeFromParent()

        let doorAnimation = SKAction.sequence([moveDoor, removeDoor])

        let createDoorAnimation = SKAction.run ({
            let door = SKNode()
            door.position = CGPoint(x: 200, y: self.frame.size.height + doorTexture.size().height / 2)
            door.zPosition = 1
            
            let leftDoorSpawn = SKSpriteNode(texture: doorTexture)
            leftDoorSpawn.position = CGPoint(x: -100, y: 200)
            
            leftDoorSpawn.physicsBody = SKPhysicsBody(rectangleOf: doorTexture.size())
            leftDoorSpawn.physicsBody?.categoryBitMask = self.doorCategory
            
            leftDoorSpawn.physicsBody?.isDynamic = false
            
            
            let midDoorSpawn = SKSpriteNode(texture: doorTexture)
            midDoorSpawn.position = CGPoint(x: 0, y: 200)
            
            midDoorSpawn.physicsBody = SKPhysicsBody(rectangleOf: doorTexture.size())
            midDoorSpawn.physicsBody?.categoryBitMask = self.doorCategory
            
            midDoorSpawn.physicsBody?.isDynamic = false
            
            let rightDoorSpawn = SKSpriteNode(texture: doorTexture)
            rightDoorSpawn.position = CGPoint(x: 100, y: 200)
            
            rightDoorSpawn.physicsBody = SKPhysicsBody(rectangleOf: doorTexture.size())
            rightDoorSpawn.physicsBody?.categoryBitMask = self.doorCategory
            
            rightDoorSpawn.physicsBody?.isDynamic = false
            
            let random = Int.random(in: 0...2)
            if random == 0 {
                door.addChild(leftDoorSpawn)
            } else if random == 1{
                door.addChild(midDoorSpawn)
            } else{
                door.addChild(rightDoorSpawn)
            }
            
            let scoreNode = SKNode()
            scoreNode.position = CGPoint(x: midDoorSpawn.size.width / 3, y: self.frame.height)
            scoreNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: midDoorSpawn.size.width, height: self.frame.size.height))
            
            scoreNode.physicsBody?.isDynamic = false
            scoreNode.physicsBody?.categoryBitMask = self.scoreCategory
            scoreNode.physicsBody?.contactTestBitMask = self.playerCategory
            
            door.addChild(scoreNode)
            
            door.run(doorAnimation)
            
            self.doorNode.addChild(door)
        })
        
        let waitAnimation = SKAction.wait(forDuration: 0.7)

        let repeatForeverAnimation = SKAction.repeatForever(SKAction.sequence([createDoorAnimation, waitAnimation]))
        
        doorNode.run(repeatForeverAnimation)
    }
    
    func setupEmpada() {
        
        let empadaTexture = SKTexture(imageNamed: "empada")
        
        let movingDistance = CGFloat(empadaTexture.size().height + self.frame.size.height)
        
        let moveEmpada = SKAction.moveBy(x: 0, y: -movingDistance - 200, duration: 2)
        
        let removeEmpada = SKAction.removeFromParent()

        let empadaAnimation = SKAction.sequence([moveEmpada, removeEmpada])

        let createEmpadaAnimation = SKAction.run ({
            let empada = SKNode()
            empada.position = CGPoint(x: 200, y: self.frame.size.height + empadaTexture.size().height / 2)
            empada.zPosition = 1
            
            let leftEmpadaSpawn = SKSpriteNode(texture: empadaTexture)
            leftEmpadaSpawn.position = CGPoint(x: -100, y: 200)
            
            leftEmpadaSpawn.physicsBody = SKPhysicsBody(rectangleOf: empadaTexture.size())
            leftEmpadaSpawn.physicsBody?.categoryBitMask = self.empadaCategory
            
            leftEmpadaSpawn.physicsBody?.isDynamic = false
            
            
            let midEmpadaSpawn = SKSpriteNode(texture: empadaTexture)
            midEmpadaSpawn.position = CGPoint(x: 0, y: 200)
            
            midEmpadaSpawn.physicsBody = SKPhysicsBody(rectangleOf: empadaTexture.size())
            midEmpadaSpawn.physicsBody?.categoryBitMask = self.empadaCategory
            
            midEmpadaSpawn.physicsBody?.isDynamic = false
            
            let rightEmpadaSpawn = SKSpriteNode(texture: empadaTexture)
            rightEmpadaSpawn.position = CGPoint(x: 100, y: 200)
            
            rightEmpadaSpawn.physicsBody = SKPhysicsBody(rectangleOf: empadaTexture.size())
            rightEmpadaSpawn.physicsBody?.categoryBitMask = self.empadaCategory
            
            rightEmpadaSpawn.physicsBody?.isDynamic = false
            
            let random = Int.random(in: 0...2)
            if random == 0 {
                empada.addChild(leftEmpadaSpawn)
            } else if random == 1{
                empada.addChild(midEmpadaSpawn)
            } else{
                empada.addChild(rightEmpadaSpawn)
            }
            
            let scoreNode = SKNode()
            scoreNode.position = CGPoint(x: midEmpadaSpawn.size.width, y: self.frame.height)
            scoreNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: midEmpadaSpawn.size.width , height: self.frame.size.height))
            
            scoreNode.physicsBody?.isDynamic = false
            scoreNode.physicsBody?.categoryBitMask = self.scoreCategory
            scoreNode.physicsBody?.contactTestBitMask = self.playerCategory
            
            empada.addChild(scoreNode)
            
            empada.run(empadaAnimation)
            
            self.empadaNode.addChild(empada)
        })
            
            let waitAnimation = SKAction.wait(forDuration: 0.7)

            let repeatForeverAnimation = SKAction.repeatForever(SKAction.sequence([createEmpadaAnimation, waitAnimation]))
            
            self.empadaNode.run(repeatForeverAnimation)
    }
    
    func setupPlayer() {
        let playerTexture = SKTexture(imageNamed: "barrocaTable")
        playerTexture.filteringMode = .linear
        let playerTextureB = SKTexture(imageNamed: "barrocaTable")
        playerTextureB.filteringMode = .linear

        let textureAnimation = SKAction.animate(with: [playerTexture, playerTextureB], timePerFrame: 0.2)
        let flap = SKAction.repeatForever(textureAnimation)

        player = SKSpriteNode(texture: playerTexture)
        player.position = CGPoint(x: 200 , y: 100)

        player.physicsBody = SKPhysicsBody(circleOfRadius: player.size.height / 2)

        player.physicsBody?.allowsRotation = false

        player.physicsBody?.categoryBitMask = playerCategory
        player.physicsBody?.collisionBitMask = doorCategory
        player.physicsBody?.contactTestBitMask = doorCategory

        player.run(flap)

        addChild(player)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if scrollNode.speed > 0 {
            player.physicsBody?.velocity = CGVector.zero

          //  player.physicsBody?.applyImpulse((CGVector(dx: 0, dy: 15)))
        } else if player.speed == 0 {
            restart()
        }
    }
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            
            let location = touch.location(in: self)
            
            player.position.x = location.x
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact) {

        
        if scrollNode.speed <= 0 {
            return
        }
        
        if (contact.bodyA.categoryBitMask & scoreCategory) == scoreCategory || (contact.bodyB.categoryBitMask & scoreCategory) == scoreCategory {

            print("ScoreUp")
            score += 1
            scoreLabelNode.text = "Score:\(score)"

            var bestScore = userDefaults.integer(forKey: "BEST")
            if score > bestScore {
                bestScore = score
                highScoreLabelNode.text = "Best Score:\(bestScore)"
                userDefaults.set(bestScore, forKey: "BEST")
                userDefaults.synchronize()
            }
        } else {
            print("GameOver")
            scrollNode.speed = 0
            controllerGameSceneDelegate?.didUserFailedLevel()
        }
    }
    
    func restart() {
        score = 0
        scoreLabelNode.text = "Score:\(score)"
        
        player.position = CGPoint(x: self.frame.size.width * 0.2, y: self.frame.size.height * 0.7)
        player.physicsBody?.velocity = CGVector.zero
        player.physicsBody?.collisionBitMask = doorCategory
        player.zPosition = 0
        
        doorNode.removeAllChildren()
        
        player.speed = 1
        scrollNode.speed = 1
    }
    
    func setupScoreLabel() {
        score = 0
        scoreLabelNode = SKLabelNode()
        scoreLabelNode.fontColor = UIColor.white
        scoreLabelNode.position = CGPoint(x: 185, y: self.frame.size.height - 100)
        scoreLabelNode.fontName = ("pixelEmulator")
        scoreLabelNode.zPosition = 100
        scoreLabelNode.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        scoreLabelNode.text = "\(score)"
        self.addChild(scoreLabelNode)
        
//        highScoreLabelNode = SKLabelNode()
//        highScoreLabelNode.fontColor = UIColor.black
//        //highScoreLabelNode.fontName = "pixelEmulator"
//        highScoreLabelNode.position = CGPoint(x: 10, y: self.frame.size.height - 180)
//        highScoreLabelNode.zPosition = 100
//        highScoreLabelNode.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        
        let bestScore = userDefaults.integer(forKey: "BEST")
        //highScoreLabelNode.text = "High Score:\(bestScore)"
       // self.addChild(highScoreLabelNode)
    }
}
