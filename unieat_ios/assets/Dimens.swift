//
//  Dimens.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/18.
//

import Foundation


extension Int{
    var sp: CGFloat{
        return CGFloat(self) * 1.0
    }
    
    var dp: CGFloat{
        return CGFloat(self).dp
    }
    
}

extension CGFloat{
    var dp: CGFloat{
        return self * 1.0
    }
}


extension Double{
    var dp: CGFloat{
        return CGFloat(self).dp
    }
}
