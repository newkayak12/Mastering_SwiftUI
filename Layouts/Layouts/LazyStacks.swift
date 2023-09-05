
import SwiftUI

struct LazyStacks: View {
    var body: some View {
        ScrollView(.horizontal) {
           
            LazyHStack {
                ForEach(1 ..< 101) { num in
                    NumberView(number: num)
                }
            }
            
        }
    }
}

struct LazyStacks_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacks()
    }
}
