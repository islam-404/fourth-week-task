//
//  BasketViewController.swift
//  fourth-week-task
//
//  Created by islam on 08.02.2022.
//

import UIKit

class BasketViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var baskets = [Basket]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BasketNetworkService.getBasket { (response) in
            self.baskets = response.baskets
            
            self.tableView.reloadData()
            
        }
    }
    

}

extension BasketViewController: UITableViewDelegate {
    
}

extension BasketViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(baskets.count)
        return baskets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basketCell", for: indexPath) as! BasketTableVCCell
        let basket = baskets[indexPath.row]
        print(basket)
        cell.configure(with: basket)
        return cell
    }
    
    
}
