//
//  LevelManager.swift
//  GameAthenas
//
//  Created by vko on 02/11/22.
//

import Foundation

class LevelManager: ObservableObject {
    
    private var startLevel: Int {
        let value = UserDefaults.standard.value(forKey: Constants.LEVEL)
        guard let value = value, let valueConverted = value as? Int else { return 0 }
        return valueConverted
    }
    
    private var isLevelAlreadySet: Bool {
        return UserDefaults.standard.value(forKey: Constants.LEVEL) != nil
    }
    
    struct Constants {
        static let LEVEL = "level"
        static let START_LEVEL = 0
    }
    
    func setupUserDefaultToLevel(){
        if isLevelAlreadySet { return }
        UserDefaults.standard.set(Constants.START_LEVEL, forKey: Constants.LEVEL)
    }
}
