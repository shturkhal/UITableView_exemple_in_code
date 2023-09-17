//
//  ViewController.swift
//  UITableView
//
//  Created by Іван Штурхаль on 29.05.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var myTableView = UITableView()
    let identifier = "myCell"
    var array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTable()
    }


    func createTable() {
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        self.myTableView.backgroundColor = UIColor.lightGray
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    
        self.myTableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.view.addSubview(myTableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0:
//            return 3
//        case 1:
//            return 5
//        case 2:
//            return 8
//        default:
//            break
//        }
//        return 0
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = "section = \(indexPath.section), row = \(indexPath.row)"
        
//        cell.accessoryType = .detailButton
//
//        switch indexPath.section {
//        case 0:
//            cell.backgroundColor = UIColor.yellow
//        case 1:
//            cell.backgroundColor = UIColor.blue
//        case 2:
//            cell.backgroundColor = UIColor.green
//        default:
//            break
//        }
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("button pushed")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}

