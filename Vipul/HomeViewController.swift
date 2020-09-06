//
//  HomeViewController.swift
//  Vipul
//
//  Created by karmaa lab on 05/04/19.
//  Copyright © 2019 kLab. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var items = ["My Policies", "Insured Details", "Claim Intimation", "Ecard", "Reimbursement Claims", "Caseless Claims", "PPN Network", "Locate Us", "Network List", "Relationship Matrix", "ECS Intimation", "Ask A Query"]
    var images: [String] = [
        "11.png", "12.png", "13.png",
        "21.png", "22.png", "23.png",
        "31.png", "32.png", "33.png",
        "41.png", "42.png", "43.png",
       
        ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//      return self.items.count
        return self.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! allCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        let image = UIImage(named: images[indexPath.row])
        cell.allimg.image = image

        cell.vno.text = self.items[indexPath.item]
//        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        return cell
    }
    

    @IBOutlet weak var fuiview: UIView!
    @IBOutlet weak var suiview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let color2 = UIColor(rgb: 0x2ecc71)
        self.fuiview.backgroundColor = color2
         self.suiview.backgroundColor = color2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
