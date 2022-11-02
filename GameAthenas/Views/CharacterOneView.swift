//
//  CharacterOneView.swift
//  GameAthenas
//
//  Created by Joana Lima on 25/10/22.
//

import SwiftUI
import SpriteKit

struct GameView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = GameViewController
    
    func makeUIViewController(context: Context) -> GameViewController {
        return GameViewController()
    }
    
    func updateUIViewController(_ uiViewController: GameViewController, context: Context) {}
}

struct CharacterOneView: View {
    
    var body: some View {
        GameView()
            .ignoresSafeArea()
    }
}

struct CharacterOneView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterOneView()
    }
}
