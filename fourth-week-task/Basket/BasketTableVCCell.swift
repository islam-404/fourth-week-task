//
//  BasketTableVCCell.swift
//  fourth-week-task
//
//  Created by islam on 09.02.2022.
//

import UIKit



class BasketTableVCCell: UITableViewCell {

  
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var subtitleCell: UILabel!
    @IBOutlet weak var priceCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var countCell: UILabel!
    @IBOutlet weak var buttonInc: UIButton!
    @IBOutlet weak var buttonDec: UIButton!
    var id = 0
    func showHide(_ action: Bool){
        buttonDec.isHidden = action
        countCell.isHidden = action
    }
    
    func configure(with basket: Welcome, andWith image: UIImage) {
        self.id = basket.id!
        self.titleCell.text = basket.name
        self.subtitleCell.text = basket.description
        self.priceCell.text = "\(basket.price ?? 0) ₽"
        self.imageCell.image = image
        
        print("bool", UserDefaults.standard.integer(forKey: String(id))  != 0)
        if UserDefaults.standard.integer(forKey: String(id))  != 0 {
            self.countCell.text = String(UserDefaults.standard.integer(forKey: String(id)))
            showHide(false)
        } else {
            showHide(true)
        }
    }
    
    @IBAction func pressedButtonInc(_ sender: UIButton) {
        let count = Int(countCell.text!)!
        UserDefaults.standard.set(count + 1, forKey: String(id))
        countCell.text = String(count + 1)
        showHide(false)
    }
    
    @IBAction func pressedButtonDec(_ sender: UIButton) {
        let count = Int(countCell.text!)!
        countCell.text = String(count - 1)
        UserDefaults.standard.set(count - 1, forKey: String(id))
        if count <= 1 {
            showHide(true)
        } else {
            
        }
    }
}

