//
//  Player.swift
//  JackTheGiant
//
//  Created by Deborah on 1/31/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    
    private var textureAtlas = SKTextureAtlas();
    private var playerAnimation = [SKTexture]();
    private var animatePlayerAction = SKAction();
    
    func initalizePlayerAndAnimations() {
        textureAtlas = SKTextureAtlas(named: "Player.atlas");
        
        for i in 2...textureAtlas.textureNames.count {
            let name = "Player \(i)";
            playerAnimation.append(SKTexture(imageNamed: name));
        }
        
        animatePlayerAction = SKAction.animate(withNormalTextures: playerAnimation, timePerFrame: 0.08, resize: true, restore: false);
    }
    
    func movePlayer(moveLeft: Bool) {
        
        if moveLeft {
            self.position.x = self.position.x - 7;
            
        } else {
            self.position.x = self.position.x + 7;
    }
}

}
