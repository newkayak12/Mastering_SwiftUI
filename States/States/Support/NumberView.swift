import SwiftUI

struct NumberView: View {
//    @ObservedObject var generator = RandomNumberGenerator()
    @StateObject var generator = RandomNumberGenerator()//view가 deinit전까지 같은 인스턴스 보장
    //ViewModel같은 경우 한 번 초기화하고 계속 같아야할 것 이 경우 사용 하면 되겠다.
    
    var body: some View {
        Text("\(generator.number)")
            .font(.largeTitle)        
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
