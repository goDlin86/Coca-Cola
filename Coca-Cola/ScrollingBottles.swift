//
//  ScrollingBottles.swift
//  Coca-Cola
//
//  Created by Денис on 29.12.2020.
//

import SwiftUI

struct ScrollingBottles: View {
    @State var scrollOffset: CGFloat
    @State var dragOffset: CGFloat
    
    @State var activeBottle: Int = 0
    
    var selectedType: Int
    
    var count: Int
    var itemWidth: CGFloat
    var itemSpacing: CGFloat
   
    let contentWidth: CGFloat
    let screenWidth: CGFloat
    
    init(count: Int, itemWidth: CGFloat, itemSpacing: CGFloat, selectedType: Int) {
        self.count = count
        self.itemWidth = itemWidth
        self.itemSpacing = itemSpacing
        self.selectedType = selectedType

        self.contentWidth = CGFloat(count) * itemWidth + CGFloat(count - 1) * itemSpacing
        self.screenWidth = 500 //UIScreen.main.bounds.width

        let initialOffset = (contentWidth/2.0) - (screenWidth/2.0) + ((screenWidth - itemWidth) / 2.0)

        self._scrollOffset = State(initialValue: initialOffset)
        self._dragOffset = State(initialValue: 0)
    }
    
    var body: some View {
        HStack {
            ForEach(0..<bottles.count) { i in
                ItemView(bottle: bottles[i], show: i == activeBottle) {
                    if i == 0 {
                        Bottle(color: items[selectedType].color)
                            //.rotationEffect(.degrees(-4))
                            .padding(20)
                            .frame(width: itemWidth, height: 2.5 * itemWidth)
                    } else if i == 1 {
                        Bottle2(color: items[selectedType].color)
                            .padding(20)
                            .frame(width: itemWidth, height: 2 * itemWidth)
                    } else {
                        Bottle1(color: items[selectedType].color)
                            //.rotationEffect(.degrees(5))
                            .padding(20)
                            .frame(width: itemWidth, height: 2 * itemWidth)
                    }
                }
            }
        }
        .offset(x: scrollOffset + dragOffset, y: 0)
        .gesture(DragGesture()
            .onChanged({ event in
                dragOffset = event.translation.width
                
                let center = scrollOffset + dragOffset + (screenWidth / 2.0) + (contentWidth / 2.0)

                var index = (center - (screenWidth / 2.0)) / (itemWidth + itemSpacing)
                
                if index.remainder(dividingBy: 1) > 0.5 {
                    index += 1
                } else {
                    index = CGFloat(Int(index))
                }
         
                index = min(index, CGFloat(count) - 1)
                index = max(index, 0)

                activeBottle = Int(count) - Int(index) - 1
            })
            .onEnded({ event in
                scrollOffset += event.translation.width
                dragOffset = 0

                let center = scrollOffset + (screenWidth / 2.0) + (contentWidth / 2.0)

                var index = (center - (screenWidth / 2.0)) / (itemWidth + itemSpacing)

                if index.remainder(dividingBy: 1) > 0.5 {
                    index += 1
                } else {
                    index = CGFloat(Int(index))
                }

                index = min(index, CGFloat(count) - 1)
                index = max(index, 0)

                activeBottle = Int(count) - Int(index) - 1

                let newOffset = index * itemWidth + (index - 1) * itemSpacing - (contentWidth / 2.0) + (screenWidth / 2.0) - ((screenWidth - itemWidth) / 2.0) + itemSpacing
                
                withAnimation {
                    scrollOffset = newOffset
                }
            })
        )
    }
}

struct ScrollingBottles_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingBottles(count: 3, itemWidth: 200, itemSpacing: 10, selectedType: 0)
    }
}
