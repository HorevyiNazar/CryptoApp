//
//  DetailView.swift
//  CryptoApp
//
//  Created by Назар Горевой on 27.09.2023.
//

import SwiftUI

struct DetialLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    @StateObject private var vm: DetailViewModel
    @State private var showFullDescription: Bool = false
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    private let spacing: CGFloat = 30
    
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ChartView(coin: vm.coin)
                    .padding(.vertical)
                
                VStack(spacing: 20) {
                    overViewTitle
                    Divider()
                    descriptionSection
                    overViewGrid
                    additionalTitle
                    Divider()
                    additionalGrid
                    linksSection

                }
                .padding()
            }
        }
        .background(Color.theme.background)
        .navigationTitle(vm.coin.name)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                navigationBartrailingItems
            }
        }
        }
    }

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(coin: dev.coin)
        }
    }
}

extension DetailView {
    private var navigationBartrailingItems: some View {
        HStack {
            Text(vm.coin.symbol.uppercased())
                .font(.headline)
                .foregroundStyle(Color.theme.secondaryText)
            CoinImageView(coin: vm.coin)
                .frame(width: 25, height: 25)
        }
    }
    
    private var overViewTitle: some View {
        Text("Overview")
            .font(.title)
            .bold()
            .foregroundStyle(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    private var additionalTitle: some View {
        Text("Additional Details")
            .font(.title)
            .bold()
            .foregroundStyle(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    private var descriptionSection: some View {
        ZStack {
            if let coinDescription = vm.coinDescription, !coinDescription.isEmpty {
                VStack(alignment: .leading) {
                    Text(coinDescription)
                        .lineLimit(showFullDescription ? nil : 3)
                        .font(.callout)
                        .foregroundStyle(Color.theme.secondaryText)
                    Button {
                        withAnimation(.easeInOut) {
                            showFullDescription.toggle()
                        }
                    } label: {
                        Text(showFullDescription ? "Less" : "Read More...")
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(.vertical, 4)
                    }
                    .tint(.blue)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
    private var linksSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            if let websiteURL = vm.websiteURL,
               let url = URL(string: websiteURL) {
                Link("Website", destination: url)
            }
            if let redditURL = vm.redditURL,
               let url = URL(string: redditURL) {
                Link("Reddit", destination: url)
            }
        }
        .tint(.blue)
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.headline)
    }
    private var overViewGrid: some View {
        LazyVGrid(columns: columns, alignment: .leading, spacing: spacing, content: {
            ForEach(vm.overviewStatistics) { stat in
                StatisticView(stat: stat)
            }
        })

    }
    private var additionalGrid: some View {
        LazyVGrid(columns: columns, alignment: .leading, spacing: spacing, content: {
            ForEach(vm.additionalStatistics) { stat in
                StatisticView(stat: stat)
            }
        })
    }
}
