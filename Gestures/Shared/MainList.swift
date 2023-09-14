
import SwiftUI

struct MainList: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    SupportNavigationLink("Tap") { TapGesture_Tutorials() }
                    SupportNavigationLink("Long Press") { LongPressGesture_Tutorials() }
                    SupportNavigationLink("Drag") { DragGesture_Tutorials() }
                    SupportNavigationLink("Magnification") { MagnificationGesture_Tutorials() }
                    SupportNavigationLink("Rotation") { RotationGesture_Tutorials() }
                }
                
                Section {
                    SupportNavigationLink("Sequence Gesture") { SequenceGesture_Tutorials() }
                    SupportNavigationLink("Simulataneous Gesture") { SimultaneousGesture_Tutorials() }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Gestures")
        }
    }
}

struct SystemViewList_Previews: PreviewProvider {
    static var previews: some View {
        MainList()
    }
}
