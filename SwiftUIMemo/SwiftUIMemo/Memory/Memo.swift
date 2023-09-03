//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by Sang Hyeon kim on 2023/09/02.
//

import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    
    @Published var content: String //새로운 값을 저장할 때마다 UI 업데이트
    let insertDate: Date
    
    init(content: String, insertDate : Date = Date.now) {
         id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
