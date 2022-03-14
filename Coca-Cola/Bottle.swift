//
//  Bottle.swift
//  Coca-Cola
//
//  Created by Денис on 23.12.2020.
//

import SwiftUI

struct Bottle: View {
    var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: width/2 - 0.05 * width, y: 0))
                    path.addLine(to: CGPoint(x: width/2 + 0.05 * width, y: 0))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.1 * width, y: 0.02 * height), control: CGPoint(x: width/2 + 0.1 * width, y: 0))
                    path.addLine(to: CGPoint(x: width/2 + 0.3 * width, y: 0.8 * height))
                    path.addLine(to: CGPoint(x: width/2 + 0.3 * width, y: 0.9 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.15 * width, y: height), control: CGPoint(x: width/2 + 0.3 * width, y: height))
                    path.addLine(to: CGPoint(x: width/2 - 0.15 * width, y: height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.3 * width, y: 0.9 * height), control: CGPoint(x: width/2 - 0.3 * width, y: height))
                    path.addLine(to: CGPoint(x: width/2 - 0.3 * width, y: 0.8 * height))
                    path.addLine(to: CGPoint(x: width/2 - 0.1 * width, y: 0.02 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.05 * width, y: 0), control: CGPoint(x: width/2 - 0.1 * width, y: 0))
                }
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.6), radius: 5, x: -10, y: 1)
                
                VStack {
                    color.opacity(0.8)
                        .frame(height: 0.25 * height)
                        .blendMode(.darken)
                    Spacer()
                }
            }
        }
    }
}

struct Bottle1: View {
    var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: width/2 - 0.1 * width, y: 0))
                    path.addLine(to: CGPoint(x: width/2 + 0.1 * width, y: 0))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.15 * width, y: 0.05 * height), control: CGPoint(x: width/2 + 0.15 * width, y: 0))
                    path.addLine(to: CGPoint(x: width/2 + 0.15 * width, y: 0.25 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.2 * width, y: 0.3 * height), control: CGPoint(x: width/2 + 0.15 * width, y: 0.28 * height))
                    path.addLine(to: CGPoint(x: width/2 + 0.3 * width, y: 0.35 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.35 * width, y: 0.4 * height), control: CGPoint(x: width/2 + 0.35 * width, y: 0.375 * height))
                    path.addLine(to: CGPoint(x: width/2 + 0.35 * width, y: 0.9 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.25 * width, y: height), control: CGPoint(x: width/2 + 0.35 * width, y: height))
                    path.addLine(to: CGPoint(x: width/2 - 0.25 * width, y: height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.35 * width, y: 0.9 * height), control: CGPoint(x: width/2 - 0.355 * width, y: height))
                    path.addLine(to: CGPoint(x: width/2 - 0.35 * width, y: 0.4 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.3 * width, y: 0.35 * height), control: CGPoint(x: width/2 - 0.35 * width, y: 0.37 * height))
                    path.addLine(to: CGPoint(x: width/2 - 0.2 * width, y: 0.3 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.15 * width, y: 0.25 * height), control: CGPoint(x: width/2 - 0.15 * width, y: 0.275 * height))
                    path.addLine(to: CGPoint(x: width/2 - 0.15 * width, y: 0.05 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.1 * width, y: 0), control: CGPoint(x: width/2 - 0.15 * width, y: 0))

               }
               .fill(Color.white)
               .shadow(color: Color.black.opacity(0.6), radius: 5, x: -10, y: 1)
                
                VStack {
                    color.opacity(0.8)
                        .frame(height: 0.25 * height)
                        .blendMode(.darken)
                    Spacer()
                }
            }
        }
    }
}

 

struct Bottle2: View {
    var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
        
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: width/2 - 0.05 * width, y: 0))
                    path.addLine(to: CGPoint(x: width/2 + 0.05 * width, y: 0))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.15 * width, y: 0.05 * height), control: CGPoint(x: width/2 + 0.15 * width, y: 0))
                    path.addLine(to: CGPoint(x: width/2 + 0.15 * width, y: 0.25 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.2 * width, y: 0.3 * height), control: CGPoint(x: width/2 + 0.15 * width, y: 0.29 * height))
                    path.addLine(to: CGPoint(x: width/2 + 0.35 * width, y: 0.33 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.49 * width, y: 0.5 * height), control: CGPoint(x: width/2 + 0.52 * width, y: 0.37 * height))
                    path.addLine(to: CGPoint(x: width/2 + 0.4 * width, y: 0.9 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 + 0.25 * width, y: height), control: CGPoint(x: width/2 + 0.37 * width, y: height))
                    path.addLine(to: CGPoint(x: width/2 - 0.25 * width, y: height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.4 * width, y: 0.9 * height), control: CGPoint(x: width/2 - 0.37 * width, y: height))
                    path.addLine(to: CGPoint(x: width/2 - 0.49 * width, y: 0.5 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.35 * width, y: 0.33 * height), control: CGPoint(x: width/2 - 0.52 * width, y: 0.37 * height))
                    path.addLine(to: CGPoint(x: width/2 - 0.2 * width, y: 0.3 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.15 * width, y: 0.25 * height), control: CGPoint(x: width/2 - 0.15 * width, y: 0.29 * height))
                    path.addLine(to: CGPoint(x: width/2 - 0.15 * width, y: 0.05 * height))
                    path.addQuadCurve(to: CGPoint(x: width/2 - 0.05 * width, y: 0), control: CGPoint(x: width/2 - 0.15 * width, y: 0))
                }
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.6), radius: 5, x: -10, y: 1)
                
                VStack {
                    color.opacity(0.8)
                        .frame(height: 0.25 * height)
                        .blendMode(.darken)
                    Spacer()
                }
            }
       }
   }
}

struct Bottle_Previews: PreviewProvider {
    static var previews: some View {
        Bottle2(color: .red).frame(width: 250, height: 500)
    }
}
