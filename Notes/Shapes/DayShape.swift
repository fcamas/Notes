//
//  DayShape.swift
//  Notes
//
//  Created by Fredy Camas on 01/02/23.
//


import SwiftUI

struct DayShape: Shape {
    var cutRadiues: CGFloat = 5
    
    
    func path(in rect: CGRect) -> Path {
        return Path{ path in
            
            /// point of origin  x and y
            /// one line moving to the x direccion but not moving y at all
            path.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
            path.addLine(to: CGPoint(x: rect.width, y: rect.origin.y))
            // another line moving in the y cut by 1/4 direction but not moving x at all
            // add a halfcircle
            path.addLine(to: CGPoint(x: rect.width, y: rect.height/8))
            path.addArc(center: CGPoint(x: rect.width, y: rect.height/8 + cutRadiues),
                        radius: cutRadiues,
                        startAngle: Angle(degrees: -90),
                        endAngle: Angle(degrees: 90),
                        clockwise: true)
          
            
            //another line to the the full  y direction
            // now u should add a line to move to the x direccion but y steady
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.origin.x, y: rect.height))
            
            // a small line where to drow a small semicircle
            // semicirlce matching left side
            path.addLine(to: CGPoint(x: rect.origin.x, y:  rect.height/8))
          
            
            path.addArc(center: CGPoint(x: rect.origin.x, y:  rect.height/8 + cutRadiues), radius: cutRadiues,
                        startAngle: Angle(degrees: 90),
                        endAngle: Angle(degrees: -90),
                        clockwise: true)
            path.closeSubpath()
        }
    }
}


