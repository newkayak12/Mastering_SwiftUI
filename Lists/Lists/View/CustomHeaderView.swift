import SwiftUI

struct CustomHeaderView: View {
    let title: String
    let imageName: String
    var body: some View {
        Label(title, systemImage: imageName).font(.title).frame(minWidth: 60)
    }
}

struct CustomHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeaderView(title: "Lorem Ipsum", imageName: "star")
    }
}
