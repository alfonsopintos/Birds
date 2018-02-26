//
//  GameScene.swift
//  Birds
//
//  Created by Alfonso Pintos on 2/26/18.
//  Copyright © 2018 Pepe Loves Books. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let gameCamera = SKCameraNode()
    var panRecognizer = UIPanGestureRecognizer()
    
    override func didMove(to view: SKView) {
        addCamera()
        setupGestureRecognizer()
    }
    
    func setupGestureRecognizer() {
        guard let view = view else { return }
        panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(pan))
        view.addGestureRecognizer(panRecognizer)
    }
    
    func addCamera() {
        guard let view = view else { return }
        addChild(gameCamera)
        gameCamera.position = CGPoint(x: view.bounds.size.width / 2, y: view.bounds.size.height / 2)
        camera = gameCamera
    }
    
}


extension GameScene {
    
    @objc func pan(sender: UIPanGestureRecognizer) {
        
    }
}
