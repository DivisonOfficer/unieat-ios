//
//  Font.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import Foundation
import SwiftUI


let FONT_PRETENDARD_BOLD = "Pretendard-Bold"
let FONT_PRETENDARD_MEDIUM = "Pretendard-Medium"
let FONT_PRETENDARD_REGULAR = "Pretendard-Regular"
let FONT_SLEI = "SLEIGothicTTF"


extension Text{
    func font(_ weight: Font.Weight, _ size: CGFloat) -> some View{
        
        var font: String
        
        switch(weight){
        case .bold: font = FONT_PRETENDARD_BOLD
        case .regular: font = FONT_PRETENDARD_REGULAR
        default: font = FONT_PRETENDARD_MEDIUM
        }
        
        
        return self.font(.custom(font, size: size)).fontWeight(weight)
    }
    
    func fontSL(_ weight: Font.Weight = .regular, size: CGFloat) -> some View{
        return self.font(.custom(FONT_SLEI, size:size)).fontWeight(weight)
    }
    
}


struct Font_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Text("폰트 테스트 Font Test").font(.bold, 40.sp)
            Text("폰트 테스트 Font Test").font(.medium, 40.sp)
            Text("폰트 테스트 Font Test").font(.regular, 40.sp)
            Text("폰트 테스트 Font Test").fontSL(size: 40.sp)
            Text("폰트 테스트 Font Test").fontSL(.bold, size: 40.sp)
         
        
        }
    }
}
