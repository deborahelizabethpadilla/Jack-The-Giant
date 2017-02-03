//
//  CloudsController.swift
//  JackTheGiant
//
//  Created by Deborah on 2/3/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import SpriteKit

class CloudsController {
    func createClouds() -> [SKSpriteNode] {
        
        var clouds = [SKSpriteNode]();
        
        for i in 0 ..< 2 {
            let cloud1 = SKSpriteNode(imageNamed: "Cloud 1");
            cloud1.name = "1";
            let cloud2 = SKSpriteNode(imageNamed: "Cloud 2");
            cloud2.name = "2";
            let cloud3 = SKSpriteNode(imageNamed: "Cloud 3");
            cloud3.name = "3";
            let darkCloud = SKSpriteNode(imageNamed: "Dark Cloud");
            darkCloud.name = "Dark Cloud";
            
            cloud1.xScale = 0.9;
            cloud1.yScale = 0.9;
            
            cloud2.xScale = 0.9;
            cloud2.yScale = 0.9;
            
            cloud3.xScale = 0.9;
            cloud3.yScale = 0.9;
            
            darkCloud.xScale = 0.9;
            darkCloud.yScale = 0.9;
            
            clouds.append(cloud1);
        }
        
        
        return clouds;
    }
}
