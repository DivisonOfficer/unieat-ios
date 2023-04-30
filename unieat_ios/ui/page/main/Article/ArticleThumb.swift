//
//  ArticleThumb.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import SwiftUI
import Kingfisher

struct ArticleThumb: View {
    
    
    let thumbData: ArticleThumbData
    
    
    var body: some View {
        GeometryReader{
            metric in
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                Text(thumbData.title)
                    .fontSL(size: 6.sp + 13.sp * metric.size.width / 150.dp)
                    .foregroundColor(.white)
                Rectangle()
                    .fill(Color.white)
                    .frame(height: 1)
                Text(thumbData.tags)
                    .font(.regular,11.sp + 2 * metric.size.width / 150.dp)
                    .lineLimit(1)
                    
                    .foregroundColor(.white)
            }
            
        }
       
        .padding(.horizontal,15.dp)
            .padding(.bottom,12.dp)
            .frame(maxWidth: .infinity)
            .aspectRatio(0.75, contentMode: .fit)
            .background{
                KFImage(URL(string: thumbData.imageUrl))
                    .centerCropped()
        
                    .cornerRadius(4.dp)
                  
            }
    
    }
}

struct ArticleThumb_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            HStack{
                ArticleThumb(
                   thumbData: ArticleThumbData(title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")
                )
                
                ArticleThumb(
                   thumbData: ArticleThumbData(title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")
                )
                
                
            }.padding(.horizontal,15.dp)
            ArticleThumb(
               thumbData: ArticleThumbData(title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")
            )
        }
    }
}
