//
//  Untitled.swift
//  SwiftHWC
//
//  Created by Yuma decaux on 4/5/2025.
//

extension SwiftHWC {
    
    public func filterByAll(by predicates: ((HWCEntry) -> Bool)...
    ) async -> [HWCEntry] {
        return try! await getHWC().filter { entry in
            predicates.allSatisfy { $0(entry) }
        }
    }

    public func filterByAny(by predicates: ((HWCEntry) -> Bool)...
    ) async -> [HWCEntry] {
        return try! await self.getHWC().filter { entry in
            predicates.contains{ $0(entry) }
        }
    }

    public func filterByFirst(
      by predicates: ((HWCEntry) -> Bool)...
    ) async -> HWCEntry? {
      let list = try! await self.getHWC()
      return list.first { entry in
          predicates.allSatisfy{ predicate in
          predicate(entry)
        }
      }
    }


}
