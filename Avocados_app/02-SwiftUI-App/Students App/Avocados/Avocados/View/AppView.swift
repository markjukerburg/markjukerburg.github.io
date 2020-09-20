//
//  AppView.swift
//  Avocados
//
//  Created by Adarsh n on 01/08/20.
//  Copyright © 2020 Adarsh n. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            
            //tab view
            AvocadosView()
                .tabItem({
                   Image("tabicon-branch")
                    Text("Avocados")
                })
            
            ContentView()
                .tabItem({
                 Image("tabicon-book")
                 Text("Recipes")
                })
            
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripeing")
                })
            SettingsView()
                .tabItem({
                   Image("tabicon-settings")
                    Text("Settings")
                    
                })
            
            
            
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
            
        }
        
        
        
    }

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
