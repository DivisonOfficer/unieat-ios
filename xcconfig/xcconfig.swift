//
//  xcconfig.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/05/02.
//

import Foundation


enum ConfigKey: String{
    case KAKAO_APP_KEY
    case BACKEND_URL
}




func getConfig(_ key: ConfigKey) -> String?{
    guard let infoDictionary: [String: Any] = Bundle.main.infoDictionary else {
        print("InfoDictionary Missing")
        return nil
        
    }
    guard let key: String = infoDictionary[key.rawValue] as? String else {
        print("Cannot find following key: \(key.rawValue)")
        return nil
    }
    return key
}
