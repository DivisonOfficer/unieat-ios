//
//  PageIndicator.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import SwiftUI

struct PageIndicatorView: View {
    let pageCount: Int
    let currentPage: Int
    
    var body: some View {
        HStack(spacing: 10.dp) {
            ForEach(0..<pageCount) { index in
                HStack(spacing: 0) {
                    Text(String(format: "%02d", index + 1))
                        .font(.medium, 12.sp)
                        .foregroundColor(Color(index + 1 == currentPage ? .sub : .white))
                        .frame(width: 30, height: 30)
                    if index + 1 == currentPage && currentPage < pageCount {
                        Rectangle()
                            .fill(Color(.sub))
                            .frame(width: 60, height: 1)
                    }
                }
    
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.clear)
        .cornerRadius(20)
    }
}


struct PageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicatorView(
            pageCount: 4,
            currentPage: 1
        )
    }
}
