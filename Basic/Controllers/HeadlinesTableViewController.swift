//
//  HeadlinesTableViewController.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/27.
//

import Foundation
import UIKit

class HeadlinesTableViewController : UITableViewController {
    
    var sourceViewModel :SourceViewModel!
    
    private var webservice :Webservice!
    private var headlineListViewModel :HeadlineListViewModel!
    private var dataSource :TableViewDataSource<HeadlineTableViewCell,HeadlineViewModel>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    private func updateUI() {
        
        self.title = self.sourceViewModel.name
        
        self.webservice = Webservice()
        self.headlineListViewModel = HeadlineListViewModel(sourceViewModel: self.sourceViewModel) {
            
            self.dataSource = TableViewDataSource(cellIdentifier: "Cell", items: self.headlineListViewModel.headlineViewModels) { cell, vm in
                
                cell.titleLabel.text = vm.title
                cell.descriptionLabel.text = vm.description
            }
            
            self.tableView.dataSource = self.dataSource
            self.tableView.reloadData()
           
        }
     
    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        if self.headlineListViewModel != nil {
//            return self.headlineListViewModel.headlineViewModels.count
//        }
//
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HeadlineTableViewCell
//
//        let headlineViewModel = self.headlineListViewModel.headlineAt(index: indexPath.row)
//
//        cell.titleLabel.text = headlineViewModel.title
//        cell.descriptionLabel.text = headlineViewModel.description
//
//        return cell
//    }
    
}


