//
//  WeatherApixeEntity.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import Foundation
import RealmSwift

class WeatherApixeEntity: Object {
    
    @objc dynamic var location: Location?
    @objc dynamic var current: Current?
    @objc dynamic var forecast: Forecast?
}
