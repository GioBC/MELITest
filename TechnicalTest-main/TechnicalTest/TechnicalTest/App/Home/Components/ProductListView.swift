//
//  ListItemView.swift
//  TechnicalTest
//
//  Created by Giovanny Beltran on 11/06/23.
//

import SwiftUI
import TechnicalTestCore

struct ProductListView: View {
    
    @State var listItem: [ProductDetail]?
    var removeAction: () -> Void
    
    var body: some View {
        ScrollView {
            HStack{
                Button(action: removeAction) {
                    Text(NSLocalizedString(LocalizedString.deleteSearch, comment: LocalizedString.empty))
                }
            }
            Divider()
                .padding([.leading, .trailing], 20)
            ForEach(self.listItem ?? [], id: \.id) { item in
                NavigationLink(destination: ItemDetail(item: item)) {
                    ItemCellView(item: item)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                }
            }
        }
    }
}


