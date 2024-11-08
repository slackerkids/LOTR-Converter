//
//  SelectCurrency.swift
//  LOTRConverter18
//
//  Created by Sagidanov Bakhtiyar on 04.11.2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var currency: Currency
    
    var body: some View {
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        if self.currency == currency {
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .shadow(color: .black, radius: 10)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                        } else {
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .onTapGesture {
                                    self.currency = currency
                                }
                        }
                    }
                }
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    
                
                // Currency icons
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(currency: .silverPenny)
}
