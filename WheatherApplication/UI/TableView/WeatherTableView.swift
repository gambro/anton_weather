//
//  WeatherTableView.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/10/18.
//  Copyright © 2018 farxat60. All rights reserved.
//


import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherGeneralTableViewCell") as! WeatherGeneralTableViewCell
                guard let weather = items else { return cell }
        
        guard let icon = weather.first?.forecast?.forecastDay[index].day?.condition?.icon else { return cell }

                cell.cityLabel?.text = weather.first?.location?.name
                cell.pictureImageView?.sd_setImage(with: URL(string: kHttp + icon))
        cell.dateLabel.text = weather.first?.forecast?.forecastDay[index].date
                cell.temperatureLabel.text = String(format: "%.2f",
                                                    weather.first?.forecast?.forecastDay[index].day?.avgtempC ?? 0.0) + "º"
                cell.maxT.text = String(format: "%.2f",
                                        weather.first?.forecast?.forecastDay[index].day?.maxtempC ?? 0.0) + " max tº"
                cell.minT.text = String(format: "%.2f",
                                        weather.first?.forecast?.forecastDay[index].day?.mintempC ?? 0.0) + " min tº"
        guard let astro = weather.first?.forecast?.forecastDay[index].astro else { return cell }
                cell.moonRise.text = astro.moonrise! + " moonrise"
                cell.moonSet.text = astro.moonset! + " moonset"
                cell.sunRise.text = astro.sunrise! + " sunrise"
                cell.sunSet.text = astro.sunset! + " sunset"

        return cell;

    }

}



