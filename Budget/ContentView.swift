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
                Text(expense.date.asDateString(as: .fullDate))
                Text(expense.amount.asCurrency)
                    .font(.headline)
                    .foregroundColor(.red)
            })
            Text(expense.allTypes)
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(expense: .default)
    }
}
