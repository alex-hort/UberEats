//
//  RestaurantResponse.swift
//  UberEats
//
//  Created by Alexis Horteales Espinosa on 11/07/26.
//

import Foundation


struct RestaurantResponse: Identifiable, Hashable{
    var id: UUID
    var name: String
    var logoUrl:String
    var coverUrl: String
    var rate: String
    var totalRate: Int
    var distance: String
}
