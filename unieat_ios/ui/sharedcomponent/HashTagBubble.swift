//
//  HashTagBubble.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import SwiftUI

struct HashTagBubble: View {
    
    let text: String
    let isActive: Bool
    
    var body: some View {
        Text("#\(text)")
            .font(.medium,13.sp)
            .foregroundColor(isActive ? .white : .main)
            .padding(.vertical,11.dp)
            .padding(.horizontal,15.dp)
            .background{
                RoundedRectangle(cornerRadius: 30.dp)
                    .foregroundColor(isActive ? .main : .onMain)
            }
            
    }
}

struct HashTagBubble_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            HashTagBubble(text: "중식", isActive: false)
            HashTagBubble(text: "중식", isActive: true)
            HashTagBubble(text: "중식", isActive: false)
        
        }
    }
}
