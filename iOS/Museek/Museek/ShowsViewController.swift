//
//  ViewController.swift
//  Museek
//
//  Created by Jesse Tipton on 3/15/16.
//  Copyright © 2016 Museek. All rights reserved.
//

import UIKit

class ShowsViewController: UITableViewController {

    enum Filter: Int {
        case Time = 0
        case Distance = 1
    }
    
    var shows = [Show]()
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func filter(sender: UISegmentedControl) {
        guard let filter = Filter(rawValue: sender.selectedSegmentIndex) else { return }
        reloadData(filter)
    }
 
    private func reloadData(filter: Filter) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadData(.Time)
    }
    
    // MARK: - UITableViewDataSource
    
}
