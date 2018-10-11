//
//  MainViewController.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/6/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import UIKit

class MainViewController: RootViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.weatherTableView.register(UINib(nibName: WeatherGeneralTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: WeatherGeneralTableViewCell.identifier)
        
        addTapGesture()
    }
    

    @IBAction func selectedDayButton(_ sender: Any) {
        datePicker.isHidden = !datePicker.isHidden
    }
    
  private func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.selectedDayButton(_:)))
        tap.delegate = self as? UIGestureRecognizerDelegate // This is not required
        weatherTableView.addGestureRecognizer(tap)
    }
    
}


