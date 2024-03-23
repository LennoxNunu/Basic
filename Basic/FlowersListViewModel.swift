//
//  FlowersListViewModel.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/22.
//

import Foundation

class FlowersListViewModel {
    
    var flowers :[FlowerViewModel] = [FlowerViewModel]()
    
    init(webservice :Webservice, completion :@escaping () -> ()) {
        
        webservice.loadFlowers { flowers in
            
            self.flowers = flowers.map(FlowerViewModel.init)
            
            DispatchQueue.main.async {
                completion()
            }
            
        }
        
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
