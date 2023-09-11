import SwiftUI

@main
struct NavigationApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(macOS)
//            MultipleColumnView()
            #else
            MainView()
            #endif
        }
#if os(macOS)
        .commands {
            SidebarCommands()
        }
#endif
    }
}
