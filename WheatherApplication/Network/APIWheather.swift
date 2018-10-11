//
//  APIWheather.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/5/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import Foundation
import Alamofire
import Sync
import RealmSwift

@objc class APIWheather : NSObject {
    enum Server:String {
        case dev = "https://api.apixu.com/v1/forecast.json?key=b595670e9c5f42798b8143733180510&q=Kiev&days="
    }
    static var currentServer: String = Server.dev.rawValue
    
    static func sendPushTokens(dayNumber: Int, success: @escaping (WeatherApixeModel?)->Void,
                               error: @escaping ()->Void ) {
        
        let days = String(dayNumber)
        let url = currentServer.appending(days)
        
        Alamofire.request(url, method: .get, encoding: JSONEncoding.default ).responseJSON {
            response in
            
            switch response.result {
            case .failure( _):
                    print("Result fail: \n \(String(describing: response.result.value ))\n\n\(response.response?.statusCode ?? -1)")
                
                
            case .success(_):
                    print("Response: \(response.value ?? "" )")
                    guard let data = response.data else { return }
                    let decoder = JSONDecoder()
                    
                    do {
                        var wheatherModel = WeatherApixeModel()
                        wheatherModel = try decoder.decode(WeatherApixeModel.self , from: data)
                        var items: Results<WeatherApixeEntity>!
                        
                        let realm = try! Realm()
                        items = realm.objects(WeatherApixeEntity.self)
                        try! realm.write {
                                realm.delete(items)
                        }

                        print("WheatherModel: \(wheatherModel)")
                        success(wheatherModel)
                        
                    } catch let error{
                        
                        print(error.localizedDescription)
                }

            }
        }
    }
}






