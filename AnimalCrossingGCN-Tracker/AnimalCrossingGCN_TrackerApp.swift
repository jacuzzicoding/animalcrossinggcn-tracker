//
//  AnimalCrossingGCN_TrackerApp.swift
//  AnimalCrossingGCN-Tracker
//
//  Created by Brock Jenkinson on 10/5/24.
//

import SwiftUI
import SwiftData

@main
struct AnimalCrossingGCN_TrackerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Fossil.self,
            Bug.self  // Include Bug model in the schema
            Fish.self // fish model 
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
