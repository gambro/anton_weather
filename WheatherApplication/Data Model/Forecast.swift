////
////  ForecastEntity.swift
////  WheatherApplication
////
////  Created by Joe Franc on 10/6/18.
////  Copyright © 2018 farxat60. All rights reserved.
////
//
import Foundation
import RealmSwift

class Forecast: Object {
    
    var forecastDay = List<ForecastDay>()

}

class ForecastDay: Object {
    
   @objc dynamic var date: String?
   @objc dynamic var dateEpoch: Double = 0.0
   @objc dynamic var day: Day?
   @objc dynamic var astro: Astro?
}

class Astro: Object {
    
   @objc dynamic var sunrise: String?
   @objc dynamic var sunset: String?
   @objc dynamic var moonrise: String?
   @objc dynamic var moonset: String?
}

class Day: Object {
    
    @objc dynamic var maxtempC: Double = 0.0
    @objc dynamic var maxtempF: Double = 0.0
    @objc dynamic var mintempC: Double = 0.0
    @objc dynamic var mintempF: Double = 0.0
    @objc dynamic var avgtempC: Double = 0.0
    @objc dynamic  var avgtempF: Double = 0.0
    @objc dynamic var maxwindMph: Double = 0.0
    @objc dynamic var maxwindKph: Double = 0.0
    @objc dynamic var totalprecipMm: Double = 0.0
    @objc dynamic var totalprecipIn: Double = 0.0
    @objc dynamic var avgvisKm: Double = 0.0
    @objc dynamic var avgvisMiles: Double = 0.0
    @objc dynamic var avghumidity: Double = 0.0
    @objc dynamic  var condition: Condition?
    @objc dynamic var uv: Double = 0.0
}

