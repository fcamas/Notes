//
//  Onboarding Shape.swift
//  Notes
//
//  Created by Fredy Camas on 01/03/23.
//

import SwiftUI

struct OnBoadingShape:Shape {
    var interval:CGFloat
    var amplitude: CGFloat = 100
    var baseline = UIScreen.main.bounds.height/2
    let universalSize = UIScreen.main.bounds
    
    func path(in rect: CGRect) -> Path {
       
        return Path{path in
            path.move(to: CGPoint(x: 0, y: baseline
            ))
            path.addCurve(
                to: CGPoint(x: 1*interval,y: baseline),
                control1: CGPoint(x: interval * (0.35),y: amplitude + baseline),
                control2: CGPoint(x: interval * (0.65),y: -amplitude + baseline)
            )
            path.addCurve(
                to: CGPoint(x: 2*interval,y: baseline),
                control1: CGPoint(x: interval * (1.35),y: amplitude + baseline),
                control2: CGPoint(x: interval * (1.65),y: -amplitude + baseline)
            )
           // path.addLine(to: CGPoint(x: 2*interval, y: universalSize.height))
           // path.addLine(to: CGPoint(x: 0, y: universalSize.height))
            
        }
    }
    
}
