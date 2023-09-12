import Foundation

class RandomNumberGenerator: ObservableObject {
    @Published var number: Int
    
    init() {
        number = Int.random(in: 1 ... 100)
        print(#function, self)
    }
    
    deinit {
        print(#function, self)
    }
}
