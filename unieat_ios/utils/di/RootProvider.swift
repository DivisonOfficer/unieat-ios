//
//  RootProvider.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import Foundation


func provide<T>() throws -> T {
    
    
    if(T.self is SingletoneInstance){
        return try! SingletoneProvider.instance.provide()
    }
    
    throw ProviderError.NoSuchInstance
}



protocol Provider{
    
   func provide<T>() throws -> T
}


enum ProviderError : Error{
    case NoSuchInstance
}
