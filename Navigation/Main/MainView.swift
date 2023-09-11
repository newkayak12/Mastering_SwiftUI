import SwiftUI

struct MainView: View {
    @State private var isHidden = false
    @State private var push = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                
                Button {
                    isHidden.toggle()
                } label: {
                    Text("toggle")
                }
                
                
                Button {
                    push = true
                } label: {
                    Text("conditionalPush")
                }
                .padding()
                
                NavigationLink("buttonPush", isActive: $push) {
                    EmojiView(emoji: "😃")
                        .navigationTitle("SMILE")
                }.hidden()
                //envVariable 또는 push를 보내서 false로 변경하면 pop 된다.
                
                NavigationLink("Push") {
                    EmojiView(emoji: "😃")
                        .navigationTitle("SMILE")
                }
                .navigationTitle("Hello")
                         
                         
            }
            .navigationTitle("Navigation") //반드시 embed된 최상단의 view에 추가해야 한다.
//            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(isHidden)
            .toolbar {
//                ToolbarItemGroup(placement: .navigationBarLeading) {
//                    HStack {
//                        Button {
//                            isHidden.toggle()
//                        } label: {
//                            Text("toggle")
//                        }
//
//                        Button {
//                            isHidden.toggle()
//                        } label: {
//                            Text("toggle")
//                        }
//                    }
//                }
//
//
//
//                ToolbarItemGroup(placement: .navigationBarTrailing) {
//                    HStack {
//                        Button {
//                            isHidden.toggle()
//                        } label: {
//                            Text("toggle")
//                        }
//
//                        Button {
//                            isHidden.toggle()
//                        } label: {
//                            Text("toggle")
//                        }
//                    }
//                }
                
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
