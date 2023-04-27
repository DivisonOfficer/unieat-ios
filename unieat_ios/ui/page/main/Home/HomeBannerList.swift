//
//  HomeBannerList.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/24.
//

import SwiftUI
import Kingfisher

struct HomeBannerList: View {
    var body: some View {
        VStack{
            searchBanner
                .padding(.top,40.dp)
            articleBanner
                .padding(.top,24.dp)
            eventBannerList
                .padding(.top,40.dp)
        }
    }
    
    
    var searchBanner: some View{
        VStack(alignment:.leading){
            Text("어떤 맛집이 필요하세요?")
                .font(.bold,21.sp)
            Image(.icSearchBanner)
        }
    }
    
    
    var articleBanner: some View{
        VStack{
            bannerTitle(
                title:"여긴 어때 ~ ?",
                description: "유니잇 선정한 이번주 맛집"
            ){
                Image(.icWinnerTrophy)
            } buttonAction: {
                
            }
            ArticleThumbGrid(articles: [(
                "차츰", "#라면 #먹고 #갈래 #요",  "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"
            ),
              (
                   "차츰1", "#라면 #먹고 #갈래 #요",  "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"
               ),
              (
                  "차츰2", "#라면 #먹고 #갈래 #요",  "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"
              ),
            (
                "루도", "#라면 #먹고 #갈래 #요",  "https://images.unsplash.com/photo-1589476993333-f55b84301219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"
            )
                                  
            ]
            ).padding(.horizontal, 21.dp)
        }
    }
    
    var eventBannerList: some View{
        VStack{
            bannerTitle(title: "우리학교 맛집 이벤트", description: "맛집이러부러"){
                Image(.icStar)
                    .padding(.bottom,15.dp)
            }
            buttonAction:{
                
            }
            eventBanner(title: "프레시쿡 매콤하", description: "매콤한거 맛있다.")
            eventBanner(title: "프레시쿡 매콤하", description: "매콤한거 맛있다.")
        }
    }
    
    
    func bannerTitle<V>(title: String,  description: String, @ViewBuilder icon: () -> V, buttonAction: @escaping () -> Void) -> some View where V : View {
        HStack{
            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
                    Text(title)
                        .font(.bold,21.sp)
                    icon()
                
                }
                HStack {
                    Text(description)
                        .font(.regular,15.sp)
                        .foregroundColor(.gray59)
                }
            }
            Spacer()
            Button( action: buttonAction){
                Text("더보기 ›")
                    .font(.medium,13.sp)
                    .foregroundColor(.gray19)
            }
                
        }
        .padding(.horizontal,25.dp)
    }
    
    
    func eventBanner(title: String, description: String) -> some View{
        VStack(alignment: .leading){
            KFImage.url(URL(string: "https://www.creativefabrica.com/wp-content/uploads/2020/08/07/Juice-Shop-Rollup-Banner-Vol03-Graphics-4882893-1.jpg"))
                .resizable()
                .aspectRatio(1.33, contentMode: .fit)
            
            Text(title)
                .font(.bold,25.dp)
            
            Color.black.frame(height: 1.dp).padding(.trailing,20.dp)
            Text(description)
                .font(.regular,16.dp)
                .foregroundColor(.gray59)
            
            Text("이벤트 기간 : 23.12.23 ~ 24.12.12")
                .font(.regular, 15.sp)
                .foregroundColor(.sub)
                
        }.padding(.horizontal, 25.dp)
    }
}

struct HomeBannerList_Previews: PreviewProvider {
    static var previews: some View {
        HomeBannerList()
    }
}
