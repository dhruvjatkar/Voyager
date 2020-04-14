//
//  Icon.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 4/6/20.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//

import Foundation

struct Icon: Identifiable{
    
    let id = UUID()
    var systemIcon: String
}

var notes = [
Icon(systemIcon: "j1")
]
