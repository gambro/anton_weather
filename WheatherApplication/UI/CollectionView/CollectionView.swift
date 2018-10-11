//
//  CollectionView.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/7/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import Foundation
import UIKit


extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let item = items  else { return 0 }
        return item.first?.forecast?.forecastDay.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = weatherCollectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCollectionViewCell", for: indexPath) as! WeatherCollectionViewCell
        guard let model = items.first else { return cell }
        cell.cityLabel.text = model.location?.name
        cell.dateLabel.text = model.forecast?.forecastDay[indexPath.item].date
        cell.temperatureLabel.text = String(format: "%.1f", model.forecast?.forecastDay[indexPath.item].day?.avgtempC ?? 0.0) + "º"
        guard let icon = model.forecast?.forecastDay[indexPath.item].day?.condition?.icon  else { return cell }
        cell.uiImageWeather.sd_setImage(with: URL(string: kHttp + icon))
        cell.configureCell()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            index = indexPath.item
            weatherCollectionView.scrollToItem(at: indexPath, at: .right, animated: true)

            weatherTableView.reloadData()
        }

    
}


