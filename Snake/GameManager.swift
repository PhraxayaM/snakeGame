//
//  GameManager.swift
//  Snake
//
//  Created by MattHew Phraxayavong on 7/23/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import SpriteKit

class GameManager {
    var scene: GameScene!
    init(scene: GameScene) {
    self.scene = scene
    }
        
    func initGame() {
        //starting player position
        scene.playerPositions.append((10, 10))
        scene.playerPositions.append((10, 11))
        scene.playerPositions.append((10, 12))
        renderChange()
        
    }
    
    func renderChange() {
        for (node, x, y) in scene.gameArray {
            if contains(a: scene.playerPositions, v: (x,y)) {
                node.fillColor = SKColor.cyan
            } else {
                node.fillColor = SKColor.clear
            }
        }
    }
    func contains(a:[(Int, Int)], v:(Int,Int)) -> Bool {
        let (c1, c2) = v
        for (v1, v2) in a { if v1 == c1 && v2 == c2 {return true} }
        return false
    }
    
    
    

}





