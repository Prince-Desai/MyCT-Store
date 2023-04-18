//
//  MyOrderViewController.swift
//  MyCT Store
//
//  Created by Prince Desai on 10/04/23.
//

import UIKit
import SDWebImage

class MyOrderViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var orderTbelView: UITableView!
    
    let viewModel: OrderViewModel = OrderViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        orderTbelView.register(UINib(nibName: "StoreDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "StoreDetailsTableViewCell")
        orderTbelView.register(UINib(nibName: "ScarchBarTableViewCell", bundle: nil), forCellReuseIdentifier: "ScarchBarTableViewCell")
        viewModel.fetchDetalisOfMyOrder { result in
            switch result {
            case .success(let success):
                print(success)
                self.orderTbelView.reloadData()
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    

}

extension MyOrderViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfRow()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numOfSection()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let cell: StoreDetailsTableViewCell = tableView.dequeueReusableCell(withIdentifier:"StoreDetailsTableViewCell") as! StoreDetailsTableViewCell
               cell.hasId.text = viewModel.arrMyOrderdetails[indexPath.row].getOrderId()
                cell.dateAndTime.text = viewModel.arrMyOrderdetails[indexPath.row].getdateAndTime()
                cell.pendingAndConform.text = viewModel.arrMyOrderdetails[indexPath.row].getStats()
                cell.storeNameLabel.text = viewModel.arrMyOrderdetails[indexPath.row].getVendorName()
                cell.priceLabel.text = viewModel.arrMyOrderdetails[indexPath.row].getTotalPrice()
                cell.storeImage.sd_setImage(with: URL(string: viewModel.arrMyOrderdetails[indexPath.row].getImage()))
            return cell
//        switch indexPath.section {
//        case 0:
//            let cell: ScarchBarTableViewCell = tableView.dequeueReusableCell(withIdentifier: ScarchBarTableViewCell.identifier) as! ScarchBarTableViewCell
//            return cell
//
//        case 1:
//            let cell: StoreDetailsTableViewCell = tableView.dequeueReusableCell(withIdentifier: StoreDetailsTableViewCell.identifier) as! StoreDetailsTableViewCell
//            return cell
//        default:  return UITableViewCell()
//        }
    }
}
