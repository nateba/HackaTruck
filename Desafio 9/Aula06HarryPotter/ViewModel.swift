//
//  ViewModel.swift
//  Aula06HarryPotter
//
//  Created by Student24 on 14/04/23.
//

import Foundation

struct Wand : Codable {
    var wood : String?
    var core : String?
    var length : Float?
}

struct HaPo : Codable, Identifiable {
    var id : String
    var name : String?
    var alternate_names : [String]?
    var species : String?
    var gender : String?
    var house : String?
    var dateOfBirth : String?
    var yearOfBirth : Int?
    var wizard : Bool?
    var ancestry : String?
    var eyeColour : String?
    var hairColour : String?
    var wand : Wand
    var patronus : String?
    var hogwartsStudent : Bool?
    var hogwartsStaff : Bool?
    var actor : String?
    var alternate_actors : [String]?
    var alive : Bool?
    var image : String?
}

class ViewModel : ObservableObject {
    
    @Published var chars : [HaPo] = []
    
    func fetch() {
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/slytherin") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([HaPo].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
