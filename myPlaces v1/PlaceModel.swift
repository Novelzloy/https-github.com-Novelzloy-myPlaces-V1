//
//  PlaceModel.swift
//  myPlaces v1
//
//  Created by Роман on 03.03.2021.
//

import Foundation


struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    
   static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    static func getPlace() -> [Place] {
    
        var places = [Place]()
        for place in restaurantNames {
            places.append(Place(name: place, location: "Moswoc", type: "restaurant", image: place))
        }
    
    
    
    
        return places
    }
    
}
