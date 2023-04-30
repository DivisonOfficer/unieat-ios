//
//  NavigationMenu.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/20.
//

import SwiftUI

struct NavigationMenu: View {
    
    @Binding var currentPage: AppPage
    
    
    let menus: [(UniImage, AppPage)] = [
        (.icMenuHome, .HOME),
        (.icMenuMap, .MAP),
        (.icMenuArticle, .ARTICLE),
        (.icMenuEvent, .EVENT),
        (.icMenuMypage, .MY),
        
    ]
    
    
    
    var body: some View {
        HStack{
            ForEach(menus, id:\.0){
                (icon, menu) in
                NavigationMenuItem(icon: icon, menu: menu, isMenuActivated: currentPage == menu){
                    currentPage = $0
                }
            }
        }.padding(.top,9.dp)
            .padding(.bottom,38.dp)
            .background{
                Color.white.shadow(radius: 1.dp)
            }
    }
    
    
    
}

struct NavigationMenu_Previews: PreviewProvider {
   
    static var previews: some View {
        VStack{
            Spacer()
            NavigationMenu(currentPage: .constant(.EVENT))
        }.ignoresSafeArea()
        
    }
}


struct NavigationMenuItem: View{
    
    let icon: UniImage
    let menu: AppPage
    let isMenuActivated: Bool
    let onClickAction: (AppPage) -> Void
    
    
    
    var body: some View{
        Button{
            withAnimation{
                onClickAction(menu)
            }
        } label:{
            VStack{
                Image(icon)
                    .renderingMode(.template)
                    .frame(width: 32.dp, height: 32.dp, alignment: .center)
                Text(menu.rawValue)
                    .font(.medium, 11.sp)
            }
            .foregroundColor(isMenuActivated ? Color(.black) : Color(.grayBD))
            .frame(maxWidth: .infinity)
        }
    }
}
