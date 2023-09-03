//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by Sang Hyeon kim on 2023/09/02.
//

import SwiftUI

struct MainListView: View {
//    @EnvironmentObject var store: MemoStore //하나의 속성을 여러 view에서 공유하고 싶을 때 사용한다.
    @EnvironmentObject var manager: CoreDataManager
    
    @State private var showComposer: Bool = false
    
    
    //@FetchRequest는 항상 view 안에서
    @FetchRequest(sortDescriptors: [SortDescriptor(\MemoEntity.insertDate, order: .reverse)])
    var memoList: FetchedResults<MemoEntity>
    
    var body: some View {
        NavigationStack {
            
            List {
                
//                ForEach (store.list) { memo in
                ForEach (memoList) { memo in
                    
                    NavigationLink {
                        DetailView(memo: memo)
                    } label: {
                        MemoCell(memo: memo)
                    }
                    
                }
                .onDelete(perform: delete)
                
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
            
            
        }
        
    }
    
    
    func delete(set: IndexSet) {
        for index in set {
            manager.delete(memo: memoList[index])
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(CoreDataManager.shared)
            .environment(\.managedObjectContext, CoreDataManager.shared.mainContext)
    }
}


