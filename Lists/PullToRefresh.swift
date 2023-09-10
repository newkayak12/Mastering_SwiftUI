import SwiftUI

struct PullToRefresh: View {
    @State private var items = AppleProduct.sampleList[0 ..< 2]
    @State private var index = 2
    
    var body: some View {
        List(items) { item in
            Text(item.name)
        }
        .animation(.easeOut, value: items)
        .refreshable {
            await refresh()
        }
        
    }
    
    private func refresh() async {
        do {
            try await Task.sleep(nanoseconds: 1_000_000_000 * 2)
        } catch {
            
        }
        
        guard index < AppleProduct.sampleList.count - 1 else { return }
        items.append(AppleProduct.sampleList[index])
        index += 1
    }
}

struct PullToRefresh_Previews: PreviewProvider {
    static var previews: some View {
        PullToRefresh()
    }
}
