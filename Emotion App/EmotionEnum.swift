//
//  EmotionEnum.swift
//  Emotion App
//
//  Created by 박소진 on 2023/07/25.
//

import Foundation

enum Emotion: Int, CaseIterable {
    case 완전행복
    case 적당미소
    case 그냥그냥
    case 좀속상한
    case 많이슬픈
}

//enum을 배열처럼
var emotionList = Emotion.allCases
