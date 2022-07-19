//
//  Staff.swift
//  MenuAPP
//
//  Created by Алексей Зарицький on 03.07.2022.
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
    Staff(title: "Personnel", image: "Furniture1", subTitle: "Destroyed Soldiers", price: "36 070"),
    Staff(title: "Tanks", image: "Furniture2", subTitle: "Destoyed Tanks", price: "1586"),
    Staff(title: "Aircrafts", image: "Furniture3", subTitle: "Destroyed Aircrafts", price: "217"),
    Staff(title: "Vechicles", image: "Furniture4", subTitle: "Destroyed Vechicles", price: "3751"),
    Staff(title: "MLRS", image: "Furniture5", subTitle: "Destroyed MLRS", price: "246"),
    Staff(title: "Artillery system", image: "Furniture6", subTitle: "Destroyed Artillery system", price: "802"),
    Staff(title: "Vehicles", image: "Furniture7", subTitle: "Destroyed Vechicles", price: "2622"),
    Staff(title: "AAWS", image: "Furniture8", subTitle: "Destroyed AAWS", price: "105"),
    Staff(title: "Ships", image: "Furniture9", subTitle: "Destroyed Ships", price: "15"),
    Staff(title: "Missiles", image: "Furniture10", subTitle: "Destroyed Missiles", price: "144"),
    Staff(title: "SE", image: "Furniture11", subTitle: "Destroyed SE", price: "65"),
    Staff(title: "Helicopter", image: "Furniture12", subTitle: "Destroyed Helicopter", price: "188"),
    Staff(title: "UAV", image: "Furniture13", subTitle: "Destroyed UAV", price: "655")
]
