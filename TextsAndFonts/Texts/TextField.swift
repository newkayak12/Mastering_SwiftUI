import SwiftUI

enum FieldType: Hashable {
    case email
    case password
}


struct TextField_Tutorials: View {
    @State private var email: String = ""
    @State private var password: String = ""    
    @State private var showJoinAlert = false
    @State private var showInputAlert = false
    
//    @FocusState private var emailFocused: Bool
//    @FocusState private var passwordFocused: Bool
    
    @FocusState private var focusedField: FieldType?
    
    var body: some View {
        Form {
            Section {
                TextField("Email", text: $email, prompt: Text("Input Email"))
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
//                    .focused($emailFocused)
                    .focused($focusedField, equals: .email)
                    .submitLabel(.next)
                    .onSubmit {
//                        passwordFocused = true
                        focusedField = nil
                    }
                
                SecureField("Password", text: $password, prompt: Text("Input Password"))
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
//                    .focused($passwordFocused)
                    .focused($focusedField, equals: .password)
                    .submitLabel(.done)
                    .onSubmit {
                        if email.isEmpty {
                            showInputAlert = true
                        } else {
                            showJoinAlert = true
                            
//                            emailFocused = false
//                            passwordFocused = false
                            
                            focusedField = nil
                        }
                    }
                
            }
            
            Section {
                Button {
                    if email.isEmpty {
                        showInputAlert = true
                    } else {
                        showJoinAlert = true
                        //                            emailFocused = false
                        //                            passwordFocused = false
                        
                        focusedField = nil
                    }
                } label: {
                    Text("회원가입")
                }
                .frame(maxWidth: .infinity)
                .alert("회원가입", isPresented: $showJoinAlert) {
                    Button {
                        email = ""
                        password = ""
                       
                    } label: {
                        Text("확인")
                    }
                } message: {
                    Text("계정: \(email)\n비밀번호: \(password)")
                }
                .alert("경고", isPresented: $showInputAlert) {
                    Button {
//                        emailFocused = true
                        
                        focusedField = nil
                    } label: {
                        Text("확인")
                    }
                } message: {
                    Text("이메일을 입력해 주세요")
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1 ){
                focusedField = .email
            }
        }
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Tutorials()
    }
}
