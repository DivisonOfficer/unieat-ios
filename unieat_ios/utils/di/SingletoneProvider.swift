//
//  SingletoneProvider.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import Foundation


class SingletoneProvider: Provider{
    func provide<T>() throws -> T {
        
        guard T.self is SingletoneInstance else{
            throw ProviderError.NoSuchInstance
       
        }
        
        let instanceId = (T.self as! any SingletoneInstance.Type).instanceID
        
        
        if let instance: any SingletoneInstance = getInstanceFromMap(T.self as! (any SingletoneInstance).Type){
            return instance as! T
        }
        
        let instance: T = try! instanceFactory()
        
        instanceMap += [
            SingletoneInstanceContainer(type: T.self as! (any SingletoneInstance).Type, instance: instance as! SingletoneInstance)
            ]
           
        return instance
        
        
        
       
    }
    
    
    private func getInstanceFromMap(_ type: SingletoneInstance.Protocol) -> (any SingletoneInstance)?{
        
        return instanceMap.first(where: {$0.type == type})?.instance
    }
    
    private func instanceFactory<T>() throws -> T{
        
        if T.self == LoginModule.self {
            return LoginModuleImpl() as! T
        }
        
        
        
        throw ProviderError.NoSuchInstance
    }

    private var instanceMap: [SingletoneInstanceContainer] = []
    
    
    static let instance = SingletoneProvider()
    
    
    
}

struct SingletoneInstanceContainer{
    var type: SingletoneInstance.Protocol
    var instance: SingletoneInstance
}


protocol SingletoneInstance{
    
    static var instanceID: String{ get }
}
