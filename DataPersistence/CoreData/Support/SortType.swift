import Foundation

struct SortType: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let descriptors: [SortDescriptor<MemberEntity>]
    
    static let types = [
        SortType(title: "이름 오름차순(ㄱ~ㅎ)", descriptors: [SortDescriptor(\.name, order: .forward)]),
        SortType(title: "이름 내림차순(ㅎ~ㄱ)", descriptors: [SortDescriptor(\.name, order: .reverse)]),
        SortType(title: "나이 오름차순", descriptors: [SortDescriptor(\.age, order: .forward)]),
        SortType(title: "나이 내림차순", descriptors: [SortDescriptor(\.age, order: .reverse)]),
    ]
}
