//
//  DetailView.swift
//  SwiftUIMemo
//
//  Created by Sang Hyeon kim on 2023/09/03.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo: MemoEntity
    
    @EnvironmentObject  var manager: CoreDataManager
    
    @Environment(\.dismiss) var dismiss
    
    @State private var showComposer = false
    
    @State private var showDelete = false
    
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    
                    HStack {
                        Text(memo.content ?? "")//swiftUI는 기본적으로 View를 가운데 정렬
                            .padding()
                        
                        Spacer(minLength: 0)
                    }
                    
                    Text(memo.insertDate ?? .now, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    
                }
            }
        }
        .navigationTitle("메모 보기")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    showDelete = true
                } label: {
                    Image(systemName: "trash")
                }
                .foregroundColor(.red)

                
                
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "square.and.pencil")
                }
            }
        }
        .sheet(isPresented: $showComposer) {
            ComposeView(memo: memo)
        }
        .alert("삭제 확인", isPresented: $showDelete) {
            Button(role: .destructive) {
                manager.delete(memo: memo)
                dismiss()
            } label: {
                Text("삭제")
            }
        } message: {
            Text("메모를 삭제할까요?")
        }
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(memo:MemoEntity(context: CoreDataManager.shared.mainContext))
                .environmentObject(CoreDataManager.shared)
        }
     
    }
}
