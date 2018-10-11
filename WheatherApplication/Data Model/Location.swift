////
////  LocationEntity.swift
////  WheatherApplication
////
////  Created by Joe Franc on 10/6/18.
////  Copyright © 2018 farxat60. All rights reserved.
////
//
import Foundation
import RealmSwift

class Location: Object {

    @objc dynamic var name: String?
    @objc dynamic var region: String?
    @objc dynamic var country: String?
    @objc dynamic var lat: Double = 0.0
    @objc dynamic var lon: Double = 0.0
    @objc dynamic var tzId: String?
    @objc dynamic var localtimeEpoch: Double = 0.0
    @objc dynamic var localtime: String?
}
