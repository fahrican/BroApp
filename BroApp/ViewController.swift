//
//  ViewController.swift
//  BroApp
//
//  Created by fahri on 28.04.18.
//  Copyright © 2018 fahri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let friends = [
        ("Fahri Can", "Favoriten"),
        ("Marco Zema", "Ottakring"),
        ("Matthias Muck", "Gerasdorf")
    ]
    
    let universities = [
        ("FH Technikum", "20.Bezirk"),
        ("WU Wien", "2.Bezirk")
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Bro's 4 Life"
        }
        return "Hochschulen"
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return friends.count
        }
        return universities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        if indexPath.section == 0 {
            
            var (personName, personAddress) = friends[indexPath.row]
            cell.textLabel?.text = personName
        }
        else {
            
            var (universityName, universityAddress) = universities[indexPath.row]
            cell.textLabel?.text = universityName
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

