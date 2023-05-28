//
//  SwiftyStoreApp.swift
//  SwiftyStore
//
//  Created by Varun on 28/05/23.
//

import SwiftUI

@main
struct SwiftyStoreApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
