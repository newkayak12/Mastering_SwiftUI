import SwiftUI

struct ProductGridItem: View {
    let product: AppleProduct
    
    init(product: AppleProduct) {
        self.product = product
        
        print("init \(product.name)")
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(product.category)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text(product.name)
                .font(.title2)
            
            Text(product.summary)
                .font(.caption)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()                
                .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 10))
            
            Spacer()
        }
    }
}

struct ProductGridItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridItem(product: AppleProduct.sampleList[0])
    }
}

