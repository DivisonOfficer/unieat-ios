//
//  SingletoneProvider.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import Foundation


class SingletoneProvider: Provider{
    func provide<T>() throws -> T {
        
        
        throw ProviderError.NoSuchInstance
    }
    
    
    
    static let instance = SingletoneProvider()
    
    
    
}


protocol SingletoneInstance{
    
    
}
