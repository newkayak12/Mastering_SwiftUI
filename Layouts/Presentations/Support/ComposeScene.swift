
import SwiftUI

struct ComposeScene: View {
    @Binding var edited: Bool
    @State private var title: String = ""
    @State private var content: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                    .onChange(of: title) { _ in
                        edited = title != "" || content != ""
                    }
                
                TextEditor(text: $content)
                    .onChange(of: title) { _ in
                        edited = title != "" || content != ""
                    }
            }
            .navigationTitle("Compose")            
        }
    }
}

struct ComposeScene_Previews: PreviewProvider {
    static var previews: some View {
        ComposeScene(edited: .constant(false))
    }
}
