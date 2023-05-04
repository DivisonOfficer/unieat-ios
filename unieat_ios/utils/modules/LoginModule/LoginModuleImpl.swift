//
//  LoginModuleImpl.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/05/02.
//

import Foundation
import KakaoSDKUser
import KakaoSDKAuth


class LoginModuleImpl: LoginModule{
    var loginStatus: Observable<LoginStatus> = Observable(.None)
    
    func loginWithKakao() {
        
        if UserApi.isKakaoTalkLoginAvailable(){
            UserApi.shared.loginWithKakaoTalk(completion: onCompletionKakao)
        }else{
            UserApi.shared.loginWithKakaoAccount(completion: onCompletionKakao)
        }
    }
    
    func onCompletionKakao(token: OAuthToken?, error: Error?){
        guard let token = token else{
            loginStatus.value = .LoginFailed
            return
        }
        
        
        print("Kakao Access Token \(token.accessToken)")
        
        // send token to somewhere
    }
    
    static var instanceID: String = ""
    
    static var instance: LoginModule = LoginModuleImpl()
    
}
