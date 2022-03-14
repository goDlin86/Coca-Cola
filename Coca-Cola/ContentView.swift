//
//  ContentView.swift
//  Coca-Cola
//
//  Created by Денис on 23.12.2020.
//

import SwiftUI

struct CocaColaType {
    var title: String
    var color: Color
}

let items = [
    CocaColaType(title: "Coke", color: Color(red: 244/255, green: 0, blue: 3/255, opacity: 1)),
    CocaColaType(title: "Sprite", color: Color(red: 34/255, green: 149/255, blue: 55/255, opacity: 1))
]

struct BottleType {
    var title: String
    var subtitle: String
    var price: String
    //var content: AnyView
}

let bottles = [
    BottleType(title: "CHRISTMAS", subtitle: "TREE", price: "$23.00"),
    BottleType(title: "CHUBBY", subtitle: "CHRISTMAS", price: "$32.00"),
    BottleType(title: "ICE", subtitle: "EDGE", price: "$28.00")
]

struct ContentView: View {
    @State var selectedType = 0
    
    @Namespace var animation
    
    var body: some View {
        VStack {
            MenuView(selected: $selectedType, items: items, animation: animation)
                .padding()
            
            Text("Choose your Favorite Bottle")
                .font(.title2)
                .bold()
                .padding(.bottom, 15)
            
            ScrollingBottles(count: 3, itemWidth: 200, itemSpacing: 10, selectedType: selectedType)
        }
        .frame(height: 800)
        .background(items[selectedType].color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
