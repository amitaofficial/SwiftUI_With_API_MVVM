//
//  PersonViewModel.swift
//  NotSureYet
//
//  Created by Amita Ghosh on 3/14/23.
//

import Foundation

class PersonViewModel : ObservableObject{
    
    @Published var person_weather : Double = 0.0
    
    func getPersonWeather(person : Person){
        
        let baseUrl : String = Bundle.main.object(forInfoDictionaryKey: "EndpointURL") as! String
        let apiKey : String = Bundle.main.object(forInfoDictionaryKey: "APIKey") as! String
        let city : String = person.city
        let fullUrl : String = baseUrl+"q=\(city)&appid=\(apiKey)&units=imperial"
        
        print(fullUrl)
        
        guard let url = URL(string: fullUrl) else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { response_data, urlResponse, error in
            if let error{
                print("error in web service: "+error.localizedDescription)
                return
            }
            guard let response_data = response_data else { print("no response data") ; return }
            
            let response_str = String(data: response_data, encoding: String.Encoding.utf8) as String?
            
            DispatchQueue.main.async{
                do{
                    let response = try JSONDecoder().decode(ResponseModel.self, from: response_data)
                    self.person_weather = response.main.temp
                    
                }
                catch let decodeError{
                    print("error from decoding : " ,decodeError)
                    return
                }
            }
        }
        task.resume()
    }
}
