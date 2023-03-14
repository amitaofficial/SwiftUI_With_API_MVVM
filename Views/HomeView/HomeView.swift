//
//  ContentView.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/12/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var homeViewModel : HomeViewModel = HomeViewModel()
    
    init(searchText: String = "") {
        homeViewModel.searchText = searchText
        homeViewModel.customiseSearchBarView()
    }

    var body: some View {
        NavigationStack{
            List {
                ForEach(homeViewModel.searchedResult) { person in
                    HomePersonListCellView(person: person)
                }
                .listRowBackground(Color.brown)
            }
            .scrollContentBackground(.hidden)
            .background(Color.brown)
            .navigationTitle("Hello")
            .navigationBarTitleDisplayMode(.inline) //to have navigation title at the center
            
        }
        .searchable(text: $homeViewModel.searchText,prompt:Text("search from list"))
        
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().background(Color.brown)
    }
}
