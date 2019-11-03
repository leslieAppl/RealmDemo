//
//  Cat.swift
//  RealmDemo
//
//  Created by leslie on 11/3/19.
//  Copyright © 2019 leslie. All rights reserved.
//

import Foundation
import RealmSwift

class Cat: Object {
    @objc dynamic var name: String?
    @objc dynamic var color: String?
    @objc dynamic var gender: String?
}
