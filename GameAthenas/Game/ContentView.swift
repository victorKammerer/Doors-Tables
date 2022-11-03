//
//  ContentView.swift
//  GameAthenas
//
//  Created by Joana Lima on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var viewManager: ViewManager
    
    let homePage = HomePageView()
    
    var body: some View {
        
        if viewManager.isGameRunning {
            GameView().ignoresSafeArea(.all)
        }
        
        if viewManager.showingHomePage {
            homePage.ignoresSafeArea(.all)
        }
        
        if viewManager.showingCharSelect {
            CharacterSelectionView().ignoresSafeArea(.all)
        }
        
        if viewManager.showingYouLost {
            YouLostView(actionForRestart: {}, actionForMenu: {}).ignoresSafeArea(.all)
        }
        
        
        
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

