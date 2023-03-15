//
//  PersonCityViewModel.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/14/23.
//

import Foundation

class PersonCityViewModel : ObservableObject{
    @Published var selected_city : String = ""
    
    let cities:[String] = ["Austin","Los Angeles","Fremont","Atlanta","Dallas","Malibu"]
    
    func updateCityForPerson(person : Person){
        if let index = Person.samplePersonData.firstIndex(where: {$0.id == person.id})
        {
            Person.samplePersonData[index] = person
        }
            
    }

}
