//
//  ViewManager.swift
//  GameAthenas
//
//  Created by vko on 02/11/22.
//

import Foundation

class ViewManager: ObservableObject {
    
    @Published var isGameRunning = false
    @Published var showingHomePage = true
    @Published var showingCharSelect = false
    @Published var showingYouLost = false
    
    
    func didUserTapStartButton(){
        showingHomePage = false
        isGameRunning = true
        
    }
    
    func didUserTapRestartButton(){
        showingYouLost = false
        isGameRunning = false
        showingHomePage = false
        showingCharSelect = true
    }
    
    func didUserTapGoToMenu(){
        isGameRunning = false
        showingCharSelect = true
    }
    
    func didUserTapToRestartGame(){
        isGameRunning.toggle()
        sleep(1)
        isGameRunning.toggle()
    }
}

