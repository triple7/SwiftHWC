import Foundation
import CodableCSV


class SwiftHWC {
    let baseUrl = URL(string: "https://www.hpcf.upr.edu/~abel/phl/hwc/data/hwc.csv")!
    
    public func getPlanetEntry(planet: String) -> HWCEntry? {
        let entries = getHWC()
        let result = entries.filter{$0.P_NAME! == planet}
        if result.count == 1 {
            return result.first!
        } else {
            return nil
        }
    }
    
    
    private func getHWC() -> [HWCEntry] {
        let url = Foundation.URL(fileURLWithPath: Bundle.main.path(forResource: "HWC", ofType: "json")!)
                                 let data = try? Data(contentsOf: url)
        
        let decoder = JSONDecoder()
        let hwc = try? decoder.decode([HWCEntry].self, from: data!)
        return hwc!
    }
    
    private func writeToHWCJson(entries: [HWCEntry], fileName: String = "HWC.json") {
        let fileManager = FileManager.default
        let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
            let hwcDirectoryURL = documentsURL.appendingPathComponent("HWC", isDirectory: true)
            if !fileManager.fileExists(atPath: hwcDirectoryURL.path) {
                try! fileManager.createDirectory(at: hwcDirectoryURL,
                                                 withIntermediateDirectories: true,
                                                 attributes: nil)
            }
            let fileURL = hwcDirectoryURL.appendingPathComponent(fileName)
            let encoder = JSONEncoder()
            let data = try! encoder.encode(entries)
            try! data.write(to: fileURL, options: .atomic)
        }
        
    }

extension SwiftHWC {
    
    public func updateHWCatalog() async throws {
        let configuration = URLSessionConfiguration.ephemeral
        let session = URLSession(configuration: configuration)
        let (data, _) = try await session.data(from: baseUrl)
        let result = String(data: data, encoding: .utf8)!
        let entries = parseCatalog(from: result)
        
        // Add to the documents
        writeToHWCJson(entries: entries)
    }
    
    
    private func parseCatalog(from text: String) -> [HWCEntry] {
        let decoder = CSVDecoder {
          $0.headerStrategy = .firstLine
          $0.delimiters.field = ","
        }
        let entries: [HWCEntry] = try! decoder.decode([HWCEntry].self, from: text)
        return entries
    }
    
}
