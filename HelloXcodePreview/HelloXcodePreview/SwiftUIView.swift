//
//  SwiftUIView.swift
//  HelloXcodePreview
//
//  Created by Sang Hyeon kim on 2023/08/31.
//

import SwiftUI

struct SwiftUIView: View {
    //값이 mutable이라면
    @State var data: String = "0" //라고 @State를 붙이면 vue 처럼 알아서 관리해준다고 함
    
    
    
    var body: some View { //Opaque 타입
        VStack {
            Text("MODIFIER TEST").padding().background(.yellow)
            Text("MODIFIER TEST").background(.yellow).padding()
            //순서에 따라 다르게 작동하네?
            
            
            Text("Hello, World! \(data)")
                .foregroundColor(.red) //이런 애들을 modifier라고 부른답니다.
                .padding()//chaining 되네
                .font(.largeTitle)
          
            
            Button {
                data = "\(Int.random(in: 1...100))"
            } label: {
                Text("Update").bold()
            }
            .padding()
            //swiftUI에는 view Hook도 modifier로 관리
            .onAppear{

            }
            .onDisappear{
                
            }
        }.font(.title)
    }
}
//SwiftUI는 기본적으로 Center를 기준으로 배치됨
//UIKit 왼쪽 상단

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
