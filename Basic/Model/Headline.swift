//
//  Headline.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/27.
//

import Foundation

class Headline {
    
    var title :String!
    var description :String!
    
    init?(dictionary :[String:Any]) {
        
        guard let title = dictionary["title"] as? String,
            let description = dictionary["description"] as? String else {
                return nil
        }
        
        self.title = title
        self.description = description
    }
    
}
