import SwiftUI

struct TextEditor_Tutorials: View {
    @State private var content = ""
    var body: some View {
        TextEditor(text: $content)
            .padding()
//            .font()
            .foregroundColor(.green)
            .multilineTextAlignment(.center)
            .lineSpacing(5)
            .keyboardType(.URL)
            .autocorrectionDisabled(true)
    }
}

struct TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_Tutorials()
    }
}
