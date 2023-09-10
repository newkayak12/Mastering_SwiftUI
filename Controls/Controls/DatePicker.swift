import SwiftUI

struct DatePicker_Tutorials: View {
    @State private var selectedDate = Date.now
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(selectedDate, style: .date)
                .font(.largeTitle)
            
            Text("선택한 날짜")
                .font(.callout)
                .foregroundColor(.secondary)
            
            Spacer()
            
            DatePicker("날짜 선택", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                .padding()
//                .datePickerStyle(.compact)
//                .datePickerStyle(.graphical)
                .datePickerStyle(.wheel)
                .labelsHidden()
            
            
        }
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Tutorials()
            .environment(\.locale, Locale(identifier: "Ko_kr"))
    }
}
