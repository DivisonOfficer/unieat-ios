//
//  ShopInfoViewModel.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/21.
//

import Foundation


class ShopInfoViewModel: ObservableObject{
    
    
    @Published var infoTitle = ""
    @Published var category = ""
    @Published var describtion = ""

    @Published var telephone = ""
    @Published var location = ""
    @Published var priceRange = ""
    @Published var address = ""

    @Published var hashTags = [String]()

    @Published var imageUrls = [String]()
    
    @Published var menus = [String:Int]()
    

}



extension ShopInfoViewModel{
    
    
    func mockViewModel() -> ShopInfoViewModel{
        infoTitle = "카인드"
        category = "레스토랑"
        describtion = "분위기 좋은 파스타집"
        
        telephone = "010 1234 5678"
        location = "스벅 근처"
        priceRange = "만원대"
        address = "경기 수원시 영통구"
        
        hashTags = ["중식","일식","맛있고","야무진"]
        
        imageUrls = [
            "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?cs=srgb&dl=pexels-rajesh-tp-1633525.jpg&fm=jpg",
            "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg",
            "https://w0.peakpx.com/wallpaper/9/554/HD-wallpaper-food-chicken-delicious-food-holidays-indian-spices-spicy-food-street-food-swahabhaan.jpg",
            "https://media.istockphoto.com/id/1316145932/photo/table-top-view-of-spicy-food.jpg?b=1&s=170667a&w=0&k=20&c=P3jIQq8gVqlXjd4kP2OrXYyzqEXSWCwwYtwrd81psDY="
        ]
        
        menus = [
            "자장면": 2000,
            "삼계탕" : 13500,
            "팔보채" : 2400
        ]
        
        
        return self
    }
    
}
