import SwiftUI

struct MainList: View {
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    SupportNavigationLink("Members") { MemberList() }
                }
                
                Section {
                    SupportNavigationLink("Storage") { Storage_Tutorials() }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Data Persistence")
        }
    }
}

struct SystemViewList_Previews: PreviewProvider {
    static var previews: some View {
        MainList()
    }
}
