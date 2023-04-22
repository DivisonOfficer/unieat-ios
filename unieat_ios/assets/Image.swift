//
//  Image.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import Foundation
import SwiftUI

enum UniImage: String{
    case icUnieatLogo
    case icKakao
    case icApple
    case icBookmark
    case icShare
}


extension Image{
    init(_ image: UniImage){
        self.init(image.rawValue)
    }
}
