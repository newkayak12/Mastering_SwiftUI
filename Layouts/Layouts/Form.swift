import SwiftUI

struct Form_Tutorials: View {
    @State private var email = ""
    @State private var password = ""
    @State private var address = ""
    @State private var age = 0
    @State private var receiveEmail = false
    
    var body: some View {
        Form {
            Section{
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                TextField("Address", text: $address)
            }
            
            Stepper("Age: \(age)", value: $age)
            Toggle(isOn: $receiveEmail, label: { Text("Receive Email") })
            Button("확인") {
                
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
    }
}

struct Form_Previews: PreviewProvider {
    static var previews: some View {
        Form_Tutorials()
    }
}
