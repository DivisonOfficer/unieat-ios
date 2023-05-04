//
//  LoginPage.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import SwiftUI

struct LoginPage: View {
    
    @StateObject var vm = LoginViewModel()
    
    var body: some View {
        GeometryReader{
            metric in
            VStack{
                Spacer()
                textBubbles
                
                loginField.padding(.top,54.dp)
                
                termField
                Spacer()
            }.frame(
                maxWidth: .infinity,
                alignment: .center)
            
        }.background{
            Color(.sub)
        }.ignoresSafeArea(.all)
         
       
    }
    
    
    var textBubbles: some View{
        VStack(alignment: .leading, spacing:20.dp){
            Image(.icUnieatLogo)
            Spacer().frame(height:20.dp)
            HStack{
                bubbleFilled("#")
                bubbleLight("대학생")
            }
            HStack{
                bubbleFilled("취향저격")
                bubbleLight("맛집들은")
            }
            HStack{
                bubbleLight("UNI-EAT에")
                bubbleFilled("!")
             }
            HStack{
                bubbleFilled("찜하고")
                bubbleLight("♥")
                bubbleFilled("기록하고")
            
            }.fixedSize(horizontal: true, vertical: false)

            
            
        }
    }
    
    var loginField: some View{
        VStack(spacing:13.dp){
            LoginButton(text: "카카오 로그인", icon: .icKakao, color: .kakao){
                vm.loginWithKakao()
            }
            
            LoginButton(text: "애플 로그인", icon: .icApple, color: .white){
                vm.loginWithApple()
            }
            
            
        }
    }
    
    var termField: some View{
        VStack(alignment: .leading){
            Text("가입을 진행할 경우 , 아래의 정책에 동의한 것으로 간주됩니다")
                .font(.regular, 12.sp)
                .foregroundColor(.red20)
            HStack(spacing:0){
                Button{
                    
                }label:{
                    Text("서비스 이용약관")
                        .underline()
                        .font(.regular, 12.sp)
                        .foregroundColor(.red20)
                }
                Text("및 ")
                    .font(.regular, 12.sp)
                    .foregroundColor(.red20)
                Button{
                    
                }label:{
                    Text("개인정보처리방침")
                        .underline()
                        .font(.regular, 12.sp)
                        .foregroundColor(.red20)
                }
            }
        }.padding(.top,12.dp)
    }
    
    func bubbleLight(_ text: String) -> some View{
        Text(text).font(.bold, 21.sp).foregroundColor(.sub)
            .padding(14.5.dp)
            .padding(.horizontal,10.dp)
            .background{
                RoundedRectangle(cornerRadius: 30.dp).foregroundColor(.white)
            }
    }
    
    func bubbleFilled(_ text: String) -> some View{
        Text(text).font(.bold, 21.sp).foregroundColor(.white)
            .padding(14.5.dp)
            .padding(.horizontal,10.dp)
            .background{
                RoundedRectangle(cornerRadius: 30.dp).foregroundColor(.white)
                    .overlay{
                        RoundedRectangle(cornerRadius: 30.dp).foregroundColor(.sub).padding(2.dp)
                    }
            }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
