//
//  ExchangeInfo.swift
//  LOTRConverter18
//
//  Created by Sagidanov Bakhtiyar on 01.11.2024.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            // Background parchmant image
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)
                
                // Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                // Exchange rates
                ExtractedView()
                
                
                // Done button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
        }
        .foregroundStyle(.black)
    }
}


#Preview {
    ExchangeInfo()
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            // Left currency image
            Image(.goldpiece)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text("1 Gold Piece = 4 Gold Pennies")
            
            // Right currency image
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
