import SwiftUI

struct NumberView: View {
    let number: Int
    
    init(number: Int) {
        self.number = number
        print("NumberView \(number) initialized")
    }
    
    var body: some View {
        Text("\(number)")
            .font(.largeTitle)
            .frame(width: 150, height: 150)
            .background(.yellow)
            .clipShape(Circle())
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(number: 1)
    }
}
