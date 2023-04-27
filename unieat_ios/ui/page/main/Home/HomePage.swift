//
//  HomePage.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/24.
//

import SwiftUI

struct HomePage: View {
    
    
    @State var appbarDark = true
    
    var body: some View {
        VStack(spacing:0){
            appBar
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,18.dp)
                .padding(.leading,20.dp)
                .frame(height:103.dp, alignment: .bottom)
                .background{
                    Color(appbarDark ? .main : .white)
                }
            ScrollViewReader{
                proxy in
                ScrollView{
                    VStack(){
    
                        
                        mapRedirect
                            .padding(.top,20.dp)
                         
                        HomeBannerList()
                            .id("BannerList")
                            .background{
                                Color.white
                            }
                            .padding(.top,150.dp)
                    }.frame(maxWidth: .infinity)
                        .background(
                            GeometryReader { geometry in
                                            Color.clear
                                                .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                                        })
                    .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                        if(appbarDark != (value.y > -100.dp)){
                            withAnimation{
                                appbarDark = value.y > -100.dp
                            }
                        }
                    }
                    
                    
                }.background{
                    Color(appbarDark ? .main : .white)
                }
         
                
            }
            
        }.ignoresSafeArea()
    }
    
    var appBar: some View{
        Image(.icUnieatWordLogo)
    }
    
    var mapRedirect: some View{
        VStack(alignment:.leading){
            Text("한 눈에 알아보는\n학교 맛집 지도").font(.medium,25.sp)
                .foregroundColor(.white)
            
            HStack{
                Text("맛집지도 바로가기")
                    .font(.regular,18.sp)
                    .foregroundColor(.white)
                Image(.icBtnNextCircle)
            }
            .padding(10.dp)
            .padding(.leading,6.dp)
            .background{
                RoundedRectangle(cornerRadius: 40.dp)
                    .foregroundColor(.white)
                    .overlay{
                        RoundedRectangle(cornerRadius: 40.dp)
                            .foregroundColor(.main)
                            .padding(1.5.dp)
                    }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal,21.dp)
        
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}
