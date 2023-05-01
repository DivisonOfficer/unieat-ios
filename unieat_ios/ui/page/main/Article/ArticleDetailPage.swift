//
//  ArticleDetailPage.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/30.
//

import SwiftUI
import Kingfisher
import Introspect

struct ArticleDetailPage: View {
    
    let article: ArticleData
    
    
    
    var body: some View {
        GeometryReader{
            metric in
            VStack(spacing:0){
                ScrollView{
                    
                    VStack(alignment: .leading){
                        Text(article.title)
                            .fontSL(size: 25.sp)
                            .foregroundColor(.white)
                            .padding(.top,metric.size.width / 375.dp * 409.dp)
                            .padding(.leading, 21.dp)
                        
                        contentSection
                            .padding(.top, 21.dp)
                        
                        
                    }
                }
                .introspectScrollView { scrollView in
                    scrollView.bounces = false
                            }
                .frame(width: metric.size.width)
                ShareMenuView{
                    
                } onClickBookmark: {
                    
                }
                .background{
                    Color.white
                }
                .shadow(radius: 1.dp)
             
            }.overlay{
                VStack{
                    HStack{
                        Button{
                            
                        }label:{
                            Image(.icBackbtn)
                                .renderingMode(.template)
                                .foregroundColor(.white)
                                .frame(width: 32.dp, height: 32.dp)
                                .padding(24.dp)
                                .padding(.top, 24.dp)
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
            .background{
                VStack{
                    KFImage.url(URL(string: article.imageUrl))
                        .resizable()
                        .aspectRatio(375 / 535, contentMode: .fit)
                        .frame(width: metric.size.width, alignment: .center)
                   
                    Spacer()
                }
            }
        }.ignoresSafeArea()
    }
    
    
    var contentSection: some View{
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Image(.icListNull)
                    .resizable()
                    .frame(width: 52.dp, height: 52.dp)
                Text(article.author)
                    .fontSL(size: 15.sp)
                    .foregroundColor(.black)
            }.padding(.top, 24.dp)
            
            Text(article.place)
                .fontSL(size: 23.sp)
                .foregroundColor(.black)
                .padding(.top, 26.dp)
            
            Text(article.location)
                .font(.regular, 15.sp)
                .foregroundColor(.black)
                .padding(.top, 8.dp)
            
            Color.black.frame(height:1.dp)
                .padding(.top, 8.dp)
            
            Text(article.text)
                .font(.regular, 15.sp)
                .foregroundColor(.black)
                .padding(.top, 8.dp)
            
            
            Text(article.date)
                .font(.regular, 15.sp)
                .foregroundColor(.grayBD)
                .padding(.top, 21.dp)
            
            HStack{
                ForEach(article.tags, id:\.self){
                    tag in
                    HashTagBubble(text: tag, isActive: false)
                }
            }
            .padding(.top, 17.dp)
            .padding(.bottom, 51.dp)
            
            
        }
        .padding(.horizontal, 20.dp)
        .background{
            FoldedBackground()
        }
    }
}

struct ArticleDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailPage(article: ArticleData())
    }
}
