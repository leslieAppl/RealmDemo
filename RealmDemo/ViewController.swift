//
//  ViewController.swift
//  RealmDemo
//
//  Created by leslie on 11/3/19.
//  Copyright © 2019 leslie. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        let myCat = Cat()
        myCat.name = "Moe"
        myCat.color = "White"
        myCat.gender = "Male"
        
        try! realm.write {
            realm.add(myCat)
        }
        
        let results = realm.objects(Cat.self).filter("name = 'Moe'")
        
        print(results.count)
        
        
    }


}

