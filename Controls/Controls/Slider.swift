
import SwiftUI

struct Slider_Tutorials: View {
    @State private var dragging = false
    @State private var r = 0.0
    @State private var g = 0.0
    @State private var b = 0.0
    
    var color: Color {
        Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    
    var body: some View {
        VStack {
            Button("Reset") {
                r = 0.0
                g = 0.0
                b = 0.0
            }
            .buttonStyle(.borderedProminent)
            .disabled(dragging)
            
            
            Image(systemName: "umbrella.fill")
                .resizable()
                .foregroundColor(color)
                .frame(width: 250, height: 250)
            
            VStack {
                Slider(value: $r, in: 0 ... 255, step: 1) {
                    //iOS는 표시되지 않음
                    EmptyView()
                } minimumValueLabel: {
                    Text("R")
                        .font(.title2)
                        .foregroundColor(.red)
                        .frame(minWidth: 50)
                } maximumValueLabel: {
                    Text("\(Int(r))")
                        .font(.title2)
                        .frame(minWidth: 50)
                } onEditingChanged: { editing in
                    dragging = editing
                }
                .padding()
                .tint(.red)
                
                Slider(value: $g, in: 0 ... 255, step: 1) {
                    //iOS는 표시되지 않음
                    EmptyView()
                } minimumValueLabel: {
                    Text("G")
                        .font(.title2)
                        .foregroundColor(.green)
                        .frame(minWidth: 50)
                } maximumValueLabel: {
                    Text("\(Int(g))")
                        .font(.title2)
                        .frame(minWidth: 50)
                } onEditingChanged: { editing in
                    dragging = editing
                }
                .padding()
                .tint(.green)
                
                Slider(value: $b, in: 0 ... 255, step: 1) {
                    //iOS는 표시되지 않음
                    EmptyView()
                } minimumValueLabel: {
                    Text("B")
                        .font(.title2)
                        .foregroundColor(.blue)
                        .frame(minWidth: 50)
                } maximumValueLabel: {
                    Text("\(Int(b))")
                        .font(.title2)
                        .frame(minWidth: 50)
                } onEditingChanged: { editing in
                    dragging = editing
                }
                .padding()
                .tint(.blue)

            }

        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Tutorials()
    }
}
