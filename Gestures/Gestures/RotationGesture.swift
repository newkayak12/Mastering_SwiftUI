import SwiftUI

struct RotationGesture_Tutorials: View {
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
}

struct RotationGesture_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesture_Tutorials()
    }
}
