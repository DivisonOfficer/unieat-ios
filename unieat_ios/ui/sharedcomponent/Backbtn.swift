//
//  Backbtn.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/29.
//

import Foundation
import SwiftUI


struct Backbtn: View{
    
    let page: String
    let onClick: ()->Void
    
    
    var body: some View{
        HStack{
            Button{
                onClick()
            }label:{
                
                HStack{
                    Image(.icBackbtn)
                    Text(page)
                        .fontSL(size: 23.sp)
                        .foregroundColor(.black)
                }
            }
            Spacer()
        }.padding(.top,64.sp)
            .padding(.horizontal, 21.dp)
    }
}
