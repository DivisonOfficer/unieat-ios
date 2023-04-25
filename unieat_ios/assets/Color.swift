//
//  Color.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import SwiftUI

enum UniColor: String{
    case main = "colorMain"
    case sub = "colorSub"
    case white = "colorWhite"
    case error = "colorError"
    case kakao = "colorKakao"
    case red20 = "colorRed20"
    case gray59 = "colorGray59"
    case grayBD = "colorGrayBD"
    case gray19 = "colorGray19"
    case onMain = "colorOnMain"
}

extension View{
    func foregroundColor(_ color: UniColor) -> some View{
        return self.foregroundColor(Color(color))
    }
}


extension Color{
    init(_ color: UniColor){
        self.init(color.rawValue)
    }
}
