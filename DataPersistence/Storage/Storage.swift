import SwiftUI

struct Storage_Tutorials: View {
//    @State private var number = 0
//    @AppStorage("number") private var number = 0 // 멀티 윈도우라도 공유됨( 스플릿 뷰로 같은 앱 두개를 띄워놓았을 경우 )
    @SceneStorage("number") private var number = 0 // 하나의 씬에서 값을 저장하는데, 바로 저장하는 것은 아님 (appStorage보다 텀이 김)
//    이전 상태를 복구하는 용도로도 사용할 수 있다.
    @AppStorage("color") private var color = Color.yellow
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(number, format: .number)
                .font(.system(size: 100))
                .frame(width: 300, height: 300)
                .background(color)
                .clipShape(Circle())
            
            Spacer()
            
            HStack {
                Button {
                    number = Int.random(in: 0 ... 100)
                } label: {
                    Label("Number", systemImage: "repeat")
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    color = [Color.red, .green, .blue, .yellow, .mint, .brown, .cyan, .indigo, .orange].randomElement()!
                } label: {
                    Label("Color", systemImage: "paintbrush")
                        .padding()
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        Storage_Tutorials()
    }
}
