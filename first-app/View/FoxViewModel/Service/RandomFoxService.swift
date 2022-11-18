//
//  RandomFoxService.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//
// https://randomfox.ca/floof/
import Foundation
import Alamofire
protocol IFoxService{
    func fetchItem(path: FoxPaths, onSuccess: @escaping (RandomFoxModel, Bool)->Void)
}

class RandomFoxService: IFoxService {
    
    private let baseUrl: String = "https://randomfox.ca/"
    
    //                                 Callback // @escaping yazarak value yi dışarı yollayabiliyoruz yoksa hata vericek
    func fetchItem(path: FoxPaths, onSuccess: @escaping (RandomFoxModel, Bool)->Void){
        AF.request(baseUrl+path.rawValue).responseDecodable(of: RandomFoxModel.self,completionHandler:  { response in
          
            guard let value = response.value else {
                // onSuccess(mockData,false)
                return }
            onSuccess(value,true)
        })
    }
}


enum FoxPaths: String {
  case floof = "floof"
}
