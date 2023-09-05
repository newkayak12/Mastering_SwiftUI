
import SwiftUI

struct VStack_Tutorials: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 20) {
                heart
                club
                spade
                diamond
            }
            .frame(maxHeight: .infinity)
            
            Spacer()
        }
    }
    
    private var heart: some View {
        Image(systemName: "suit.heart.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
    }
    
    private var club: some View {
        Image(systemName: "suit.club.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.black)
    }
    
    private var spade: some View {
        Image(systemName: "suit.spade.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.black)
    }
    
    private var diamond: some View {
        Image(systemName: "suit.diamond.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
    }
}

struct VStask_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Tutorials()
    }
}
