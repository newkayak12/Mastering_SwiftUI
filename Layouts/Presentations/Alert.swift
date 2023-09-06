import SwiftUI

struct Alert_Tutorials: View {
    @State private var message = ""
    @State private var isAlert = false
    @State private var showImageAlert = false
    @State private var imageData: ImageData? = nil
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
            
            
            Button {
//                isAlert.toggle()
                imageData = ImageData.sample
                showImageAlert.toggle()
            } label: {
                Text("Show Alert")
            }
            .padding()
            .alert("경고창", isPresented: $isAlert) { //위치 어디다 붙여도 다 잘 동작하는데...?
                Button("확인") {
                    message = "확인"
                }

                Button( role: .cancel) {
                    message = ".cancel"
                } label: {
                    Text("취소")
                }

                Button( role: .destructive) {
                    message = ".destructive"
                } label: {
                    Text("취소")
                }

            } message: {
                Text("ALERT!")
            }
            .alert("경고", isPresented: $showImageAlert, presenting: imageData) { data in
                Button("필터 적용") {
                    message = data.filters.joined(separator: ", ") + " 필터를 적용합니다."
                }
                
                Button( role: .cancel) {
                    message = ".cancel"
                } label: {
                    Text("취소")
                }
                
                Button( role: .destructive) {
                    message = "\(data.name) 삭제"
                } label: {
                    Text("취소")
                }
            } message: { data in
                Text("\(data.name) 파일에서 어떤 작업을 할까요? \n\n 촬영일자: \(data.date)")
            }

        }
        
        
        
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        Alert_Tutorials()
    }
}
