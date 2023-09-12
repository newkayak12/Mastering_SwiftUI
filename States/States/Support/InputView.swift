
import SwiftUI

struct InputView: View {
    @Binding public var value: String
    
    var body: some View {
        VStack {
            TextField("Value", text: $value)
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(value: .constant(""))
    }
}
