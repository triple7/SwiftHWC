//
//  Untitled.swift
//  SwiftHWC
//
//  Created by Yuma decaux on 4/5/2025.
//

extension SwiftHWC {

    func filterByAll(
        _ items: [HWCEntry],
        by predicates: ((HWCEntry) -> Bool)...
    ) -> [HWCEntry] {
        return items.filter { item in
            predicates.allSatisfy { $0(item) }
        }
    }

    func filterByAny(
        _ items: [HWCEntry],
        by predicates: ((HWCEntry) -> Bool)...
    ) -> [HWCEntry] {
        return items.filter { item in
            predicates.contains{ $0(item) }
        }
    }


}
