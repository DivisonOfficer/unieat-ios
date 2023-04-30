//
//  MainViewModel.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/29.
//

import Foundation


class MainViewModel: ObservableObject{
    
    @Published var currentPage = AppPage.HOME{
        willSet{
            prevPage = currentPage
        }
    }
    @Published var prevPage = AppPage.HOME
    
    
    
    
    let pagePool: [AppPage] = [.HOME, .MAP, .ARTICLE, .EVENT, .MY]
    
    
}
