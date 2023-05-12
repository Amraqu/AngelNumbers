//
//  Numbers.swift
//  AngelNumbers
//
//  Created by Amra Kurtovic on 29. 3. 2023..
//

import Foundation

struct Number: Codable, Identifiable, Hashable {
    enum CodingKeys: CodingKey {
        case meaning
        case numberId
    }
    
    var id = UUID()
    var meaning: String
    var numberId: String
    
}

class ReadData: ObservableObject {
    @Published var numbers = [Number]()
    
    init() {
        loadData()
        }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "Numberdata", withExtension: "json")
        else {
            print("Json file not found.")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let numbers = try? JSONDecoder().decode([Number].self, from: data!)
        self.numbers = numbers!
    }
}
