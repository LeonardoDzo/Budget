//
//  ContentView.swift
//  Budget
//
//  Created by Leonardo Durazo on 07/02/21.
//

import SwiftUI

struct ContentView: View {
    var expense: Expense
    var body: some View {
        VStack(alignment: .leading , content: {
            HStack(content: {
                Text("Amount")
                Text(expense.amount.asCurrency)
                    .font(.headline)
                    .foregroundColor(.red)
            })
            
            HStack(content: {
                Text("Date")
                Text(expense.date.asDateString(as: .fullDate))
            })
            
            HStack(content: {
                Text(expense.allTypes)
            })
           
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(expense: .default)
    }
}
