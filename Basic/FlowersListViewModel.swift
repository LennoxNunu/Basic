//
//  FlowersListViewModel.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/22.
//

import Foundation

class FlowersListViewModel {
    
    var flowers :[FlowerViewModel] = [FlowerViewModel]()
    
    /*
     we remove this code so that we can initialise from controller
     
    init(_ flowers :[Flower]) {
        
        self.flowers = flowers.map(FlowerViewModel.init)
    }
     */
    
    func populateFlowers(_ flowers :[Flower]) {
         self.flowers = flowers.map(FlowerViewModel.init)
    }
}

class FlowerViewModel {
    
    var name :String!
    var description :String!
    
    init(flower :Flower) {
        
        self.name = flower.name
        self.description = flower.description
        
    }
}
