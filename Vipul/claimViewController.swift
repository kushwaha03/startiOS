//
//  claimViewController.swift
//  Vipul
//
//  Created by karmaa lab on 05/04/19.
//  Copyright © 2019 kLab. All rights reserved.
//

import UIKit

class claimViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    let cellReuseIdentifier = "cell"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        print("\(#function) --- section = \(indexPath.section), row = \(indexPath.row)")
        
//        cell.textLabel?.text = animals[indexPath.row]
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200.0;//Choose your custom row height
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let color2 = UIColor(rgb: 0x2ecc71)
        self.view.backgroundColor = color2
        self.claimtable.backgroundColor = color2
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var claimtable: UITableView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
