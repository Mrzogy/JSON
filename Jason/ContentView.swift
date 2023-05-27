//
//  ContentView.swift
//  Jason
//
//  Created by 3bood on 07/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    private var People : [Person] = Person.allPeople
    var body: some View {
        NavigationView {
            List{
                ForEach(People,id: \.firstName){person in
//                    Text("\(person.firstName)")
                    NavigationLink(destination:DetailView(person:person)){
                        VStack(alignment: .leading){
                            Text("\(person.firstName) \(person.surname)")
                                .bold()
                            Text("\(person.phoneNumbers[0].number)")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(6)
                }
            }.navigationTitle("PhoneBook")
           
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
