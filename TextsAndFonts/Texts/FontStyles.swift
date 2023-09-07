
import SwiftUI

struct FontStyles: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("No Style")
                .font(.system(size: 40))
            
            Text("Bold")
                .font(.system(size: 40))
                .bold()
            
            Text("Italic")
                .font(.system(size: 40))
                .italic()
            
            Text("Underline")
                .font(.system(size: 40))
                .underline(true, color: .red)
            
            Text("Strikethrough")
                .font(.system(size: 40))
                .strikethrough()
            
            Text("123")
                .font(.system(size: 40))
            
            Text("Monospaced 123")
                .font(Font.system(size: 40).monospacedDigit())
            
            HStack {
                Text("Small ")
                    .font(Font.system(size: 40))
                
                Text("Capitals")
                    .font(Font.system(size: 40).smallCaps())
                //이런 친구들은 font 뒤에서 연결
            }
            
            Text("Lower Small Caps")
                .font(Font.system(size: 40).lowercaseSmallCaps())
            
            Text("Upper Small Caps")
                .font(Font.system(size: 40).uppercaseSmallCaps())
        }
    }
}

struct FontStyles_Previews: PreviewProvider {
    static var previews: some View {
        FontStyles()
    }
}
