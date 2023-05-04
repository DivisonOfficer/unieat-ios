//
//  unieat_iosApp.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth



@main
struct unieat_iosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL{
                    url in
                    if(AuthApi.isKakaoTalkLoginUrl(url)){
                        AuthController.handleOpenUrl(url: url)
                    }
                    
                }
        }
    }
    
    
    
    init(){
        initKakaoSDK()
    }
    
    
    
    func initKakaoSDK(){
        if let key = getConfig(.KAKAO_APP_KEY){
            KakaoSDK.initSDK(appKey: key)
        }else{
            print("Config Not Loaded")
        }
    }
    
    
    
}
