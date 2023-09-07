import SwiftUI

struct StandardTextStyles: View {
    var body: some View {
        VStack(spacing: 20) {
            Group {
                Text("Large Title").font(.largeTitle)
                
                Text("Title").font(.title)
                
                Text("Title2").font(.title2)
                
                Text("Title3").font(.title3)
            }
            
            Group {
                Text("Headline").font(.headline)
                
                Text("Subheadline").font(.subheadline)
                
                Text("body").font(.body)
                
                Text("callout").font(.callout)
                
                Text("caption").font(.caption)
                
                Text("caption2").font(.caption2)
                
                Text("footnote").font(.footnote)
            }
        }
    }
}

struct StandardTextStyles_Previews: PreviewProvider {
    static var previews: some View {
        StandardTextStyles()
    }
}
