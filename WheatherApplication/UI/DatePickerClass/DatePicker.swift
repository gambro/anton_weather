//
//  DatePicker.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/8/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import UIKit
import RealmSwift

class DatePicker: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var numberOfDay = [1,2,3,4,5,6,7,8,9,10] // standard value up to 10 days in API

    var propertyThatReferencesThisViewController:PickerViewProtocol?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,    numberOfRowsInComponent component: Int) -> Int {
        return numberOfDay.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(numberOfDay[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(numberOfDay[row])
        propertyThatReferencesThisViewController?.pass(data: numberOfDay[row])
        
    }
    
}

