//
//  PersonView.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/13/23.
//

import SwiftUI


struct PersonView: View {
    @StateObject var  viewModel = PersonViewModel()
    
    @Binding var person : Person
    
    var body: some View {
        
        VStack{
            Text(person.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer().frame(height: 50)
            
            HStack{
                Text(person.city)
                Image(systemName: "cloud")
                Text(" \(viewModel.person_weather,specifier: "%.2f")F")
                }
            Spacer().frame(height: 150)
            Button("change city") {
                viewModel.isPresented.toggle()
            }.sheet(isPresented: $viewModel.isPresented,onDismiss: nil) {
                PersonCityView(person: $person, isPresented: $viewModel.isPresented, city: $viewModel.city)
            }
        
            }
            .onAppear {
                        viewModel.getPersonWeather(person: person)
                        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
       PersonView(person: .constant(Person.samplePersonData[0]))
    }
}
