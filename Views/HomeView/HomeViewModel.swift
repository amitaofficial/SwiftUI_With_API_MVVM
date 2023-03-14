//
//  HomeViewModel.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/14/23.
//

import Foundation
import UIKit
import SwiftUI

class HomeViewModel : ObservableObject{
    
    @Published var searchText = ""
    
     var searchedResult:[Person]{
        if searchText.isEmpty{
            return Person.samplePersonData
        }
        else{
            return Person.samplePersonData.filter{$0.name.contains(searchText)}
        }
    }
    
    func customiseSearchBarView(){
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.backgroundColor = UIColor(Color.brown) // to change color of background of search bar , which is part of navigationbar
        navigationBarAppearance.shadowColor = .clear // to clear the line at the bottom of navigation bar

        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance

    }
    
}
