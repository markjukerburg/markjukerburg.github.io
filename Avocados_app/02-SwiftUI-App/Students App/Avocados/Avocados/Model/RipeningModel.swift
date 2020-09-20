//
//  RipeningModel.swift
//  Avocados
//
//  Created by Adarsh n on 09/08/20.
//  Copyright © 2020 Adarsh n. All rights reserved.
//

import SwiftUI
// MARK: RIPENING MODEL

struct Ripening: Identifiable{
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
    
    
}
