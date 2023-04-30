//
//  ArticleThumbGrid.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/24.
//

import SwiftUI

struct ArticleThumbGrid: View {
    
    let articles: [ArticleThumbData]
    
    
    var body: some View {
        LazyVGrid(columns: [.init(.adaptive(minimum: 150.dp))], spacing: 10.dp){
            ForEach(articles, id:\.self){
                data in
                ArticleThumb(thumbData: data)
            }
        }
    }
}

struct ArticleThumbGrid_Previews: PreviewProvider {
    static var previews: some View {
        ArticleThumbGrid(
            articles: [
                ArticleThumbData(title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
                ArticleThumbData(title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
                ArticleThumbData(title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")
            ]
        )
    }
}
