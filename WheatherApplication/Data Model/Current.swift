////
////  CurrentEntity.swift
////  WheatherApplication
////
////  Created by Joe Franc on 10/6/18.
////  Copyright © 2018 farxat60. All rights reserved.
////
//
import Foundation
import RealmSwift

class Current: Object {
    
    @objc dynamic var lastUpdatedEpoch: Double = 0.0
    @objc dynamic var lastUpdated: String?
    @objc dynamic var tempC: Double = 0.0
    @objc dynamic var tempF: Double = 0.0
    @objc dynamic var isDay: Double = 0.0
    @objc dynamic var condition: Condition?
    @objc dynamic var windMph: Double = 0.0
    @objc dynamic var windKph: Double = 0.0
    @objc dynamic var windDegree: Double = 0.0
    @objc dynamic var windDir: String?
    @objc dynamic var pressureMb: Double = 0.0
    @objc dynamic var pressureIn: Double = 0.0
    @objc dynamic var precipMm: Double = 0.0
    @objc dynamic var precipIn: Double = 0.0
    @objc dynamic var humidity: Double = 0.0
    @objc dynamic var cloud: Double = 0.0
    @objc dynamic var feelslikeC: Double = 0.0
    @objc dynamic var feelslikeF: Double = 0.0
    @objc dynamic var visKm: Double = 0.0
    @objc dynamic var visMiles: Double = 0.0
}

class Condition: Object {
    
   @objc dynamic var text: String?
   @objc dynamic var icon: String?
   @objc dynamic var code: Double = 0.0

}

