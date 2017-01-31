//
//  GameViewController.swift
//  JackTheGiant
//
//  Created by Deborah on 1/17/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GameplayScene(fileNamed:"GameplayScene") {
            
                let skView = self.view as! SKView
                skView.showsFPS = true
                skView.showsNodeCount = true
                
                skView.ignoresSiblingOrder = true
                
                scene.scaleMode = .aspectFill
                
                skView.presentScene(scene)
                
            }
            
        }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
