//
//  ProductCard.swift
//  IPhoneStoreUICollection
//
//  Created by Екатерина Яцкевич on 26.03.25.
//

import Foundation

struct ProductCard {
    let imageName: String
    let price: String
    let model: String
    let description: String
    
    static func getAllProductCards() -> [ProductCard] {
        [
            ProductCard(
                imageName: "whiteIphone14",
                price: "107 990 ₽",
                model: "Apple iPhone 14 Pro 256Gb Серебристый",
                description: """
                        Тип смартфон
                        Операционная система iOS 16
                        Тип корпуса классический
                        Конструкция водозащита
                        Материал корпуса стекло, керамика, нержавеющая сталь
                        Тип SIM-карты Nano Sim + eSIM
                        Количество SIM-карт1
                        Вес240г
                        Размеры 160.7x77.6x7.85 мм
                        """
            ),
            ProductCard(
                imageName: "goldIphone14",
                price: "119 990 ₽",
                model: "Apple iPhone 14 Pro 512Gb Золотой",
                description: """
                        Тип смартфон
                        Операционная система iOS 16
                        Тип корпуса классический
                        Конструкция водозащита
                        Материал корпуса стекло, керамика, нержавеющая сталь
                        Тип SIM-карты Nano Sim + eSIM
                        Количество SIM-карт1
                        Вес240г
                        Размеры 160.7x77.6x7.85 мм
                        """
            ),
            ProductCard(
                imageName: "blueIphone14",
                price: "62 990 ₽",
                model: "Apple iPhone 14 128Gb Голубой",
                description: """
                        Тип смартфон
                        Операционная система iOS 16
                        Тип корпуса классический
                        Конструкция водозащита
                        Материал корпуса стекло, керамика, нержавеющая сталь
                        Тип SIM-карты Nano Sim + eSIM
                        Количество SIM-карт1
                        Вес240г
                        Размеры 160.7x77.6x7.85 мм
                        """
            ),
            ProductCard(
                imageName: "silverIphone14",
                price: "119 990 ₽",
                model: "Apple iPhone 14 512Gb Cияющая звезда",
                description: """
                        Тип смартфон
                        Операционная система iOS 16
                        Тип корпуса классический
                        Конструкция водозащита
                        Материал корпуса стекло, керамика, нержавеющая сталь
                        Тип SIM-карты Nano Sim + eSIM
                        Количество SIM-карт1
                        Вес240г
                        Размеры 160.7x77.6x7.85 мм
                        """
            ),
            ProductCard(
                imageName: "silverIphone13",
                price: "71 900₽",
                model: "Apple iPhone 13 Pro 256Gb Серебристый",
                description: """
                        Тип смартфон
                        Операционная система iOS 16
                        Тип корпуса классический
                        Конструкция водозащита
                        Материал корпуса стекло, керамика, нержавеющая сталь
                        Тип SIM-карты Nano Sim + eSIM
                        Количество SIM-карт1
                        Вес240г
                        Размеры 160.7x77.6x7.85 мм
                        """
            ),
            ProductCard(
                imageName: "goldIphone15",
                price: "189 990 ₽",
                model: "Apple iPhone 15 Pro 256Gb Золотистый",
                description: """
                        Тип смартфон
                        Операционная система iOS 16
                        Тип корпуса классический
                        Конструкция водозащита
                        Материал корпуса стекло, керамика, нержавеющая сталь
                        Тип SIM-карты Nano Sim + eSIM
                        Количество SIM-карт1
                        Вес240г
                        Размеры 160.7x77.6x7.85 мм
                        """
            ),
        ]
    }
}
