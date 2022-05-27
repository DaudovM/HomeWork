//
//  main.swift
//  homeWork
//
//  Created by Мухаммадхаджи Даудов on 26.05.2022.
//

import Foundation

let customers = Customer(fio: "Ахматов Иса Магомедович", age: "20", phone: "+7989575748")
let customersOne = Customer(fio: "Магомедов Гасан Абдуллаевич", age: "20", phone: "+7989575748")
let customersTwoo = Customer(fio: "Алиев Загит Юсупович", age: "20", phone: "+7989575748")


let orderOne = Order(deviceName: .macBookPro,
                     idNumber: .fourCharactersID( "7", "8", "7","6"),
                     prace: 150000,
                     discountPersent: 10,
                     customers: [customers])


let orderTwoo = Order(deviceName: .iPhone13,
                     idNumber: .fourCharactersID( "6", "5", "3","0"),
                     prace: 100000,
                     discountPersent: 10,
                     customers: [customersTwoo])
orderOne.addCustomer(customers: customersOne)
orderTwoo.addCustomer(customers: customersTwoo)
customersTwoo.status = .took
orderTwoo.findCustemerBy(status: .took)
