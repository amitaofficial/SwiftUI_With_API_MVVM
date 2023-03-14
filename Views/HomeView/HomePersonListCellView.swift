//
//  PersonCellView.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/12/23.
//

import SwiftUI

struct HomePersonListCellView: View {
    var person : Person
    var body: some View {
        NavigationLink(destination: PersonView(person: person)){
            HStack(alignment:.center,spacing: 20){
                Image(systemName: "person")
                VStack(alignment: .leading,spacing: 10){
                    Text(person.name)
                    let phStr = "Ph : "
                    Text(phStr+String(person.phNo))
                }
            }
            .padding()
    //        .frame(maxWidth:.infinity)
    //        .background(Color.cyan)
        }
    }
    
        
    
}

struct PersonCellView_Previews: PreviewProvider {
    static var previews: some View {
        HomePersonListCellView(person: Person.samplePersonData[0])
    }
}
