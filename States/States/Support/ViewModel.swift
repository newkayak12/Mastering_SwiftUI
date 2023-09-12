
import Foundation

class ViewModel: ObservableObject {
    var title = "Hello"
    @Published var list = [String]()
}
