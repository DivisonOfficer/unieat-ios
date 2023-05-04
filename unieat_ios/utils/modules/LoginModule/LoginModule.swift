//
//  LoginModule.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/05/02.
//

import Foundation


protocol LoginModule : SingletoneInstance{

    
    var loginStatus: Observable<LoginStatus> { get }
    
    func loginWithKakao()
    
    
    
    
    
    
}
