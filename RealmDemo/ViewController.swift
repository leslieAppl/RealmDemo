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
        
        myCat.name = "leslie"
        myCat.color = "blue"
        myCat.gender = "male"
        
        try! realm.write {
            realm.add(myCat)
        }
        
        let results = realm.objects(Cat.self).filter("name = 'Moe'")
        print(results)
        print("count: \(results.count)")
        print()
        
        let results2 = realm.objects(Cat.self)
        print(results2)
        print("count: \(results2.count)")
        
    }


}

