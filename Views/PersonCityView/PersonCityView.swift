//
//  PersonCityView.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/14/23.
//

import SwiftUI

struct PersonCityView: View {
    
    @Binding var person : Person
    @Binding var isPresented : Bool
    @Binding var city : String

    @StateObject var  pCityViewModel = PersonCityViewModel()
    
   
    
    var body: some View {
        Picker("Please select a city", selection: $city) {
            ForEach(pCityViewModel.cities , id: \.self) { tempCity in
                Text(tempCity)
            }
        }
        .onChange(of: city) { newValue in
            
            person.city = city
//            person.name="LLL"
            pCityViewModel.updateCityForPerson(person: person)
            isPresented = false
        }
        
    }
}

struct PersonCityView_Previews: PreviewProvider {
    static var previews: some View {

        PersonCityView(person: .constant(Person.samplePersonData[0]), isPresented: .constant(false), city: .constant("Austin"))
    }
}
