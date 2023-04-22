//
//  ShopInfoComponent.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import Foundation
import SwiftUI


extension ShopInfoPage{
    func r14T(_ text: String) -> some View{
        Text(text)
            .font(.regular,14.sp)
    }
    
    func r14TMenuPair(_ menuText: String, price: Int) -> some View{
        HStack{
            r14T(menuText)
                .foregroundColor(.gray59)
            Spacer()
            r14T("\(price) 원")
                .foregroundColor(.gray59)
            
        }.overlay{
            Color(.grayBD).frame(width:48.dp, height:0.5.dp)
        }
    }
}

