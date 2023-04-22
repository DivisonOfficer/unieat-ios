//
//  ArticleThumb.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import SwiftUI
import Kingfisher

struct ArticleThumb: View {
    
    
    let title: String
    let tags: String
    let imageUrl: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
            Text(title)
                .font(.bold,19.sp)
                .foregroundColor(.white)
            Rectangle()
                .fill(Color.white)
                .frame(height: 1)
            Text(tags)
                .font(.regular,13.sp)
                .lineLimit(1)
                
                .foregroundColor(.white)
        }
        
        .padding(.horizontal,15.dp)
            .padding(.bottom,12.dp)
            .frame(maxWidth: .infinity)
            .aspectRatio(0.75, contentMode: .fit)
            .background{
                KFImage(URL(string: imageUrl))
                    .centerCropped()
        
                    .cornerRadius(4.dp)
                  
            }
    
    }
}

struct ArticleThumb_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            ArticleThumb(
                title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://c1.wallpaperflare.com/preview/994/316/917/coffee-starbucks-logo-starbucks-logo.jpg"
            )

            ArticleThumb(
                title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"
            )

         
            
        }.padding(.horizontal,15.dp)
    }
}
