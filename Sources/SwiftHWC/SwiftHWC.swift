import Foundation
import CodableCSV


public class SwiftHWC:NSObject {
    internal let baseUrl = URL(string: "https://www.hpcf.upr.edu/~abel/phl/hwc/data/hwc.csv")!
    internal var hwcEntries:[HWCEntry]?

    public override init() {
    }
    public func getPlanetEntry(planet: String) async-> HWCEntry? {
        let entries = await getHWC()
        let result = entries.filter{$0.P_NAME! == planet}
        if result.count == 1 {
            return result.first!
        } else {
            return nil
        }
    }
    
    
    public func getHWC() async -> [HWCEntry] {
        if let entries = self.hwcEntries {
            return entries
        } else {
            let url = Foundation.URL(fileURLWithPath: Bundle.main.path(forResource: "HWC", ofType: "json")!)
            if let data = try? Data(contentsOf: url) {
                let decoder = JSONDecoder()
                self.hwcEntries = try! decoder.decode([HWCEntry].self, from: data)
                return self.hwcEntries!
            } else {
                // First time downloading
                self.hwcEntries = try! await updateHWCatalog()
                return self.hwcEntries!
            }
        }
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
    
    public func updateHWCatalog() async throws -> [HWCEntry] {
        let configuration = URLSessionConfiguration.ephemeral
        let session = URLSession(configuration: configuration)
        let (data, _) = try await session.data(from: baseUrl)
        let result = String(data: data, encoding: .utf8)!
        let entries = parseCatalog(from: result)
        
        // Add to the documents
        writeToHWCJson(entries: entries)
        return entries
    }
    
    
    private func parseCatalog(from text: String) -> [HWCEntry] {
        print(text)
        let decoder = CSVDecoder {
          $0.headerStrategy = .firstLine
          $0.delimiters.field = ","
        }
        let entries: [HWCEntry] = try! decoder.decode([HWCEntry].self, from: text)
        return entries
    }
    
}
