//
//  GetWheather.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import UIKit
import RealmSwift

class GetWheather: NSObject {
    
    let realm = try! Realm()
    var items: Results<WeatherApixeEntity>!
        
    func getWheather(days: Int, completion: @escaping (_ result: WeatherApixeModel) -> Void) {
        APIWheather.sendPushTokens(dayNumber: days, success: { item in
            guard let models = item else { return }
            
            print("Response Success \(String(describing: item))")
            let wheatherModel = WeatherApixeEntity()
            let location = Location()
                location.country = item?.location?.country
                location.name = item?.location?.name
                location.localtimeEpoch = item?.location?.localtimeEpoch ?? 0.0
                location.tzId = item?.location?.tzId
                location.lat = item?.location?.lat ?? 0.0
                location.lon = item?.location?.lat ?? 0.0
                location.region = item?.location?.region
                wheatherModel.location = location
            
            let current = Current()
                current.cloud = item?.current?.cloud ?? 0.0
                current.feelslikeC = item?.current?.feelslikeC ?? 0.0
                current.feelslikeF = item?.current?.feelslikeF ?? 0.0
                current.humidity = item?.current?.humidity ?? 0.0
                current.isDay = item?.current?.isDay ?? 0.0
                current.lastUpdated = item?.current?.lastUpdated
                current.lastUpdatedEpoch = item?.current?.lastUpdatedEpoch ?? 0.0
                current.tempC = item?.current?.tempC ?? 0.0
                current.tempF = item?.current?.tempF ?? 0.0
                current.windMph = item?.current?.windMph ?? 0.0
                current.windKph = item?.current?.windKph ?? 0.0
                current.windDegree = item?.current?.windDegree ?? 0.0
                current.windDir = item?.current?.windDir
                current.pressureMb = item?.current?.pressureMb ?? 0.0
                current.pressureIn = item?.current?.precipIn ?? 0.0
                current.precipMm = item?.current?.precipMm ?? 0.0
                current.precipIn = item?.current?.precipIn ?? 0.0
                current.visKm = item?.current?.visKm ?? 0.0
                current.visMiles = item?.current?.visMiles ?? 0.0
            
            let condition = Condition()
                condition.code = item?.current?.condition?.code ?? 0.0
                condition.icon = item?.current?.condition?.icon
                condition.text = item?.current?.condition?.text
            
                current.condition = condition
                wheatherModel.current = current

            
            let forecast = Forecast()
            let forecastDay = List<ForecastDay>()
            item?.forecast?.forecastDay?.forEach{ castDay in
                    let forDay = ForecastDay()
                    forDay.date = castDay.date
                    forDay.dateEpoch = castDay.dateEpoch ?? 0.0
                let day = Day()
                day.avghumidity = castDay.day?.avghumidity ?? 0.0
                day.maxtempC = castDay.day?.maxtempC ?? 0.0
                day.maxtempF = castDay.day?.maxtempF ?? 0.0
                day.mintempC = castDay.day?.mintempC ?? 0.0
                day.mintempF = castDay.day?.mintempF ?? 0.0
                day.avgtempC = castDay.day?.avgtempC ?? 0.0
                day.avgtempF = castDay.day?.avgtempF ?? 0.0
                day.maxwindMph = castDay.day?.maxwindMph ?? 0.0
                day.maxwindKph = castDay.day?.maxwindKph ?? 0.0
                day.totalprecipMm = castDay.day?.totalprecipMm ?? 0.0
                day.totalprecipIn = castDay.day?.totalprecipIn ?? 0.0
                day.avgvisKm = castDay.day?.avgvisKm ?? 0.0
                day.avgvisMiles = castDay.day?.avgvisMiles ?? 0.0
                day.avghumidity = castDay.day?.avghumidity ?? 0.0
                day.uv = castDay.day?.uv ?? 0.0
                
                
                let conditionDay = Condition()
                conditionDay.code = castDay.day?.condition?.code ?? 0.0
                conditionDay.icon = castDay.day?.condition?.icon
                conditionDay.text = castDay.day?.condition?.text
                
                day.condition = conditionDay
                forDay.day = day
                
                let astro = Astro()
                    astro.moonrise = castDay.astro?.moonrise
                    astro.moonset = castDay.astro?.moonset
                    astro.sunset = castDay.astro?.sunset
                    astro.sunrise = castDay.astro?.sunrise
                
                forDay.astro = astro
                
                forecastDay.append(forDay)
            }
            
            forecast.forecastDay  = forecastDay
            wheatherModel.forecast = forecast

            let realm = try! Realm()
            try! realm.write {
                realm.add(forecast.forecastDay)
                wheatherModel.forecast = forecast
                realm.add(wheatherModel)
            }
            completion(models)
        }, error: { print("Error response wheather")})
    }
    
}
