//
//  RestartButton.swift
//  GameAthenas
//
//  Created by vko on 02/11/22.
//

import Foundation
import SwiftUI

struct RestartButtonView : View {
    
    var actionForRestartButton : HandleWithButtonAction
    
    @State var isAnimating = false
    
    var body: some View {
        
        Button(action: {
            print("starIcon pressed")
            actionForRestartButton()
            
        }, label: {
            Image("playAgainButton")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 58)
        })
        .padding()
    }
}
