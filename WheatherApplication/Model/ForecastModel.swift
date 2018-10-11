//
//  ForecastModel.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import Foundation

class ForecastModel: Decodable {
    
    var forecastDay: [ForecastDayModel]?
    
    enum CodingKeys: String, CodingKey {
        case forecastDay = "forecastday"
    }
}

class ForecastDayModel: Decodable {
    
    var date: String?
    var dateEpoch: Double?
    var day: DayModel?
    var astro: AstroModel?
    
    enum CodingKeys: String, CodingKey {
        case date = "date"
        case dateEpoch = "date_epoch"
        case day = "day"
        case astro = "astro"
    }
}

class AstroModel: Decodable {
    
    var sunrise: String?
    var sunset: String?
    var moonrise: String?
    var moonset: String?
    
    enum CodingKeys: String, CodingKey {
        case sunrise = "sunrise"
        case sunset = "sunset"
        case moonrise = "moonrise"
        case moonset = "moonset"
    }
}

class DayModel: Decodable {
    
    var maxtempC: Double?
    var maxtempF: Double?
    var mintempC: Double?
    var mintempF: Double?
    var avgtempC: Double?
    var avgtempF: Double?
    var maxwindMph: Double?
    var maxwindKph: Double?
    var totalprecipMm: Double?
    var totalprecipIn: Double?
    var avgvisKm: Double?
    var avgvisMiles: Double?
    var avghumidity: Double?
    var condition: ConditionModel!
    var uv: Double?
    
    enum CodingKeys: String, CodingKey {
        case maxtempC = "maxtemp_c"
        case maxtempF = "maxtemp_f"
        case mintempC = "mintemp_c"
        case mintempF = "mintemp_f"
        case avgtempC = "avgtemp_c"
        case avgtempF = "avgtemp_f"
        case maxwindMph = "maxwind_mph"
        case maxwindKph = "maxwind_kph"
        case totalprecipMm = "totalprecip_mm"
        case totalprecipIn = "totalprecip_in"
        case avgvisKm = "avgvis_km"
        case avgvisMiles = "avgvis_miles"
        case avghumidity = "avghumidity"
        case condition = "condition"
        case uv = "uv"
    }
    
}
