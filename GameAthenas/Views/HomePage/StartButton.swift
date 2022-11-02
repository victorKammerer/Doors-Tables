//
//  StartButton.swift
//  GameAthenas
//
//  Created by vko on 02/11/22.
//

import Foundation
import SwiftUI

struct StartButtonView : View {
    
    var actionForStartButton : HandleWithButtonAction
    
    @State var isAnimating = false
    
    var body: some View {
        
        Button(action: {
            print("starIcon pressed")
            actionForStartButton()
            
        }, label: {
            Image("startButton")
                .resizable()
                .scaledToFit()
                .frame(width: 156, height: 58)
        })
        .padding()
    }
}
