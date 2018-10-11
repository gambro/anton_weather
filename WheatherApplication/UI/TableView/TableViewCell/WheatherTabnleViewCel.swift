//
//  MainViewController.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import UIKit

class WeatherGeneralTableViewCell: UITableViewCell, ReusableViewCell {

    @IBOutlet weak var cityLabel: UILabel?
    @IBOutlet weak var pictureImageView: UIImageView?
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var maxT: UILabel!
    @IBOutlet weak var minT: UILabel!
    @IBOutlet weak var moonRise: UILabel!
    @IBOutlet weak var moonSet: UILabel!
    @IBOutlet weak var sunRise: UILabel!
    @IBOutlet weak var sunSet: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        borderInCell(uiImage: pictureImageView!)
    }
  
}
