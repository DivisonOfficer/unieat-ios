//
//  MainPageRoot.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/29.
//

import SwiftUI

struct MainPageRoot: View {
    
    @StateObject var vm = MainViewModel()
    
    
    var body: some View {
        VStack(spacing:0){
            GeometryReader{
                metric in
             
                VStack{
                    switch vm.currentPage{
                    case .HOME:
                        HomePage()
                            .modifier(TabBarSlideAnimationModifier(selection: getIndex(page: vm.currentPage), from: getIndex(page: vm.prevPage)))
                        
                    case .ARTICLE:
                        MainArticlePage()
                            .modifier(TabBarSlideAnimationModifier(selection: getIndex(page: vm.currentPage), from: getIndex(page: vm.prevPage)))
                        
                    case .EVENT:
                        EventPage()
                            .modifier(TabBarSlideAnimationModifier(selection: getIndex(page: vm.currentPage), from: getIndex(page: vm.prevPage)))
                        
                          
                    default:
                        Text("\(vm.currentPage.rawValue)")
                            .frame(width:metric.size.width, height:metric.size.height)
                            .background{
                                Color.white
                            }
                            .modifier(TabBarSlideAnimationModifier(selection: getIndex(page: vm.currentPage), from: getIndex(page: vm.prevPage)))
                           
                    }
                    
                }
                
    
            }
          
           
            NavigationMenu(currentPage: $vm.currentPage)
               
        }
        
        
        .ignoresSafeArea()
    }
    
    func getIndex(page: AppPage) -> Int{
        return vm.pagePool.firstIndex(of: page) ?? 0
    }
}

struct MainPageRoot_Previews: PreviewProvider {
    static var previews: some View {
        MainPageRoot()
    }
}


struct TabBarSlideAnimationModifier: ViewModifier {
    let selection: Int
    let from: Int
    
    func body(content: Content) -> some View {
        content
            .transition(.asymmetric(insertion: .move(edge: getTransitionEdge()), removal: .move(edge: getTransitionEdge())))
    }
    
    private func getTransitionEdge() -> Edge {
        if selection > from {
            return .trailing
        } else {
            return .leading
        }
    }
    
   
}
