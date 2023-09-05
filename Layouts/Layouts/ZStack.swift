import SwiftUI

struct ZStack_Tutorials: View {
    var body: some View {
        ZStack(alignment: .center) {
            heart.offset(x: -100, y: 100)
            club.offset(x: -100, y: -100)
            spade.offset(x: 100, y: -100)
            diamond.offset(x: 100, y: 100)
        }
    }
    
    private var heart: some View {
        Image(systemName: "suit.heart.fill")
            .resizable()
            .frame(width: 100, height: 100)
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
            .frame(width: 100, height: 100)
            .foregroundColor(.black)
    }
    
    private var diamond: some View {
        Image(systemName: "suit.diamond.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
            .opacity(0.5)
    }
}

struct ZStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Tutorials()
    }
}
