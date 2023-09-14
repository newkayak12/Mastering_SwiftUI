import SwiftUI

struct LongPressGesture_Tutorials: View {
    @State private var showOriginal = true
    
    var longPress: some Gesture {
        LongPressGesture()
            .onEnded { _ in
                showOriginal.toggle()
            }
    }
    
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .blur(radius: showOriginal ? 0.0 : 40.0)
            .animation(.easeInOut, value: showOriginal)
//            .onLongPressGesture(minimumDuration: 0.5, maximumDistance: 10) {
//                showOriginal.toggle()
//            } onPressingChanged: { isChanged in
//                //손가락 뗄 때가 아님
//                print(isChanged)
//            }
            .gesture(longPress)
    }
}

struct LongPressGesture_Tutorials_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture_Tutorials()
    }
}
