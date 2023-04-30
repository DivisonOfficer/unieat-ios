//
//  FrameSize.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/29.
//

import Foundation
import SwiftUI

extension View {
    func frameSize(height: Binding<CGFloat> = .constant(0), display: Bool = true) -> some View {
        modifier(FrameSize(height: height, display: display))
    }
    
}

private struct FrameSize: ViewModifier {
    
    
    
    static let color: Color = .blue
    
    @Binding var height: CGFloat
    var display: Bool = true
    
    func body(content: Content) -> some View {
        content
            .overlay(GeometryReader(content: overlay(for:)))
    }
    
    func overlay(for geometry: GeometryProxy) -> some View {
        ZStack(
            alignment: Alignment(horizontal: .trailing, vertical: .top)
        ) {
            if display{
                Rectangle()
                    .strokeBorder(
                        style: StrokeStyle(lineWidth: 1, dash: [5])
                    )
                    .foregroundColor(FrameSize.color)
                Text("\(Int(geometry.size.width))x\(Int(geometry.size.height))")
                    .font(.caption2)
                    .foregroundColor(FrameSize.color)
                    .padding(2)
                    .onAppear{
                        height = geometry.size.height
                    }
            }
            
        }
    }
}
