import SwiftUI

struct Link_Tutorials: View {
    let url = URL(string: "http://developer.apple.com")!
    let sms = URL(string: "sms://010-0000-0000")!
    
    var body: some View {
        VStack {
            Button("Apple Developer") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            .padding()
            
            Link("Apple Developer", destination: url)
            .padding()
            Link("SMS", destination: sms)
            .padding()
            
            
            Link(destination: sms) {
                Label("SMS", systemImage: "bubble.right")
            }
            .padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
            .environment(\.openURL, OpenURLAction(handler: { url in
                //링크 탭하면 실행
                //처리 결과를 return 해야
                
                if url.absoluteString.contains("kxcoding.com") {
                    print("PLAY \(url)")
                    return .handled
                } else if url.absoluteString.hasPrefix("http://") {
                    var component = URLComponents(url: url, resolvingAgainstBaseURL: false)!
                    component.scheme = "https"
                    return .systemAction(component.url!)
                } else if url.absoluteString.contains("badsite.com") {
                    return .discarded
                }
                
                
                
                return .systemAction
            }))
        }
    }
}

struct Link_Previews: PreviewProvider {
    static var previews: some View {
        Link_Tutorials()
    }
}
