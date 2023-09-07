import SwiftUI

let longText = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

struct Text_Tutorials: View {
    var body: some View {
        VStack {
            Text("Hello")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .background(.yellow)
            
            Text(longText)
                .frame(width: 200)
                .lineLimit(7)
                .truncationMode(.tail)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
        }
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        Text_Tutorials()
            .environment(\.locale, Locale(identifier: "ko_kr"))
    }
}
