//
//  FlowersTableViewController.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/22.
//

import Foundation
import UIKit

class FlowersTableViewController : UITableViewController {
    
    private var flowersListViewModel :FlowersListViewModel!
    private var webservice :Webservice = Webservice()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.flowersListViewModel = FlowersListViewModel(webservice: self.webservice) {
            self.tableView.reloadData()
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.flowersListViewModel.flowers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let flower = self.flowersListViewModel.flowers[indexPath.row]
        
        cell.textLabel?.text = flower.name
        return cell
        
    }
}
