//
//  LocationModel.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import Foundation

class LocationModel: Decodable {
    var name: String?
    var region: String?
    var country: String?
    var lat: Double?
    var lon: Double?
    var tzId: String?
    var localtimeEpoch: Double?
    var localtime: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case region = "region"
        case country = "country"
        case lat = "lat"
        case lon = "lon"
        case tzId = "tz_id"
        case localtimeEpoch = "localtime_epoch"
        case localtime = "localtime"
    }
}
