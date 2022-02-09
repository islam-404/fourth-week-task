//
//  BasketViewController.swift
//  fourth-week-task
//
//  Created by islam on 08.02.2022.
//

import UIKit

class BasketViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
   // var baskets = [Welcome]()
    var dishes: [Welcome] = []
    var images: [UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        BasketNetworkService.getBasket { (response) in
//            self.baskets = response.baskets
//
//            self.tableView.reloadData()
//
        //        }
        spinner.startAnimating()
        Task {
            self.dishes = try await FoodViewModel().getAllFood()
            //print(dishes)
            for item in dishes {
                let image = try await FoodViewModel().getAllImagesOfFood(for: item.image!)
                self.images.append(image)
                if dishes.count == images.count {
                    DispatchQueue.main.async {
                        self.spinner.stopAnimating()
                        self.spinner.isHidden = true
                        self.tableView.reloadData()
                        
                    }
                }
            }
        }
        
        
    }
    

}

extension BasketViewController: UITableViewDelegate {
    
}

extension BasketViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(dishes.count)
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basketCell", for: indexPath) as! BasketTableVCCell
        let basket = dishes[indexPath.row]
        let imageForBasket = images[indexPath.row]
//        print(basket)
        cell.configure(with: basket, andWith: imageForBasket!)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 144
//    }
    
}
