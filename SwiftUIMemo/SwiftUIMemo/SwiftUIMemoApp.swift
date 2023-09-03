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
    
    

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, manager.mainContext)
//                .environmentObject(store)
                .environmentObject(manager)
        }
    }
}
