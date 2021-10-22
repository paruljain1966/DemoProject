//
//  DataModel.swift
//  SwiftDemo
//
//  Created by Parul Jain on 06/10/21.
//

import Foundation


struct MenuItem {
    var id:Int
    var price:Double
    var itemName:String
}


struct MenuDataModel {
    var menuData = [
        MenuItem(id: 1, price: 20.00, itemName: "Huli chicken pizza"),
        MenuItem(id: 2, price: 30.00, itemName: "Margerita"),
        MenuItem(id: 3, price: 40.00, itemName: "Greek pizza"),
        MenuItem(id: 4, price: 50.00, itemName: "Californian pizza"),
        MenuItem(id: 5, price: 60.00, itemName: "New York pizza"),
        MenuItem(id: 6, price: 70.00, itemName: "Onion Capsicum pizza"),
        MenuItem(id: 7, price: 80.00, itemName: "Detroit pizza")
    ]
}
