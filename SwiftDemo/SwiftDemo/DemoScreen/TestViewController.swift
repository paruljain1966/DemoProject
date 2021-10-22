//
//  TestViewController.swift
//  SwiftDemo
//
//  Created by Parul Jain on 05/10/21.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let menuData = MenuDataModel().menuData
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.allowsSelection = true
        
        // Do any additional setup after loading the view.
    }
    
}
extension TestViewController: UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        let menuItem = menuData[indexPath.row]
        cell.orderTextLabel?.text =  menuItem.itemName
        cell.orderPrice?.text = "$\(menuItem.price)"
        cell.orderTextLabel.textColor = UIColor.white
        cell.orderPrice.textColor = UIColor.white
        cell.backgroundColor = UIColor.blue
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuData.count // your number of cells here
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let testVC = storyboard.instantiateViewController(withIdentifier: "ViewController")
        self.navigationController?.pushViewController(testVC, animated: true)
    }
    
}
