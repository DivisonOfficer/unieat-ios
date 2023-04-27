//
//  EventItemView.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/27.
//

import SwiftUI
import Kingfisher

struct EventItemView: View {
    var body: some View {
        KFImage.url(URL(string: "https://mblogthumb-phinf.pstatic.net/MjAyMDAzMDlfMTIw/MDAxNTgzNzY0MTE0MTE3.eSstB0xuSUhEokTMyY9x98V3zsoa5GKBGgNvlt_G0A4g.BCltzAyoDFi5K06-MfW8vLUAkjEcx-5uJKpAIAy-FLIg.JPEG.phjsunflower/1.JPG?type=w800"))
            .placeholder{
                ProgressView()
            }
            .resizable()
            .aspectRatio(0.6, contentMode: .fit)
    
            .mask(PunchHoleShape())
            .cornerRadius(4.dp)
            .overlay{
                VStack(alignment: .leading){
                    Spacer()
                    Text("노랑통닭\n할인쿠폰")
                        .font(.medium,15.sp)
                        .foregroundColor(.white)
                    Color.white.frame(height:1.dp)
                    Text("이벤트기간이다")
                        .font(.regular,13.sp)
                        .foregroundColor(.white)
                    
                }
                .padding(6.dp)
                .frame(maxWidth: .infinity,
                        alignment: .leading)
            }
    }
}

struct EventItemView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            EventItemView()
            EventItemView()
        }.padding(21.dp)
        
    }
}



struct PunchHoleShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(rect: rect)
        let width = rect.size.width
        let height = rect.size.height
        let holeRadius = height / 32
        
        // Add left hole
        let leftHoleRect = CGRect(x: -holeRadius, y: height / 2 - holeRadius, width: holeRadius * 2, height: holeRadius * 2)
        let leftHolePath = UIBezierPath(ovalIn: leftHoleRect)
        path.append(leftHolePath.reversing())
        
        // Add right hole
        let rightHoleRect = CGRect(x: width - holeRadius, y: height / 2 - holeRadius, width: holeRadius * 2, height: holeRadius * 2)
        let rightHolePath = UIBezierPath(ovalIn: rightHoleRect)
        path.append(rightHolePath.reversing())
        
        return Path(path.cgPath)
    }
}
