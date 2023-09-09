import SwiftUI

struct Menu_Tutorials: View {
    var body: some View {
//        EmptyView()
        VStack {
            Menu("File Menu") {
                Button( "Copy", action: {})
                Button( "Paste", role: .destructive, action: {} )
                Button {
                } label: {
                    Label( "Change Folder Name", systemImage: "pencil")
                }
                
                Menu {
                    Button {
                        
                    } label: {
                        Label("Email", systemImage: "envelope")
                    }
                    
                    Button {
                        
                    } label: {
                        Label("Air Play", systemImage: "airplayvideo")
                    }
                } label: {
                    Label("Share", systemImage: "link")
                }
                
            } primaryAction: {
                print("Do Something...")
            }
            .padding()
            
            /////////////////////////
            
            
            Menu("File Menu") {
                Button( "Copy", action: {})
                Button( "Paste", role: .destructive, action: {} )
                Button {
                } label: {
                    Label( "Change Folder Name", systemImage: "pencil")
                }
                
                Menu {
                    Button {
                        
                    } label: {
                        Label("Email", systemImage: "envelope")
                    }
                    
                    Button {
                        
                    } label: {
                        Label("Air Play", systemImage: "airplayvideo")
                    }
                } label: {
                    Label("Share", systemImage: "link")
                }

            } primaryAction: {
                print("Do Something...") //메뉴 탭하면 하는 기본 작업 -> 롱터치하면 메뉴 노출
            }
            .padding()
        }//버튼과 같이 패딩트로 터치 영역 확보해주는 것이 좋음
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu_Tutorials()
    }
}
