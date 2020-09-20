//
//  RecipeModel.swift
//  Avocados
//
//  Created by Adarsh n on 03/08/20.
//  Copyright © 2020 Adarsh n. All rights reserved.
//

import SwiftUI
// MARK: -RECIPE MODEl

/*struct Recipe: Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var intruction: [String]
    var ingredients: [String]
    
    
    
}*/
struct Recipe: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var rating: Int
  var serves: Int
  var preparation: Int
  var cooking: Int
  var instructions: [String]
  var ingredients: [String]
}

