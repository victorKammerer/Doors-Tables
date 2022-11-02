//
//  CharacterOneView.swift
//  GameAthenas
//
//  Created by Joana Lima on 25/10/22.
//

import SwiftUI

struct GameView: UIViewControllerRepresentable {
    
    @EnvironmentObject private var viewManager: ViewManager
    
    typealias UIViewControllerType = GameViewController
    
    func makeUIViewController(context: Context) -> GameViewController {
        return GameViewController(viewManager: viewManager)
    }
    
    func updateUIViewController(_ uiViewController: GameViewController, context: Context) {}
}
