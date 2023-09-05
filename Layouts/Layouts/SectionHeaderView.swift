import SwiftUI

struct SectionHeaderView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title )
                .foregroundColor(.white)
                .font(.title3)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.blue)
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView(title: "HELLO~!")
    }
}
