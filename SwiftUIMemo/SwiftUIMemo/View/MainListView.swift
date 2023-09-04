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
    
    @EnvironmentObject var navigationState: NavgiationState
    
    @State private var showComposer: Bool = false
    
    @State private var keyword = ""
    
    @State private var sortByDateDesc = true
    
    
    //@FetchRequest는 항상 view 안에서
    @FetchRequest(sortDescriptors: [SortDescriptor(\MemoEntity.insertDate, order: .reverse)])
    var memoList: FetchedResults<MemoEntity>
    
    
    
    var body: some View {
        NavigationView {
            
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
#if os(iOS)
            .listStyle(.plain)
#else
            .frame(minWidth: 320)
#endif
            .navigationTitle("내 메모")
            .toolbar {
                HStack {
                    Button {
                        showComposer = true
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                    Button {
                        sortByDateDesc.toggle()
                    } label: {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                }
            }
#if os(macOS)
            .toolbar{
                ToolbarItem(placement: .navigation){
                    Button {
                        NSApp
                            .keywindow?
                            .firstReponder?
                            .tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with:nil)
                    } label: {
                        Label("Toggle sidebar", systemImage: "sidebar.left")
                    }
                }
            }
#endif
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
#if os(macOS)
            .searchable(text: $keyword, prompt: "내용을 검색합니다.", placement: .sidebar)
#else
            .searchable(text: $keyword, prompt: "내용을 검색합니다.")
#endif
            .onChange(of: keyword) { newValue in
                if keyword.isEmpty {
                    memoList.nsPredicate = nil
                } else {
                    memoList.nsPredicate = NSPredicate(format: "content CONTAINS[c] %@", newValue)
                }
            }
            .onChange(of: sortByDateDesc) { desc in
                if desc {
                    memoList.sortDescriptors = [
                        SortDescriptor(\.insertDate, order: .reverse)
                    ]
                } else {
                    memoList.sortDescriptors = [
                        SortDescriptor(\.insertDate, order: .forward)
                    ]
                }
            }
            
            VStack {
                Text("내 메모를 탭한 다음 메모를 선택하거나 \n 새 메모를 추가할 수 있어요 :)")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }.padding().buttonStyle(.borderedProminent)
            }
            
        }
        #if os(iOS)
        .id(navigationState.listId)
        #endif
        
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
            .navigationViewStyle(.automatic)
            .environmentObject(CoreDataManager.shared)
            .environment(\.managedObjectContext, CoreDataManager.shared.mainContext)
            .environmentObject(NavgiationState())
    }
}


