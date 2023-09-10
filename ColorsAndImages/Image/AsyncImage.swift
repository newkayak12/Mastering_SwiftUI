import SwiftUI

struct AsyncImage_Tutorials: View {
    let url = URL(string: "https://kxcodingblob.blob.core.windows.net/mastering-ios/12.jpg")
    
    var body: some View {
//        AsyncImage(url: url)
        
        
//        AsyncImage(url: url) { image in
//            image
//                .resizable()
//                .scaledToFit()
//        } placeholder: {
//            ProgressView()
//        }
        
        
        AsyncImage(url: url) { phase in
            switch phase {
                case .success(let image):
                    image
                    .resizable()
                    .scaledToFit()
                case .failure(_):
                    Label("이미지 다운로드에 실패했습니다.", systemImage: "x.circle")
                case .empty:
                    ProgressView()
            }
        }

    }
}

struct AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImage_Tutorials()
    }
}
