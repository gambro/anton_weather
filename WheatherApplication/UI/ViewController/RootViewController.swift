//
//  RootViewController.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/11/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import UIKit
import SDWebImage
import RealmSwift

class RootViewController: UIViewController, PickerViewProtocol {

    
    var index = 0
    
    var dataSource = GetWheather()
    var weatherModel: WeatherApixeModel?
    
    @IBOutlet weak var weatherCollectionView: UICollectionView!
    @IBOutlet weak var datePicker: UIPickerView!
    @IBOutlet weak var weatherTableView: UITableView!
    
    var pickerOficinas: DatePicker!
    var propertyThatReferencesThisViewController: PickerViewProtocol?
    
    var weatherEntity: WeatherApixeEntity!
    let realm = try! Realm()
    var items: Results<WeatherApixeEntity>!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.barTintColor = UIColor.getCustomNavigationBarColor()
        pickerOficinas = DatePicker()
        datePicker.delegate = pickerOficinas
        datePicker.dataSource = pickerOficinas
        pickerOficinas.propertyThatReferencesThisViewController = self
        
        self.weatherTableView.register(UINib(nibName: WeatherGeneralTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: WeatherGeneralTableViewCell.identifier)

        loadData(day: 1)

    }
    
    func pass(data: Int) {
        loadData(day:data)
    }
    
    private func loadData(day:Int) {
        dataSource.getWheather(days: day, completion: {[weak self] item in
            self?.weatherModel = item
            self?.items = self?.realm.objects(WeatherApixeEntity.self)
            self?.weatherCollectionView.reloadData()
            self?.weatherTableView.reloadData()
            
        })
        items = realm.objects(WeatherApixeEntity.self)
        self.weatherCollectionView.reloadData()
        self.weatherTableView.reloadData()
    }
}
