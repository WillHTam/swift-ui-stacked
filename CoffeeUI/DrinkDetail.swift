//
//  DrinkDetail.swift
//  CoffeeUI
//
//  Created by William on 12/18/19.
//  Copyright © 2019 William T. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    var drink:Drink
    
    var body: some View {
        List {
            ZStack (alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 15)
                HStack{
                    VStack(alignment: .leading, spacing: 8.0){
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                        .padding(.leading)
                        .padding(.bottom)
                    Spacer()
                }
            }
                .listRowInsets(EdgeInsets())
                .padding(.bottom)
            VStack(alignment: .leading) {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 50)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct OrderButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Order Something")
        }
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.headline)
            .cornerRadius(10)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[1])
    }
}
