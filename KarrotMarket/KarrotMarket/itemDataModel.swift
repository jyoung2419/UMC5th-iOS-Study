//
//  itemData.swift
//  KarrotMarket
//
//  Created by 정진영 on 2023/10/30.
//


import Foundation
import UIKit

struct ItemDataModel {
    let itemName: String
    let itemImageName: String?
}


extension ItemDataModel{
    static let sampleData: [ItemDataModel] = [
        ItemDataModel(itemName: "icetray1", itemImageName: "icetray1"),
        ItemDataModel(itemName: "icetray2", itemImageName: "icetray2"),
        ItemDataModel(itemName: "icetray3", itemImageName: "icetray3"),
        ItemDataModel(itemName: "icetray4", itemImageName: "icetray4"),
        ItemDataModel(itemName: "icetray5", itemImageName: "icetray1")
    ]
}
