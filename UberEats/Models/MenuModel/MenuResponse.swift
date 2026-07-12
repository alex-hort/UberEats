//
//  MenuResponse.swift
//  UberEats
//
//  Created by Alexis Horteales Espinosa on 11/07/26.
//

import Foundation

struct MenuResponse: Identifiable, Hashable{
    var id: UUID
    var name: String
    var imageUrl: String
    var description: String
    var price: String
    var isPriceAddOns: Int
    var rate: Int
    var totalRate: Int
    var isPopular: Int
}
