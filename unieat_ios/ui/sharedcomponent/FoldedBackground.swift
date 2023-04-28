//
//  FoldedBackground.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/27.
//

import SwiftUI

struct FoldedBackground: View {
    var body: some View {
        Color.white
            .mask(FoldHoleShape())
    }
}

struct FoldedBackground_Previews: PreviewProvider {
    static var previews: some View {
        FoldedBackground()
            .padding(20.dp)
            .background{
                Color.green
            }
    }
}

struct FoldHoleShape: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 40.dp, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: 40.dp))
        path.closeSubpath()

        return path
    }
    
}
