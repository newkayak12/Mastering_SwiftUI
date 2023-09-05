import SwiftUI

struct Spacer_Tutorials: View {
    var body: some View {
        VStack(spacing: 0) { // #6
            
//            Spacer().frame(height: 1) //safeArea
            
            
            
            HStack {
                Image(systemName: "suit.heart.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                
                Spacer() // #3
            }
            .padding()
            .background(Color.blue)
            
//            Spacer()// #1
//            Spacer(minLength: 50) //최소
            //spacing 쓰거나
            Spacer().frame(height: 50)
            
            VStack {
             //   Spacer() // #5
                
                Image(systemName: "suit.spade.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                
               // Spacer()// #4
            }
            .padding()
            .background(Color.red)
            
            Spacer()// #2
        }.padding(.top, 1)//이렇게 해도 safeArea
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Spacer_Tutorials()
    }
}
