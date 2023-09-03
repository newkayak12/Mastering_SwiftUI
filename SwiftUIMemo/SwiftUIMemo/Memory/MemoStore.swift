//
//  MemoStore.swift
//  SwiftUIMemo
//
//  Created by Sang Hyeon kim on 2023/09/02.
//

import SwiftUI

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init( ) {
        list = [
            Memo(content: "Hello0"),
            Memo(content: "Hello1", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "Hello2", insertDate: Date.now.addingTimeInterval(3600 * -48)),
            Memo(content: "Hello3", insertDate: Date.now.addingTimeInterval(3600 * -72)),
            Memo(content: "Hello4", insertDate: Date.now.addingTimeInterval(3600 * -96)),
            Memo(content: "Hello5", insertDate: Date.now.addingTimeInterval(3600 * -120))
        ]
    }
    
    func insert( memo: String ) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update( memo: Memo?, content: String ) {
        guard let memo = memo else {
            return
        }
        
        memo.content = content
    }
    
    func delete( memo: Memo ) {
        list.removeAll{
            $0.id == memo.id
        }
    }
    
    func delete ( set: IndexSet ) {
        for index in set {
            list.remove(at: index)
        }
    }
}
