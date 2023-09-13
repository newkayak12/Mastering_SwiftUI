import SwiftUI

struct TapGesture_Tutorials: View {
    @State private var tapCount = 0
    var tapToPlus: some Gesture {
        TapGesture()
            .onEnded{
                tapCount += 1
            }
    }
    
    var doubleTapToPlus10: some Gesture {
        TapGesture(count: 2)
            .onEnded{
                tapCount += 10
            }
    }
    
    var body: some View {
        VStack {
            Text("\(tapCount)")
                .font(.system(size: 250))
            
            HStack {
                Image(systemName: "minus.circle")
                    .font(.system(size: 100))
                    .foregroundColor(.red)
                    .padding()
//                    .onTapGesture(count: 2) { //더블탭
//                        tapCount -= 1
//                    }
                    .gesture(TapGesture().onEnded({
                        tapCount -= 1
                    }))
                
                Image(systemName: "plus.circle")
                    .font(.system(size: 100))
                    .foregroundColor(.blue)
                    .padding()
                    .gesture(doubleTapToPlus10) //순서가 중요하다.
                    .gesture(tapToPlus)
//                    .onTapGesture {
//                        tapCount += 1
//                    }
            }
        }
    }
}

struct TapGesture_Tutorials_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture_Tutorials()
    }
}
