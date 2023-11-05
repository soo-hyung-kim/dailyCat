//
//  Journal.swift
//  dailyCat
//
//  Created by Sally Kim on 2023/11/05.
//

import Foundation

struct Journal: Codable, Equatable {
    let weekday: String
    let day: String
    let water: Int
    let meal: Int
    let mood: Int
    let write: Bool
    let journal: String
    let overall: Int
    var id: String = UUID().uuidString
}

extension Journal {
    static var journalKey: String {
        return "journals"
    }
    
    static func save(_ entries: [Journal], forKey key: String) {
        let defaults = UserDefaults.standard
        let encodedData = try! JSONEncoder().encode(entries)
        defaults.set(encodedData, forKey: key)
    }
    
    static func getEntries(forKey key: String) -> [Journal] {
        let defaults = UserDefaults.standard
        if let data = defaults.data(forKey: key) {
            let decodedEntries = try! JSONDecoder().decode([Journal].self, from: data)
            return decodedEntries
        } else {
            return []
        }
    }
    
    func removeEntry() {
        var entries = Journal.getEntries(forKey: Journal.journalKey)
        entries.removeAll { journal in
            return self == journal
        }
        
        Journal.save(entries, forKey: Journal.journalKey)
    }
    
    func save() {
        var entries = Journal.getEntries(forKey: Journal.journalKey)
        
        if let index = entries.firstIndex(where: { $0.id == self.id }) {
            entries.remove(at: index)
            entries.insert(self, at: index)
        } else {
            entries.append(self)
        }
        
        Journal.save(entries, forKey: Journal.journalKey)
    }
}
