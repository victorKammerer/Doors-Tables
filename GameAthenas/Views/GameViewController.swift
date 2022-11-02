//
//  Test.swift
//  GameAthenas
//
//  Created by Joana Lima on 25/10/22.
//

import UIKit
import SwiftUI
import SpriteKit

typealias Game = GameScene

class GameViewController: UIViewController {
    
    var scene: GameScene?
    
    override func loadView() {
        super.loadView()
        self.view = SKView()
        self.view.bounds = UIScreen.main.bounds
        
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupScene()
    }
    
    func setupScene(){
        guard let view = self.view as? SKView, scene == nil else { return }
        let newScene = GameScene(size: view.bounds.size)
        view.presentScene(newScene)
        self.scene = newScene
    }
    
}
