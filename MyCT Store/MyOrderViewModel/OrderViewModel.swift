//
//  OrderViewModel.swift
//  MyCT Store
//
//  Created by Prince Desai on 10/04/23.
//

import Foundation

class OrderViewModel{
    private(set) var arrMyOrderdetails: [MyOrderApiViewModel] = []
    private var apiManeger: APIManager = APIManager()
    
    func fetchDetalisOfMyOrder(completion: @escaping(Result<(), Error>) -> Void) {
        
        apiManeger.request(with: APIEndPoint.getOrder.url,method: .get) {  response in
            switch response {
            case .success(let data):
                do {
                    let myOrderApiResponse = try JSONDecoder().decode(OrderAPIResponse.self, from: data)
                    self.arrMyOrderdetails = myOrderApiResponse.data.map { MyOrderApiViewModel(orderApiData: $0) }
                    print(self.arrMyOrderdetails)
                    completion(.success(()))
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func numOfSection() -> Int { return 1}
    func numOfRow() -> Int { return arrMyOrderdetails.count}
}

