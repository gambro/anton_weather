//
//  WeatherApixeModel.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import Foundation


class WeatherApixeModel: Decodable {
     var location: LocationModel?
     var current: CurrentModel?
     var forecast: ForecastModel?

    enum CodingKeys: String, CodingKey {
        case location = "location"
        case current = "current"
        case forecast = "forecast"
    }
}







