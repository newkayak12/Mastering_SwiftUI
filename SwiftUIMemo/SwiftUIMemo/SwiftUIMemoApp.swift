//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by Sang Hyeon kim on 2023/09/02.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
//    @StateObject var store = MemoStore()
    let manager = CoreDataManager.shared
    
    @StateObject var navigationState = NavgiationState()
    
    

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, manager.mainContext)
//                .environmentObject(store)
                .environmentObject(manager)
                .environmentObject(navigationState)
        }
    }
}
