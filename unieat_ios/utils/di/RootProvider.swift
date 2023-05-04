//
//  RootProvider.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import Foundation


func provideSingleton<T: SingletoneInstance>() throws -> T{
    return try! SingletoneProvider.instance.provide()
}


func provide<T>() throws -> T {
    
    
    if (T.self is SingletoneInstance.Type){
        
        return try! SingletoneProvider.instance.provide()
    }
    
    print("NO INSTANCE FOUND FOR \(T.self)")
    
    throw ProviderError.NoSuchInstance
}



protocol Provider{
    
   func provide<T>() throws -> T
}


enum ProviderError : Error{
    case NoSuchInstance
}
