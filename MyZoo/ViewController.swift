//
//  ViewController.swift
//  MyZoo
//
//  Created by Rifqi Muhammad Aziz on 07/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataTitle = ["Cat", "Lion", "Girrafe", "Pig"]
    var dataSubtitle = ["This is Cat Subtitle", "This is Lion Subtitle", "This is Girrafe Subtitle", "This is Pig Subtitle"]
//    var dataImage = [UIImage(named: "cat")!, UIImage(named: "lion")!, UIImage(named: "girrafe")!, UIImage(named: "pig")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        // text label every cell will be filled 
        // cell.textLabel?.text = dataArray[indexPath.row]
        
        cell.titleCell.text = dataTitle[indexPath.row]
        cell.subtitleCell.text = dataSubtitle[indexPath.row]
//        cell.imageCell.image = dataImage[indexPath.row]
        
        return cell
    }
    
    
}

