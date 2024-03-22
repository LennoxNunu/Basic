//
//  FlowersTableViewController.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/22.
//

import Foundation
import UIKit

class FlowersTableViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Webservice().loadFlowers { flowers in
            print(flowers)
        }
    }
}
