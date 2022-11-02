//
//  PauseMenu.swift
//  GameAthenas
//
//  Created by vko on 02/11/22.
//

import Foundation
import SwiftUI

typealias HandleWithButtonAction = (() -> Void)

struct PauseMenuView : View {
    
    var actionXButton: HandleWithButtonAction
    var actionMenuPressed : HandleWithButtonAction
    var actionRestartPressed : HandleWithButtonAction

    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFit()
                .frame(width: 332, height: 477)

        }
        
    }
    
}


struct PauseMenuView_Previews: PreviewProvider {
    static var previews: some View {
        PauseMenuView(actionXButton: {}, actionMenuPressed: {}, actionRestartPressed: {})
    }
}
