//
//  HelloXcodePreviewApp.swift
//  HelloXcodePreview
//
//  Created by Sang Hyeon kim on 2023/08/31.
//

import SwiftUI
class Model: ObservableObject {
    
}

@main //Main 함수를 자동으로 합성한다고 한다.
struct HelloXcodePreviewApp: App { //App 프로토콜 채용
    @StateObject private var model = Model() //이러면 model 공유한다고 한다.
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate  //앱 실행할 때 자동으로 Delegate 실행
    
    var body: some Scene { //View 계층을 담고있는 컨테이너
        
//        WindowGroup { //Scene 중 하나 -> Platform, 앱 상태에 따라서 표시하는 방식을 알아서 처리
//        //DocumentGroup -> 문서기반 윈도우
//
//            ContentView()
////                .environmentObject(model) //ViewModel bind랑 비슷해 보인다.
//            //AppDelegate 사용하려면 직접 구현해야한다.(PushNotification 관련해서)
//
//        }
//////////////////////// 1강에서
        
        
        
        
        MyScene()//이렇게 커스텀 Scenc 만들어서 반환할 수도 있다.
        
        
    }
}


//커스텀  Scene
struct MyScene: Scene {
    @Environment(\.scenePhase) private var scenePhase // Scene 상태에따라 scencPhase에 다른 값이 저장된 [active, inactive, background]
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { phase in
            
            if phase == .background {
                
            }
            
        }//상태 변경 시에 뭔가를 하고 싶다면
        
        //Scene이 두 개 이상이면 리턴값이 달라진다. 하나라도 active 면 active를 리턴할 수 있다.
        //모든 Scene이 inactive여야 inactive 리턴
    }
}
