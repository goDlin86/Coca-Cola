//
//  MenuView.swift
//  Coca-Cola
//
//  Created by Денис on 23.12.2020.
//

import SwiftUI

struct MenuView: View {
    @Binding var selected: Int
    
    var items: [CocaColaType]
    var animation: Namespace.ID
    
    var body: some View {
        HStack {
            ForEach(0..<items.count) { i in
                Text(items[i].title)
                    .font(.title)
                    .bold()
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        ZStack {
                            if selected == i {
                                Capsule().fill(Color.black.opacity(0.4))
                                    .matchedGeometryEffect(id: "Tab", in: animation)
                            }
                        }
                    )
                    .onTapGesture {
                        withAnimation() { selected = i }
                    }
            }
        }
        .padding(7)
        .background(
            Capsule().fill(Color.black.opacity(0.2))
        )
    }
}

struct MenuView_Previews: PreviewProvider {
    @Namespace static var animation
    
    static let items = [
        CocaColaType(title: "Coke", color: Color(red: 244/255, green: 0, blue: 3/255, opacity: 1)),
        CocaColaType(title: "Sprite", color: Color(red: 34/255, green: 149/255, blue: 55/255, opacity: 1))
    ]

    static var previews: some View {
        MenuView(selected: .constant(0), items: items, animation: animation)
            .padding()
            .background(Color(red: 244/255, green: 0, blue: 3/255, opacity: 1))
    }
}
