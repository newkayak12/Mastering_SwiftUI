import Foundation
import CoreData

extension CoreDataManager {
    private var isEmpty: Bool {
        do {
            let request = MemberEntity.fetchRequest()
            request.resultType = .countResultType
            let count  = try mainContext.count(for: request)
            return count == 0
        } catch {
            return true
        }
    }
    
    func prepareSampleData() {
        guard isEmpty else { return }
        
        let members = [
            ("나연(Lim Nayeon)", 26), ("정연(Yoo Jeongyeon)", 25), ("모모(Hirai Momo)", 25),
            ("사나(Minatozaki Sana)", 25), ("지효(Park Jihyo)", 25), ("미나(Myoi Mina)", 24),
            ("다현(Kim Dahyun)", 23), ("채영(Son Chaeyoung)", 22), ("쯔위(Chou Tzuyu)", 22)
        ]
        
        members.forEach { member in
            let m = MemberEntity(context: mainContext)
            m.name = member.0
            m.age = Int16(member.1)
        }
        
        do {
            try mainContext.save()
        } catch {
            print(error)
        }
    }
}
