
import SwiftUI

struct Button_Tutorials: View {
    @State private var value = Int.random(in: 1...100)
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Random Number")
                .font(.largeTitle)
            
            Text("\(value)")
                .font(.system(size: 200))
            
            Spacer()
            
            // #1
            HStack {
                Button {
                    value = Int.random(in: 1 ... 100)
                } label: {
//                    HStack {
//                        Image(systemName: "repeat")
//                        Text("Generate")
//                    }
                    
                    Label("Generate", systemImage: "repeat").font(.caption)
                    
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
//                .border(.black)
                
//                Button("Generate", action: generate)
//                    .padding()
//                    .border(.black)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func generate() {
        value = Int.random(in: 1...100)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button_Tutorials()
    }
}
