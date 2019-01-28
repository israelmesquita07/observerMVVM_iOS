//
//  Model.swift
//  observerMVVM
//
//  Created by Israel Mesquita on 28/01/2019.
//  Copyright © 2019 israel. All rights reserved.
//

import Foundation

class Counter:NSObject {
    @objc dynamic var counter: Int
    
    init(counter:Int) {
        self.counter = counter
    }
}
