//
//  GameAthenasApp.swift
//  GameAthenas
//
//  Created by Joana Lima on 14/10/22.
//

import SwiftUI

@main
struct GameAthenasApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(ViewManager())
        }
    }
}
