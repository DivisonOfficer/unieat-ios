//
//  ArticlePage.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import SwiftUI
import Kingfisher
import SwiftUIPager

struct ShopInfoPage: View {
    
    // Page Argument
    

    
    @StateObject var vm = ShopInfoViewModel()
    
    @StateObject var page: Page = .first()
    
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    imageSection
                    titleSection
                    infoSection
                        .padding(.top,20.dp)
                    menuPage
                        .padding(.top,10.dp)
                    hashTags
                        .padding(.top,13.dp)
                    
                  
                }
            }
            bottomMenus
        }.ignoresSafeArea(.all)
       
    }
    
    
    var imageSection: some View{
        GeometryReader{
            metric in
            Pager(page: page, data: vm.imageUrls, id: \.self){
                url in
                KFImage.url(URL(string: url))
                    .placeholder{
                        ProgressView()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background{
                            Color(.grayBD)
                        }
                    }
                    .centerCropped()
            }
        }
        .aspectRatio(
            3/4,
            contentMode: .fit
        ).overlay{
            VStack{
                Spacer()
                PageIndicatorView(pageCount: vm.imageUrls.count, currentPage: page.index + 1)
            }
        }
        
    }
    
    
    var titleSection: some View{
        VStack(alignment: .leading, spacing:14.dp){
            Text(vm.infoTitle)
                .font(.bold,24.sp)
            
            r14T(vm.category)
                .foregroundColor(.gray59)
            
            Color.black.frame(height:1.dp)
            
            r14T(vm.describtion)
        }.frame(maxWidth: .infinity)
            .padding(.horizontal,20.dp)
    }
    
    
    var infoSection: some View{
        VStack(spacing:15.dp){
            HStack{
                r14T("전화번호")
                Spacer()
                r14T(vm.telephone)
            }
            
            HStack{
                r14T("지역")
                Spacer()
                r14T(vm.location)
            }
            
            
            HStack{
                r14T("가격대")
                Spacer()
                r14T(vm.priceRange)
            }
            
            
            HStack{
                r14T("상세주소")
                Spacer()
                r14T(vm.address)
            }
            
            
            
        }.padding(.horizontal,20.dp)
    }
    
    var menuPage: some View{
        VStack(spacing:15.dp){
            HStack{
                r14T("메뉴")
                Spacer()
                
            }
            
            ForEach(vm.menus.map{($0,$1)}, id:\.0){
                menu, price in
                r14TMenuPair(menu, price: price)
            }
           
    
            
        }.padding(.horizontal,20.dp)
    }
    
    
    var hashTags: some View{
        HStack{
            ForEach(vm.hashTags, id:\.self){
                tag in
                HashTagBubble(text: tag, isActive: false)
               
            }
            Spacer()
            
        }.padding(.leading,20.dp)
    }
    
    
    
    
    var bottomMenus: some View{
        HStack{
            Spacer()
            Button{
                
            }label:{
                Image(.icShare)
            }
            
            Button{
                
            }label:{
                Image(.icBookmark)
            }
        }
        .padding(.horizontal,20.dp)
        .padding(.top,12.dp)
        .padding(.bottom,45.dp)
    }
}


struct ShopInfoPage_Preview: PreviewProvider {
    static var previews: some View {
        ShopInfoPage(
            vm: ShopInfoViewModel().mockViewModel()
        )
    }
}
