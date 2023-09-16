import SwiftUI

struct ExclusiveGestureMenu: View {
    @Binding var currentGestureType: GestureType
    
    var body: some View {
        HStack {
            Button {
                currentGestureType = .rotation
            } label: {
                Label("Rotation", systemImage: "arrow.2.circlepath")
                    .foregroundColor(currentGestureType == .rotation ? Color.white : Color.blue)
                    .padding()
            }
            .buttonStyle(.borderedProminent)
            .tint(currentGestureType == .rotation ? Color.blue : Color.white)
            
            Button {
                currentGestureType = .magnification
            } label: {
                Label("Magnification", systemImage: "magnifyingglass")
                    .foregroundColor(currentGestureType == .magnification ? Color.white : Color.blue)
                    .padding()
            }
            .buttonStyle(.borderedProminent)
            .tint(currentGestureType == .magnification ? Color.blue : Color.white)
        }
    }
}

struct ExclusiveGestureMenu_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveGestureMenu(currentGestureType: .constant(.rotation))
    }
}
