
import SwiftUI

@main
struct StatesApp: App {
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainList(viewModel: viewModel) //혹은
                .environmentObject(viewModel)
            //전체에 이렇게 의존성 주입이 가능하다.
        }
    }
}
