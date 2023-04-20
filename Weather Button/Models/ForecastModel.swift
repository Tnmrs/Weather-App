//
//  ForecastModel.swift
//  Weather Button
//
//  Created by Дмитрий Сенаторов on 19.04.2023.
//

import Foundation
enum ForecastPeriod {
    case hourly
    case daily
}

enum Weather: String {
    case clear = "Clear"
    case clody = "Cloudy"
    case rainy = "Mid Rain"
    case stormy = "Showers"
    case sunny = "Sunny"
    case tornado = "Tornado"
    case windy = "Fast Wind"
}

struct Forecast: Identifiable {
    var id = UUID()
    var date: Date
    var weather: Weather
    var probability: Int
    var temperature: Int
    var high: Int
    var low: Int
    var location: String
    
    var icon: String {
        switch weather {
        case .clear:
            return "Moon"
        case .clody:
            return "Cloud"
        case .rainy:
            return "Moon cloud mid rain"
        case .stormy:
            return "Sun cloud angled rain"
        case .sunny:
            return "Sun"
        case .tornado:
            return "Torando"
        case .windy:
            return "Moon cloud fast wind"
        }
    }
}


extension Forecast {
    static let hour: TimeInterval = 60 * 60
    static let day: TimeInterval = 60 * 60 * 24
    
    //почасовые данные
    
    static let hourly: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: hour * -1), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: hour * 0), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: hour * 1), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: hour * 2), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: hour * 3), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: hour * 4), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
    ]
    
    static let daily: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: day * -1), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: day * 0), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: day * 1), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: day * 2), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: day * 3), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
        Forecast(date: .init(timeIntervalSinceNow: day * 4), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Luga")
    ]
}
