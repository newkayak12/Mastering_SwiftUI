import SwiftUI

struct ProgressView_Tutorials: View {
    @State private var downloading = false
    @State private var progress: CGFloat = 0.5
    
    var body: some View {
        VStack(spacing: 100) {
            Spacer()

//            if downloading {
//                ProgressView()
//                    .scaleEffect(3, anchor: .center)
//                    .tint(.red)
//            }
            
            ProgressView(value: progress) {
                Label("Downlaod", systemImage: "icloud.and.arrow.down")
            } currentValueLabel: {
                Text("\(progress)")
            }.padding()
            
            Spacer()
            
            Button("Download") {
                downloading = true
                
                progress += 0.1
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    downloading = false
                }
            }
            .buttonStyle(.borderedProminent)
            .overlay {
                if downloading {
                    HStack {
                        ProgressView()
                            .tint(.white)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                }
            }
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView_Tutorials()
    }
}
