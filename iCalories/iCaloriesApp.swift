//
//  iCaloriesApp.swift
//  iCalories
//
//  Created by Cloud Secrets on 06/06/2022.
//

import SwiftUI

@main
struct iCaloriesApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            SplashScreen()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
