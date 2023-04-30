//
//  MainArticlePage.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/29.
//

import SwiftUI
import SwiftUIPager

struct MainArticlePage: View {
    
    @State var articleThumbs = [ArticleThumbData(title: "차츰", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
                         ArticleThumbData(title: "차츰2", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
                         ArticleThumbData(title: "차츰3", tags: "#라면 #먹고 #갈래 #요", imageUrl: "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")]
    
    
    var body: some View {
        VStack{
            appbar
            PagerView(articleThumbs: $articleThumbs)
        }
    }
    
    var appbar: some View{
        HStack{
            VStack(alignment: .leading){
                Text("아티클")
                    .fontSL(size: 23.sp)
                    .foregroundColor(.gray19)
                
                Text("대학생 에디터들이 작성한\n찐 맛집 아티클을 확인해보세요!")
                    .font(.regular,17.sp)
                    .foregroundColor(.gray59)
                    .padding(.top,17.dp)
                
              
            }
            Spacer()
            Image(.icArticleAppbar)
                .padding(.top, 16.dp)
        }.padding(.horizontal, 21.dp)
            .padding(.top,64.dp)
       
    }
}

struct MainArticlePage_Previews: PreviewProvider {
    static var previews: some View {
        MainArticlePage()
    }
}


struct PagerView: View {
    @Binding var articleThumbs: [ArticleThumbData]
    @State private var currentIndex = 0
    @StateObject var page: Page = .first()
    
    var body: some View {
        GeometryReader { geometry in
            Pager(page: page, data: articleThumbs, id: \.title){
                article in
                ArticleThumb(thumbData: article)
            }
            .singlePagination(ratio: 0.33, sensitivity: .custom(0.2))
                .preferredItemSize(CGSize(width: geometry.size.width - 60.dp, height: geometry.size.height))
                .interactive(scale: 0.9)
                .itemSpacing(10)
        }
    }
}
