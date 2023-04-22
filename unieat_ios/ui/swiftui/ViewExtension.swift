//
//  ViewExtension.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import Foundation
import SwiftUI
import Kingfisher
extension KFImage{
    
    func centerCropped() -> some View {
            GeometryReader { geo in
                self
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: geo.size.height)
                .clipped()
            }
        }
}
