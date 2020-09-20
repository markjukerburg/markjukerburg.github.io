//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Adarsh n on 01/08/20.
//  Copyright © 2020 Adarsh n. All rights reserved.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    var ripeningStages:[Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators:false){
            VStack{
                Spacer()
                HStack(alignment: .center,spacing: 25){
                    ForEach(ripeningStages){
                         item in
                        RipeningView(ripening: item)
                    }
                    
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
