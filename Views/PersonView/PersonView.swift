//
//  PersonView.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/13/23.
//

import SwiftUI


struct PersonView: View {
    @StateObject var  viewModel = PersonViewModel()  // can use @StateObject in this case also
    var person : Person
//    @Published var person_list : [Person]
    var body: some View {
        Text("\(viewModel.person_weather)")
            .onAppear {
                viewModel.getPersonWeather(person: person)
            }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.samplePersonData[0])
    }
}
