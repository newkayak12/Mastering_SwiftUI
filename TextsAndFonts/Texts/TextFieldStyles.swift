
import SwiftUI

struct TextFieldStyles: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var favoriteNumber: Int = 0
    
    var body: some View {
        VStack {
            
            
            TextField("Email", text: $email, prompt: Text("Input Email"))
                .padding()
                .textFieldStyle(.roundedBorder)
                .textContentType(.username)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password, prompt: Text("Input Password"))
                .padding()
                .textFieldStyle(.roundedBorder)
                .textContentType(.password)
            
            TextField("Number", value: $favoriteNumber, format: .number, prompt: Text("Input Number"))
                .padding()
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            Text("\(favoriteNumber)").font(.largeTitle)
        }
    }
}

struct TextFieldStyles_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStyles()
    }
}
