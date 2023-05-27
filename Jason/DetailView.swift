//
//  DetailView.swift
//  Jason
//
//  Created by 3bood on 07/11/1444 AH.
//

import SwiftUI

struct DetailView: View {
    var person: Person
    var body: some View {
        VStack(spacing: 10) {
            Text("\(person.firstName) \(person.surname)")
                .bold()
            Text("\(person.phoneNumbers[0].number)")
            Text("\(person.address.streetAddress)")
            Text("\(person.address.city)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.samplePerson)
    }
}
