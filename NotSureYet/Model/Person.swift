//
//  DataModel.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/12/23.
//

import Foundation


class Person : Identifiable {
    let id : Int
    var name : String
    var city:String
    let phNo : Int
    
    init(id: Int, name: String, city: String, phNo: Int) {
        self.id = id
        self.name = name
        self.city = city
        self.phNo = phNo
    }
}
extension Person{
    static var samplePersonData = [ Person(id: 1, name: "Dave", city: "Atlanta", phNo: 1234567890),
                                    Person(id: 2, name: "Helen", city: "Austin", phNo:456774545343),
                                    Person(id: 3, name: "Dj", city: "Austin", phNo: 8974878957545),
                                    Person(id: 4, name: "Alice", city: "Orlando", phNo: 487367463),
                                    Person(id: 5, name: "Ann", city: "LA", phNo: 867676876),
                                    Person(id: 6, name: "George", city: "Philadelphia", phNo: 87687687770880),
                                    Person(id: 7, name: "Nancy", city: "Malibu", phNo: 878866786),
                                    Person(id: 8, name: "David", city: "Dallas", phNo: 97977977),
                                    Person(id: 9, name: "Dan", city: "Fremont", phNo: 786786768),
                                    Person(id: 10, name: "Nan", city: "LA", phNo: 978978986789),
                                    Person(id: 11, name: "AAA", city: "LA", phNo: 978978986789),
                                    Person(id: 12, name: "BBB", city: "MA", phNo: 978978986789),
                                    Person(id: 13, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 14, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 15, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 16, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 17, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 18, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 19, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 20, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 21, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 22, name: "Nan", city: "LA", phNo: 978978986789),
                                   Person(id: 23, name: "Nan", city: "LA", phNo: 978978986789)
                                    ]
    

}
