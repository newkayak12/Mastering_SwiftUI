import SwiftUI

@main
struct DataPersistenceApp: App {
    
    let manager = CoreDataManager.shared

    var body: some Scene {
        WindowGroup {
            MainList()
                .environment(\.managedObjectContext, manager.mainContext)
        }
        #if os(macOS)
        .windowStyle(.hiddenTitleBar)
        #endif
    }
}
