//
//  EventDetailPage.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/29.
//

import SwiftUI
import Kingfisher

struct EventDetailPage: View{
    
    var body: some View{
        VStack{
            appbar
            
            ScrollView{
                imageSection
                textSection
            }
            
            couponBtn
            
        }.ignoresSafeArea()
    }
    
    
    var appbar: some View{
        Backbtn(page: "이벤트"){
            
        }
    }
    
    
    var imageSection: some View{
        KFImage.url(URL(string: "https://media.istockphoto.com/id/812955166/vector/portrait-luxury-certificate-template-with-elegant-golden-red-border-frame.jpg?s=612x612&w=0&k=20&c=8MseNWfNBBu6sKcUqLBdegawWCld2iAOATBYhYrf2Xk="))
            .resizable()
            .aspectRatio(0.66, contentMode: .fit)
            .cornerRadius(4.dp)
            .padding(21.dp)
    }
    
    var textSection: some View{
        
        VStack(alignment: .leading){
            Text("할인 쿠폰")
                .fontSL(size: 25.sp)
            Color.black.frame(height:1.dp)
            Text("기간 미정")
                .font(.regular, 15.sp)
                .foregroundColor(.sub)
            
            Text("계획\n계획이다. 계획을 위한")
                .font(.regular, 15.sp)
        }.padding(.horizontal,21.dp)
            
    }
    
    
    var couponBtn: some View{
        let eventEabled = true
        let eventStatus = "쿠폰 사용하기"//사용완료, 이벤트 종료, 인증 후 사용가능
        
        
        return VStack{
            Button{
                
            }label:{
                Text(eventStatus)
                    .font(.medium, 15.sp)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 53.sp)
                    .background{
                        RoundedRectangle(cornerRadius: 40.dp).foregroundColor(eventEabled ? .main : .grayBD)
                    }
                    .padding(.horizontal, 21.dp)
                    .padding(.top,16.dp)
            }
            Spacer()
        }.frame(height:105.dp)
            .background{
                Color.white
            }
            .shadow(radius: 1.sp)
    }
    
    
    
}



struct EventDetailPage_Preview: PreviewProvider{
    
    
    static var previews: some View{
        EventDetailPage()
    }
}
