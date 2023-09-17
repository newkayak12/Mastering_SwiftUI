import SwiftUI

struct MemberCompose: View {
    let editTarget: MemberEntity?
    
    @State private var name: String = ""
    @State private var age: Int? = nil
    
    @Environment(\.managedObjectContext) var context;
    
    @Environment(\.dismiss) var dismiss
    
    func addMember() {
        let newMember = MemberEntity(context: context)
        newMember.name = name
        newMember.age =  Int16(age ?? 0)
        do {
            try context.save()
        } catch {
            print (error)
        }
        dismiss()
    }
    
    func editMember() {
        guard let editTarget = editTarget else {
            return
        }
        
        editTarget.name = name
        editTarget.age = Int16(age ?? 0)
        
        do {
            try context.save()
        } catch {
            print( error )
        }
        
    }
    
    var body: some View {
        #if os(iOS)
        NavigationView {
            Form {
                TextField("Name", text: $name)
                    .onAppear {
                        if let editTarget = editTarget {
                            name = editTarget.name ?? ""
                        }
                    }
                
                TextField("Age", value: $age, format: .number)
                    .keyboardType(.numberPad)
                    .onAppear {
                        if let editTarget = editTarget {
                            age = Int(editTarget.age)
                        }
                    }
                            
                    
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        if let _ = editTarget {
                            editMember()
                        } else {
                            addMember()
                        }
                        
                        dismiss()
                    } label: {
                        Text("Save")
                    }
                }
            }
            .navigationTitle(editTarget != nil ? "멤버 수정" : "새 멤버")
        }
        #else
        Form {            
            TextField("Name", text: $name)
                .onAppear {
                    if let editTarget = editTarget {
                        name = editTarget.name ?? ""
                    }
                }
            
            TextField("Age", value: $age, format: .number)
                .onAppear {
                    if let editTarget = editTarget {
                        age = Int(editTarget.age)
                    }
                }
            
            HStack {
                Spacer()
                
                Button("취소") {
                    dismiss()
                }
                
                Button("저장") {
                    if let _ = editTarget {
                        editMember()
                    } else {
                        addMember()
                    }
                    
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
        .frame(width: 300)
        #endif
    }
}

struct MemberCompose_Previews: PreviewProvider {
    static var previews: some View {
        MemberCompose(editTarget: nil)
            .environment(\.managedObjectContext, CoreDataManager.shared.mainContext)
    }
}
