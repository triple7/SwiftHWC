//
//  Untitled.swift
//  SwiftHWC
//
//  Created by Yuma decaux on 4/5/2025.
//

extension SwiftHWC {
    
    func filterByAll(by predicates: ((HWCEntry) -> Bool)...
    ) async -> [HWCEntry] {
        return try! await getHWC().filter { entry in
            predicates.allSatisfy { $0(entry) }
        }
    }

    func filterByAny(by predicates: ((HWCEntry) -> Bool)...
    ) async -> [HWCEntry] {
        return try! await self.getHWC().filter { entry in
            predicates.contains{ $0(entry) }
        }
    }

    func filterByFirst(
      by predicates: ((HWCEntry) -> Bool)...
    ) async throws -> HWCEntry? {
      let list = try await self.getHWC()
      return list.first { entry in
        predicates.contains { predicate in
          predicate(entry)
        }
      }
    }


}
