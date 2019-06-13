//
//  NetworkingService.swift
//  GuidePad
//
//  Created by Richard Lee on 2019-06-13.
//  Copyright © 2019 HungGo. All rights reserved.
//

import Foundation

class NetworkingService {
    
    private init() {}
    static let shared = NetworkingService()
    
    func request(_ urlPath: String, completion: @escaping (Result<Data, NSError>) -> Void) {
        
//        let url = URL(string: urlPath)!
        
        print("eat my nuts")
        print(urlPath)
        
        let url3 = URL(fileURLWithPath: urlPath)
        let session = URLSession.shared
        let task = session.dataTask(with: url3) { (data, _, error) in
            
            if let unwrappedError = error {
                completion(.failure(unwrappedError as NSError))
                //let data = try Data(contentsOf: url, options: .mappedIfSafe)
            //} else if let unwrappedData = try Data(contentsOf: url2, options: .mappedIfSafe) {
            } else if let unwrappedData = data {
                completion(.success(unwrappedData))
            }
            
        }
        
        task.resume()
        
    }
    
}
