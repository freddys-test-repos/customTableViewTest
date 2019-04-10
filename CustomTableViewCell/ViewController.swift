//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Alfredo Merino on 4/2/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

struct CellData {
    let image: UIImage
    let message: String?
}

class TableViewController: UITableViewController {

    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        data = [CellData.init(image: #imageLiteral(resourceName: "Waterpic.jpg"), message: "WaterWaterWaterWaterWaterWaterWaterWaterWaterWaterWaterWaterWaterWater" ), CellData.init(image: #imageLiteral(resourceName: "Waterpic.jpg"), message: "Water" ), CellData.init(image: #imageLiteral(resourceName: "Waterpic.jpg"), message: "Water" )]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.mainImage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
        return cell
    }
    
    
}

