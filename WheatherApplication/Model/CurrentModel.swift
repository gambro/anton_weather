//
//  CurrentModel.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import Foundation

class CurrentModel: Decodable {
    var lastUpdatedEpoch: Double?
    var lastUpdated: String?
    var tempC: Double?
    var tempF: Double?
    var isDay: Double?
    var condition: ConditionModel?
    var windMph: Double?
    var windKph: Double?
    var windDegree: Double?
    var windDir: String?
    var pressureMb: Double?
    var pressureIn: Double?
    var precipMm: Double?
    var precipIn: Double?
    var humidity: Double?
    var cloud: Double?
    var feelslikeC: Double?
    var feelslikeF: Double?
    var visKm: Double?
    var visMiles: Double?
    
    enum CodingKeys: String, CodingKey {
        case lastUpdatedEpoch = "last_updated_epoch"
        case lastUpdated = "last_updated"
        case tempC = "temp_c"
        case tempF = "temp_f"
        case isDay = "is_day"
        case condition = "condition"
        case windMph = "wind_mph"
        case windKph = "wind_kph"
        case windDegree = "wind_degree"
        case windDir = "wind_dir"
        case pressureMb = "pressure_mb"
        case pressureIn = "pressure_in"
        case precipMm = "precip_mm"
        case precipIn = "precip_in"
        case humidity = "humidity"
        case cloud = "cloud"
        case feelslikeC = "feelslike_c"
        case feelslikeF = "feelslike_f"
        case visKm = "vis_km"
        case visMiles = "vis_miles"
    }
}

class ConditionModel: Decodable {
    
    var text: String?
    var icon: String?
    var code: Double?
    
    enum CodingKeys: String, CodingKey {
        case text = "text"
        case icon = "icon"
        case code = "code"
    }
}
