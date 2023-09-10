import SwiftUI

struct Image_Tutorials: View {
    var body: some View {
        VStack {
//            Image("swiftui-logo", bundle: .main)
//                .interpolation(.high)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 200, height: 300)
//                .clipped()
////                .aspectRatio(contentMode: .fit)
//
//
//            Image("swiftui-logo")
//                .resizable(resizingMode: .tile)
//                .frame(width: 200, height: 300)
            
            
            Image("flower")
                .renderingMode(.template) //bg가 투명할 때
                .foregroundColor(.blue)
            
            Image("flower-bkg")
                .renderingMode(.template)
        }
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        Image_Tutorials()
    }
}
