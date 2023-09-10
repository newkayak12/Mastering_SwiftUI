import SwiftUI

struct Picker_Tutorials: View {
    @State private var selected: Sports = .soccer
    
    var body: some View {
        List {
            Text(selected.rawValue)
                .font(.system(size: 200))
            
            Picker("Favorite", selection: $selected) {
                Text("Soccer").tag(Sports.soccer)
                Text("Basketball").tag(Sports.basketball)
                Text("Baseball").tag(Sports.baseball)
            }
            
            
            Picker("Favorite", selection: $selected) {
                ForEach(Sports.allCases) { item in
                    Text(item.rawValue)
                }
            }
            .pickerStyle(.inline)
            
        }
    }
}

struct Picker_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Tutorials()
    }

}
