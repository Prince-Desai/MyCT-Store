//
//  MyOrderViewModel.swift
//  MyCT Store
//
//  Created by Prince Desai on 10/04/23.
//

import Foundation

struct MyOrderApiViewModel{
    private var orderApiData: OrderAPIData
    
    init(orderApiData: OrderAPIData) {
        self.orderApiData = orderApiData
    }
    
    func getOrderId() -> String { return orderApiData.orderId }
    func getVendorName() -> String { return orderApiData.vendorName }
    func getImage() -> String {
        return Config.baseURLForImage + (orderApiData.image.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    }
    func getTotalPrice() -> String { return orderApiData.totalPrice }
    func getdateAndTime() -> String { return orderApiData.dateAndTime }
    func getStats() -> String { return orderApiData.stats }
}
