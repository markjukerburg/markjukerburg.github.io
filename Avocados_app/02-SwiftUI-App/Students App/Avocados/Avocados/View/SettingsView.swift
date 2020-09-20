//
//  SettingsView.swift
//  Avocados
//
//  Created by Adarsh n on 01/08/20.
//  Copyright © 2020 Adarsh n. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
   // MARK :- PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    var body: some View {
   
        VStack(alignment: .center,spacing: 0)
        {
            VStack(alignment:.center,spacing:5){
                Image("avocado")
                .resizable()
                .scaledToFit()
                .padding(.top)
                    .frame(width: 100,height: 100,alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"),radius:8,x:0,y:4)
                Text("Avocados".uppercased())
                    .font(.system(.title,design:.serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }//Second Vstack end here
        .padding()
            
            Form{
                //MARK: - SECTION #1
                Section(header: Text("General Setting"))
                {
                    Toggle(isOn: $enableNotification)
                    {
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh)
                    {
                        Text("Background refresh")
                    }
                    
                }// section one end here
                //MARK: - SECTION #2
                Section(header: Text("Application"))
                {//enableNotification is true here if false it will go to else part.
                    if enableNotification
                    {
                        HStack{
                            Text("Product").foregroundColor(Color.gray)
                                Spacer()
                             Text("Avocado Recipes")
                        }
                        HStack{
                                              Text("Compatability").foregroundColor(Color.gray)
                                                  Spacer()
                                                  Text("iphone & ipad")
                                                            }
                                          HStack{
                                                                Text("Developer").foregroundColor(Color.gray)
                                                                    Spacer()
                                                                 Text("Adarsh N")
                                                            }
                                          HStack{
                                                                                  Text("Designer").foregroundColor(Color.gray)
                                                                                      Spacer()
                                                                                   Text("ADARSH N ROY")
                                                              }
                                          HStack{
                                                                                                    Text("Website").foregroundColor(Color.gray)
                                                                                                        Spacer()
                                                                                                     Text("shakun.com")
                                                                                                }
                                          HStack{
                                                                Text("Version").foregroundColor(Color.gray)
                                                                    Spacer()
                                                                 Text("1.0.0")
                                                            }
                                          
                                          
                    }
                    
                    else {
                        HStack{
                            
                            Text("personal message")
                            Spacer()
                            Spacer()
                            Text("Kindness keeps the world afloat😉!")
                                .multilineTextAlignment(.center)
                        }//hstack end here
                    }//else end here
                  
                }//section 2 end here
                
                
            }//Form end here
            
        }//first vstack end here
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
