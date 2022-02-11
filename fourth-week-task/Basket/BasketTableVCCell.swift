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
    let defaults = UserDefaults.standard
    var count = 0
    
    func showHide(_ action: Bool){
        buttonDec.isHidden = action
        countCell.isHidden = action
    }
    
    func saveCount(_ countDish: Int) {
        countCell.text = String(countDish)
        defaults.set(countDish, forKey: String(id))
    }
    
    func configure(with basket: Welcome, andWith image: UIImage) {
        self.countCell.text = String(count)
        self.id = basket.id!
        self.titleCell.text = basket.name
        self.subtitleCell.text = basket.description
        self.priceCell.text = "\(basket.price ?? 0) ₽"
        self.imageCell.image = image
        
        if defaults.integer(forKey: String(id))  > 0 {
            self.countCell.text = String(defaults.integer(forKey: String(id)))
            count = defaults.integer(forKey: String(id))
            showHide(false)
        } else {
            showHide(true)
        }
    }
    
    func incDec(_ incDec: Bool) {
        if (incDec) {
            count = count + 1
        } else {
            count = count - 1
        }
    }
    
    @IBAction func pressedButtonInc(_ sender: UIButton) {
        incDec(true)
        saveCount(count)
        showHide(false)
    }
    
    @IBAction func pressedButtonDec(_ sender: UIButton) {
        incDec(false)
        saveCount(count)
        if count == 0 {
            showHide(true)
        }
    }
}

