//
//  Player.swift
//  JackTheGiant
//
//  Created by Deborah on 1/31/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    
    func movePlayer(moveLeft: Bool) {
        
        if moveLeft {
            self.position.x = self.position.x - 7;
            
        } else {
            self.position.x = self.position.x + 7;
    }
}

}
