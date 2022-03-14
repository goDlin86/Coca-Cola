//
//  ItemView.swift
//  Coca-Cola
//
//  Created by Денис on 28.12.2020.
//

import SwiftUI

struct ItemView<Content: View>: View {
    let content: Content
    let bottle: BottleType
    
    let show: Bool
    
    init(bottle: BottleType, show: Bool, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.bottle = bottle
        self.show = show
    }
    
    var body: some View {
        ZStack {
            content
            
            if show {
                VStack(alignment: .leading) {
                    Text("CocaCola")
                    Text(bottle.title)
                        .font(.title2)
                        .bold()
                    Text(bottle.subtitle)
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.top, -12.0)
                    Text(bottle.price)
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(red: 253/255, green: 225/255, blue: 9/255, opacity: 1)))
                }
                .offset(x: 65, y: -180)
            }
        }
        .scaleEffect(show ? 1 : 0.7)
        .opacity(show ? 1 : 0.6)
        .animation(.linear)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(bottle: BottleType(title: "CHRISTMAS", subtitle: "TREE", price: "$23.00"), show: true) {
            Bottle(color: Color(red: 244/255, green: 0, blue: 3/255, opacity: 1))
                .padding(20)
                .frame(width: 200, height: 500)
        }
    }
}
