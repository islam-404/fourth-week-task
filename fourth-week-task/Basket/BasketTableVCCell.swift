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
    
    func configure(with basket: Welcome, andWith image: UIImage) {
        self.titleCell.text = basket.name
        self.subtitleCell.text = basket.description
        self.priceCell.text = "\(basket.price ?? 0)$"
        
//        let imageCell = basket.imageApp
//        let url = URL(string:"\(imageCell)")
//        DispatchQueue.global(qos: .background).async {
//            if let data = try? Data(contentsOf: url!)
//            {
//                DispatchQueue.main.async {
//                    self.imageCell.image = UIImage(data: data)
//                }
//            }
//        }
        self.imageCell.image = image
        
    }
}

