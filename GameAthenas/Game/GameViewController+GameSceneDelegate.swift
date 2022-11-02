//
//  GameViewController+GameSceneDelegate.swift
//  GameAthenas
//
//  Created by vko on 02/11/22.
//

import SwiftUI

extension GameViewController : GameSceneDelegate {
    
    func didUserFailedLevel() {
        presentLevelFailedView()
    }
    
    func presentLevelFailedView(){
        let vc = UIHostingController(rootView: YouLostView(
            actionForRestart: {
                print("user pressed restart")
                self.viewManager?.didUserTapRestartButton()
                self.dismiss(animated: true)
            },
            actionForMenu: {
                self.viewManager?.didUserTapGoToMenu()
                self.dismiss(animated: true, completion: nil)
            })
        )
        
        self.scene?.isPaused = true
        vc.modalPresentationStyle = .overFullScreen
        vc.view.backgroundColor = .clear
        self.present(vc, animated: true)
    }
}

