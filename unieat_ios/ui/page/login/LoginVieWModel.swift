//
//  LoginViewModel.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/05/02.
//

import Foundation

class LoginViewModel: ObservableObject{
    
    
    let loginModule: LoginModule = LoginModuleImpl.instance
    
    
    init(){
        observe()
        
    }
    
    deinit{
        
        removeObserver()
    }
    
}


// observer Field

extension LoginViewModel{
    
    
    func observe(){
        loginModule.loginStatus.observe(on: self){
            status in
            
            
            print("LoginStatus : \(status)")
        }
        
    }
    
    
    func removeObserver(){
        
    }
    
    
    
}


// Action Field
extension LoginViewModel{
    
    func loginWithKakao(){
        loginModule.loginWithKakao()
        
    }
    
    func loginWithApple(){
        
    }
    
}
