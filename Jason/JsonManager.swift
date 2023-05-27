//
//  JsonManager.swift
//  Jason
//
//  Created by 3bood on 07/11/1444 AH.
//

import Foundation


struct Person: Codable {
    var firstName, surname, gender: String
    var age: Int
    var address: Address
    var phoneNumbers: [PhoneNumber]
    
    static let allPeople: [Person] = Bundle.main.decode(file: "WorkWith.json")
    static let samplePerson:Person = allPeople[0]
}


struct Address: Codable {
    var streetAddress, city, state, postalCode: String
}


struct PhoneNumber: Codable {
    var type, number: String
}

extension Bundle {
    func decode<T:Decodable>(file:String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Sorry to you wy dont find \(file) in the project!")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Sorry to you wy dont load \(file) in the project!")
        }
        let decoder = JSONDecoder()
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Sorry to you wy dont decode \(file) in the project!")
        }
        return loadedData
        }
    }

