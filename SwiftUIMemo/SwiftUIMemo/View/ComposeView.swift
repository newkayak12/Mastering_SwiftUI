//
//  ComposeView.swift
//  SwiftUIMemo
//
//  Created by Sang Hyeon kim on 2023/09/03.
//

import SwiftUI

struct ComposeView: View {
//    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var manager: CoreDataManager
    
    var memo: MemoEntity? = nil
    
    @Environment(\.dismiss) var dismiss
    
    @State private var content: String = ""
    
    
    var body: some View {
#if os(macOS)
        VStack {
            TextEditor(text: $content)
            .padding()
            .onAppear {
                if let memo = memo {
                    //                            content = memo.content
                    content = memo.content ?? ""
                }
            }
            
            HStack {
                Spacer()
                
                Button  {
                    dismiss()
                } label: {
                    Text("취소")
                }
            
                Button  {
                    if let memo = memo {
                        manager.update(memo: memo, content: content)
                    } else {
                        manager.addmemo(content: content)
                    }
                    dismiss()
                } label: {
                    Text("저장")
                }.buttonStyle(.borderedProminent)
            }
        }
        .padding()
        .frame(minWidth: 500, minHeight: 300)
#else
        NavigationView {
            
            VStack {
                TextEditor(text: $content)
                    .padding()
                    .onAppear {
                        if let memo = memo {
//                            content = memo.content
                            content = memo.content ?? ""
                        }
                    }
            }
            .navigationTitle(memo != nil ? "메모 편집" : "새 메모")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button  {
                        dismiss()
                    } label: {
                        Text("취소")
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button  {
                        if let memo = memo {
                            manager.update(memo: memo, content: content)
                        } else {
                            manager.addmemo(content: content)
                        }
                        dismiss()
                    } label: {
                        Text("저장")
                    }
                }
                
            }
            
        }
#endif
    
        
    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
            .environmentObject(CoreDataManager.shared)
    }
}
