//
//  DashShape.swift
//  Notes
//
//  Created by Fredy Camas on 01/05/23.
//

import SwiftUI


struct DownwardTriangleWithBrokenLine1: Shape {
    let lineWidth: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Define the width and height of the triangles
        let triangleWidth: CGFloat = 15
        let triangleHeight: CGFloat = 15
        
        // Define the spacing between the broken lines
        let spacing: CGFloat = 5
        
        // Draw the downward pointing triangle
        path.move(to: CGPoint(x: rect.midX, y: rect.minY + triangleHeight))
        path.addLine(to: CGPoint(x: rect.midX + triangleWidth/2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX - triangleWidth/2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + triangleHeight))
        // Draw the vertical broken lines
        let lineStartY = rect.minY + triangleHeight
        let lineEndY = rect.minY + rect.height - triangleHeight/2
        for y in stride(from: lineStartY + spacing, to: lineEndY - triangleHeight, by: spacing * 2) {
            path.move(to: CGPoint(x: rect.midX, y: y))
            path.addLine(to: CGPoint(x: rect.midX, y: y + spacing))
        }
        
        // Draw the upward pointing triangle at the bottom, connected to the tip of the line
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + rect.height - triangleHeight))
        path.addLine(to: CGPoint(x: rect.midX - triangleWidth/2, y: rect.minY + rect.height))
        path.addLine(to: CGPoint(x: rect.midX + triangleWidth/2, y: rect.minY + rect.height))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + rect.height - triangleHeight))
       
        return path
    }
    
    func style(strokeWidth: CGFloat, color: Color) -> some View {
        self.stroke(color, lineWidth: strokeWidth)
    }
}
