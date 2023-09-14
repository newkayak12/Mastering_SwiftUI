import SwiftUI

struct DragGesture_Tutorials: View {
    @State private var currentTranslation = CGSize.zero
    @State private var finalTranslation = CGSize.zero
    
    @GestureState private var curT = CGSize.zero //읽기 전용이 되며, 초기화할 필요도 없어진다.
    
    var dragGesture: some Gesture {
//        .local 기본
//        .global 전역
        DragGesture()
//            .onChanged { value in
//                print("START \(value)")
//
//                currentTranslation = value.translation
//            }
//            .onEnded { value in
//                print("END \(value)")
//                currentTranslation = .zero
//                var t = finalTranslation
//                t.width += value.translation.width
//                t.height += value.translation.height
//                finalTranslation = t
//            }
        
            .updating($curT, body: { value, state, transaction in
                state = value.translation
                
            })
            .onEnded { value in
                var t = finalTranslation
                t.width += value.translation.width
                t.height += value.translation.height
                finalTranslation = t
            }
    }
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 100, height: 100)
//                .onDrag(<#T##data: () -> NSItemProvider##() -> NSItemProvider#>)//DragOnDrop에 사용
                .offset(finalTranslation)
                .offset(currentTranslation)
                .gesture(dragGesture)
            
        }
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DragGesture_Tutorials()
        }
    }
}
