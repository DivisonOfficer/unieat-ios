//
//  LoginButton.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import SwiftUI


struct LoginButton: View {
    var text: String
    var icon: UniImage
    var color: UniColor
    
    let action: ()->Void
    
    var body: some View {
        VStack {
            Button(action: action) {
                HStack {
                    Image(icon.rawValue)
                        .resizable()
                        .frame(width: 20.dp, height: 20.dp)
                        .padding(.leading, 15.dp)
                    
                    Spacer()
                    
                    Text(text)
                        .font(.system(size: 15.sp, weight: .medium))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 45.dp, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 40.dp).foregroundColor(color))
            }
        }
        .padding(.horizontal, 38.dp)
    }
}
