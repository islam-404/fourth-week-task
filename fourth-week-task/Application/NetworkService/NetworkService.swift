////
////  NetworkService.swift
////  fourth-week-task
////
////  Created by islam on 09.02.2022.
////
//
//
//import Foundation
//
//class NetworkService {
//    
//    private init() {}
//    static let shared = NetworkService()
//    
//   public func getData(url: URL,  completion: @escaping (Any) -> ()) {
//        let session = URLSession.shared
//        
//        session.dataTask(with: url) { (data, response, error) in
//            guard let data = data else { return }
//            
//            do {
//                let json = try JSONSerialization.jsonObject(with: data, options: [])
//                DispatchQueue.main.async {
//                    completion(json)
//                }
//            } catch {
//                print(error)
//            }
//        }.resume()
//    }
//}
