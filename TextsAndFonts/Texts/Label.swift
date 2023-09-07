import SwiftUI

struct Label_Tutorials: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Image(systemName: "person")
                Text("User Profile")
            }
            .font(.largeTitle)
            
            Label("User Profile", systemImage: "person").font(.largeTitle)
            
            
            HStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(width: 60)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(.blue)
                    }
                
                Text("KxCoding")
                    .font(.largeTitle)
            }
            
            Label {
                Text("KxCoding")
                    .font(.largeTitle)
            } icon: {
                Image("logo")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(width: 60)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(.blue)
                    }
            }

        }.toolbar {
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "person")
                    Text("User Profile")
                }
                Label("User Profile", systemImage: "person").labelStyle(.automatic)
            }
        }
    }
    
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Label_Tutorials()
                .navigationTitle("Label")
        }
    }
}
