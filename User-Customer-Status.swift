//
//  User-Customer-Status.swift
//  homeWork
//
//  Created by Мухаммадхаджи Даудов on 26.05.2022.
//

import Foundation

enum Status {
    case wait
    case conseled
    case took
    var translate: String{
        switch self{
        case .wait: return "Ожидает доставки"
        case .conseled: return "отменил заказ"
        case .took: return "Забрал заказ"
        }
    }
}
class Human {
    var fio: String
    var age: String
    
    init(fio: String, age: String) {
        self.fio = fio
        self.age = age
    }
}

class Customer: Human {
    let phone: String
    var status: Status
    
    init(fio: String, age: String, phone: String) {
        self .phone	= phone
        self .status = .wait
        super .init(fio: fio, age: age)
    }
}
