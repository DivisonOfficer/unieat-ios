//
//  ShareMenuView.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import SwiftUI

struct ShareMenuView: View {
    
    let onClickShare: ()->Void
    let onClickBookmark: ()->Void
    
    var body: some View {
        HStack(spacing:24.dp){
            Spacer()
            Button{
                onClickShare()
            }label:{
                Image(.icShare)
            }
            
            Button{
                onClickBookmark()
            }label:{
                Image(.icBookmark)
            }
        }
        .padding(.horizontal,20.dp)
        .padding(.top,12.dp)
        .padding(.bottom,45.dp)
    }
}

struct ShareMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ShareMenuView{
            
        }onClickBookmark: {
            
        }
    }
}
