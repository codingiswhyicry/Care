//
//  ViewController.swift
//  Care++
//
//  Created by Amanda Southworth on 2/28/17.
//  Copyright © 2017 Amanda Southworth. All rights reserved.
//

import UIKit

class firstPriority: UITableViewCell {

    override func draw(_ rect: CGRect) {
        
    }
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var separator: UIView!
    
}

class secondPriority: UITableViewCell {
    
    override func draw(_ rect: CGRect) {
        
    }
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var separator: UIView!
    
}

class thirdPriority: UITableViewCell {
    
    override func draw(_ rect: CGRect) {
        
    }
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var separator: UIView!

}

class fourthPriority: UITableViewCell {
    
    override func draw(_ rect: CGRect) {
        
    }
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var separator: UIView!
    
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected row is \(indexPath.row)")
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath) as! firstPriority
    
    cell.taskTitle.text = "\(indexPath.row)"
    
    return cell
    
  }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTable.delegate = self
        taskTable.dataSource = self
        taskTable.backgroundColor = UIColor.clear
    }
    
    

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var taskTable: UITableView!
    

}

