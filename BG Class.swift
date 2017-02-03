//
//  BG Class.swift
//  JackTheGiant
//
//  Created by Deborah on 2/3/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import SpriteKit

class BGClass: SKSpriteNode {
    
    func moveeBG(camera: SKCameraNode) {
        if self.position.y - self.size.height - 10 > camera.position.y {
            self.position.y -= self.size.height * 3;
    }
}
}
