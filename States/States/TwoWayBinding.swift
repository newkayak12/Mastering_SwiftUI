import SwiftUI

struct TwoWayBinding: View {
    @State private var value: String = "Hello"
    
    var body: some View {
        VStack(spacing: 70) {
            Text(value)
                .font(.largeTitle)
            InputView(value: $value)
                .padding()
                .border(.foreground)
            
        }
    }
}

struct TwoWayBinding_Previews: PreviewProvider {
    static var previews: some View {
        TwoWayBinding()
    }
}
