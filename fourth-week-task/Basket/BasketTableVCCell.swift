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
    
    func configure(with basket: Basket) {
        self.titleCell.text = basket.name
        self.subtitleCell.text = basket.description
        self.priceCell.text = String(basket.price)
        
//        let image = basket.imageApp
//        let url = URL(string:"\(image)")
//        if let data = try? Data(contentsOf: url!)
//        {
//            self.imageCell.image = UIImage(data: data)
//        }
        
    }
}







//
//
//override func awakeFromNib() {
//    super.awakeFromNib()
//    // Initialization code
//}
//
//override func setSelected(_ selected: Bool, animated: Bool) {
//    super.setSelected(selected, animated: animated)
//
//    // Configure the view for the selected state
//}
