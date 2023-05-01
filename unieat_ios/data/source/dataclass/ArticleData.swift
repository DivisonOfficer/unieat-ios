//
//  ArticleData.swift
//  unieat_ios
//
//  Created by 김진녕 on 2023/04/30.
//

import Foundation

struct ArticleData: Codable{
    var imageUrl: String = "https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Zm9vZCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fA%3D%3D&w=1000&q=80"
    var title: String = "부산 감성 카페 \n'어딘가'"
    var author: String = "임꺽정"
    var place: String = "레스토랑 이름"
    var location: String = "허리도 가늘군 만지면"
    var text: String = """
이 편지는 영국에서 시작되어 병인박해를 피해 신미양요를 건너 조선반도에 당도할때쯤 동남풍이 불어 파도가 칠 즈음 화망속에 갇쳐버린 어리석은 눈동자를 그저 바라볼뿐힌 분노에 사로잡혔다.

보라, 어설픈 보바동의 그 모습을 부디 더는 부질없이 붓어갈수 없는 불길한 모습을 보엿도라

이 편지는 영국에서 시작되어 병인박해를 피해 신미양요를 건너 조선반도에 당도할때쯤 동남풍이 불어 파도가 칠 즈음 화망속에 갇쳐버린 어리석은 눈동자를 그저 바라볼뿐힌 분노에 사로잡혔다.

보라, 어설픈 보바동의 그 모습을 부디 더는 부질없이 붓어갈수 없는 불길한 모습을 보엿도라

이 편지는 영국에서 시작되어 병인박해를 피해 신미양요를 건너 조선반도에 당도할때쯤 동남풍이 불어 파도가 칠 즈음 화망속에 갇쳐버린 어리석은 눈동자를 그저 바라볼뿐힌 분노에 사로잡혔다.

보라, 어설픈 보바동의 그 모습을 부디 더는 부질없이 붓어갈수 없는 불길한 모습을 보엿도라

이 편지는 영국에서 시작되어 병인박해를 피해 신미양요를 건너 조선반도에 당도할때쯤 동남풍이 불어 파도가 칠 즈음 화망속에 갇쳐버린 어리석은 눈동자를 그저 바라볼뿐힌 분노에 사로잡혔다.

보라, 어설픈 보바동의 그 모습을 부디 더는 부질없이 붓어갈수 없는 불길한 모습을 보엿도라



"""
    var date: String = "2022.11.11"
    var tags: [String] = ["일식","돈까스", "치킨까스","비후까스"]
}
