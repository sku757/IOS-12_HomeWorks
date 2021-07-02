//
//  Posts.swift
//  Navigation
//
//  Created by Артем Сизов on 30.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit


struct PostVK {
     let author: String
     let description: String
     let image: String
     let likes: Int
     let views: Int
}
struct PostStorage {
static let postArray = [
         PostVK(author: "BMW 8", description: "Учащает пульс, создан для ярких личностей. Новый BMW 8 серии Coupe — сочетание спортивного характера и эксклюзивности автомобилей BMW класса «люкс» — новый стандарт эстетического удовольствия.", image: "bmw", likes: 932, views: 3000),
         PostVK(author: "BMW 3", description: "Едва выехав на дорогу, новый BMW 3 серии оставляет позади предрассудки и опережает самые смелые ожидания. В очередной раз легендарная модель является в новой ипостаси. Новый дизайн символизирует наступление новой эры.   В движение совершенный спортивный седан приводится еще более мощными и экономичными двигателями.", image: "bmw 2", likes: 290, views: 341),
         PostVK(author: "BMW x5", description: "РНовый BMW X5 — лидер модельного ряда, который расставляет все по местам. Этот высокий, элегантный и сильный автомобиль невозможно не заметить.   Мощная цельная двойная решетка радиатора словно намекает на то, что произойдет при запуске двигателя. Великолепный дизайн фар в стиле X не оставляет сомнений в том, кто же лидер.   Благодаря инновационным технологиям для максимальной динамики и большей безопасности на любых покрытиях новый BMW X5 знает куда двигаться. И как оказаться там первым.", image: "bmw 3", likes: 399, views: 623),
         PostVK(author: "BMW 5", description: "BMW 5 серии воплощает собой современный седан бизнес-класса. Модель отличается стильными атлетичными формами, динамичным силуэтом и лаконичным дизайном.   Гладкие поверхности и четко очерченные контуры формируют элегантный экстерьер современного и высокотехнологичного автомобиля. Инновационные технологии и спортивное оснащение создают изысканный и функциональный интерьер.", image: "bmw 1", likes: 200, views: 350)
     ]
 }


//struct Posts {
//    let author:String
//    let description:String
//    let image:UIImage
//    let likes:String
//    let views:String
//
//}
//
//struct PostsArray {
//    static let postsArray = [
//    Posts(author: "dad", description: "dsadas", image:#imageLiteral(resourceName: "bmw"), likes: "1111", views: "23"),
//    Posts(author: "dad", description: "dsadas", image:#imageLiteral(resourceName: "bmw"), likes: "23", views: "23")
//    ]
//}
