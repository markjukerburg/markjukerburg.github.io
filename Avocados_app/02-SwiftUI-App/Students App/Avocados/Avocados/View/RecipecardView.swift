//
//  RecipecardView.swift
//  Avocados
//
//  Created by Adarsh n on 03/08/20.
//  Copyright © 2020 Adarsh n. All rights reserved.
//

import SwiftUI
struct RecipecardView: View {
    
    //MARK:-PROPERTIES
    
    
    var recipe:Recipe
    var hapticImapct = UIImpactFeedbackGenerator(style: .heavy)

    @State private var showModal: Bool = false
    var body: some View {
        
        VStack(alignment: .leading,spacing: 0){
            //CARD IMAGE
            Image(recipe.image)
            .resizable()
            .scaledToFit()
            .overlay(
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName:
                            "bookmark")
               .font(Font.title.weight(.light))
                            .foregroundColor(Color.white)
                            .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"),radius: 2, x:0, y: 0)
                        
                            .padding(.trailing,20)
                            .padding(.top,22)
                       Spacer()
                    }
                }
                
        )
           
            
            VStack(alignment: .leading,spacing: 12){
                
                
                //Title
                Text(recipe.title)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenMedium"))
                .lineLimit(1)
                
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.body,design: .serif))
                    .foregroundColor(Color.gray)
                .italic()
                
                //RATES
               
                RecipeRatingView(recipe: recipe)
                
                //COOKING
                RecipeCookingView(recipe:recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
            
            
        }
        .background(Color.white)
       .cornerRadius(12)
    .shadow(color:Color("ColorBlackTransparentLight"),radius: 8,x: 0, y: 0)
        //tap to show details present in RECIPE DETAIL VIEW
        .onTapGesture{
            self.hapticImapct.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal){
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipecardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipecardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
