//
//  GameplayScene.swift
//  JackTheGiant
//
//  Created by Deborah on 1/17/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import SpriteKit

class GameplayScene: SKScene {
    
    var mainCamera: SKCameraNode?
    
    var bg1: BGClass?
    var bg2: BGClass?
    var bg3: BGClass?
    
    var player: Player?;
    
    var canMove = false;
    var moveLeft = false;
    
    var center: CGFloat?;
    
    override func didMove(to view: SKView) {
        initalizeVariables();
    }
    
    override func update(_ currentTime: TimeInterval) {
        moveCamera();
        managePlayer();
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self);
            
            if location.x > center! {
                moveLeft = false;
                player?.animatePlayer(moveLeft: moveLeft);
            } else {
                moveLeft = true;
                player?.animatePlayer(moveLeft: moveLeft);
            }
    }
        
        canMove = true;
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        canMove = false;
        player?.stopPlayerAnimation();
    }
    
    func initalizeVariables() {
        center = (self.scene?.size.width)! / (self.scene?.size.height)!;
        
        player = self.childNode(withName: "Player") as! Player?;
        player?.initalizePlayerAndAnimations();
        
        mainCamera = self.childNode(withName: "Main Camera") as! SKCameraNode?;
        
        getBackgrounds();
    }
    
    func getBackgrounds() {
        bg1 = self.childNode(withName: "BG 1") as! BGClass!;
        bg2 = self.childNode(withName: "BG 2") as! BGClass!;
        bg3 = self.childNode(withName: "BG 3") as! BGClass!
    }
    
    func managePlayer() {
        if canMove {
            player?.movePlayer(moveLeft: moveLeft);
        }
    }
    
    func moveCamera() {
        self.mainCamera?.position.y -= 3;
    }
    
    func manageBackgrounds() {
        bg1?.moveeBG(camera: mainCamera!);
        bg2?.moveeBG(camera: mainCamera!);
        bg3?.moveeBG(camera: mainCamera!);
    }
}

