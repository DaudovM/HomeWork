//
//  Order.swift
//  homeWork
//
//  Created by Мухаммадхаджи Даудов on 26.05.2022.
//

import Foundation

enum OrderID {
    case fourCharactersID(Character, Character, Character, Character)
}

enum Device {
    case iPhonex
    case iPhone11
    case iPhone12
    case iPhone13
    case macBookMini
    case macBookPro
}
/// метод доабвляет информацию о покупателях

final class Order{
    let deviceName: Device
    let idNumber : OrderID
    let prace : Int
    let discountPersent: Int
    var customers: [Customer]=[]
    
    init(deviceName: Device,
         idNumber: OrderID,
         prace: Int,
         discountPersent: Int,
         customers: [Customer])
    {
        self .deviceName = deviceName
        self .idNumber = idNumber
        self .prace = prace
        self .discountPersent = discountPersent
        self .customers = customers
    }

    func addCustomer(customers: Customer){
    self.customers.append(customers)
}
    func findCustemerBy(status:Status){
       print("поиск по статусузаказа: \(status)")
        customers.forEach({
            if $0.status == status{
                print("ФИО:\($0.fio)")
                print("Статус заказа: \(deviceName) \($0.status.translate)")
                print("-----------------------------------------------------")
            }
        })
    }
}
