
import SwiftUI

struct Toggle_Tutorials: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .resizable()
                .foregroundColor(isOn ? .yellow : .gray)
                .shadow(color: .yellow, radius: isOn ? 50 : 0)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            // #1
            
            Toggle( isOn ? "OFF" : "ON", isOn: $isOn)
            .padding()//List, Form 에 embed할 때 많이 사용
            
            Toggle (isOn: $isOn) {
                Label("On/Off", systemImage: "bolt")
            }
            .padding()
            
            //왼쪽 라벨 오른쪽 스위치 고정이라
            //커스텀하려면 아래처럼
            
            
            VStack {
                Label("On/Off", systemImage: "bolt")
                Toggle(isOn: $isOn) {
                    EmptyView()
                }
                .padding()
                .labelsHidden()
            }
        }
    }
}

struct Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle_Tutorials()
    }
}
