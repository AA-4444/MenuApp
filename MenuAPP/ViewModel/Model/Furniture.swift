//
//  Furniture.swift
//  FurnitureAppUI (iOS)
//
//  Created by Balaji on 29/05/22.
//

import SwiftUI

// MARK: Furniture Model And Sample Data
struct Staff: Identifiable{
    var id: String = UUID().uuidString
    var title: String
    var image: String
    var subTitle: String
    var price: String
}

var staffs: [Staff] = [
    Staff(title: "Royal Palm Sofa", image: "Furniture1", subTitle: "Erogonomical for humans body curve.", price: "$299"),
    Staff(title: "Modern Sofa", image: "Furniture2", subTitle: "Extra comfy chair with a palm rest.", price: "$499"),
    Staff(title: "Leather Sofa", image: "Furniture3", subTitle: "Erogonomical for humans body curve.", price: "$199"),
    Staff(title: "Luxary Sofa", image: "Furniture4", subTitle: "Extra comfy chair with a palm rest.", price: "$399"),
    Staff(title: "Seto Sofa", image: "Furniture5", subTitle: "Erogonomical for humans body curve.", price: "$599")
]
