//
//  EventPage.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/27.
//

import SwiftUI

struct EventPage: View {
    @StateObject var vm = EventPageViewModel()
    
    
    
    var body: some View {
        GeometryReader{
            metric in
            ScrollView{
                VStack{
                    VStack(alignment: .leading){
                        Text("오늘은\n어떤 이벤트들이\n있을까?")
                            .fontSL(size: 25.sp)
                        
                        
                        
                    }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal,33.dp)
                        .padding(.top,65.dp)
                    if vm.eventItems.isEmpty{
                        itemNullList
                    }else{
                        itemList
                    }
                }.frame(minHeight:metric.size.height)
                
                
               
            }
        }
    }
    
    var itemNullList: some View{
        VStack{
            Spacer()
            Image(.icListNull)
            Text("이벤트가\n없습니다.")
                .font(.regular,18.sp)
                .foregroundColor(.grayD6)
            Spacer()
        }
    }
    
    var itemList: some View{
        HStack(alignment: .top){
            VStack{
                ForEach(0..<vm.eventItems.count / 2,id:\.self){
                    item in
                    EventItemView(eventData: vm.eventItems[item * 2])
                }
            }
            VStack{
                ForEach(0..<(vm.eventItems.count - 1) / 2,id:\.self){
                    item in
                    EventItemView(eventData: vm.eventItems[item * 2 + 1])
                }
            }.padding(.top,50.dp)
        }.padding(13.dp)
            .padding(.top,35.dp)
    }
}

struct EventPage_Previews: PreviewProvider {
    static var previews: some View {
        EventPage()
    }
}
