import SwiftUI

struct Stepper_Tutorials: View {
    @State private var quantity = 0
    
    var body: some View {
        VStack {
            
            Text("\(quantity)")
                .font(.system(size: 150))
            
            
            Stepper("Quantity", value: $quantity, in: 0 ... 100, step: 1) { edit in
                
            }
            .padding()
            
            Stepper("Quantity Circular") {
                if quantity >= 5 { quantity = 0 }
                else {quantity += 1}
            } onDecrement: {
                if quantity <= 1 { quantity = 5 }
                else {quantity -= 1}
            } onEditingChanged: { edit in
                
            }
            .padding()

        }
    }
}

struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Tutorials()
    }
}
