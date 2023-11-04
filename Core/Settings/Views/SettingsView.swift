//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Назар Горевой on 01.11.2023.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultUrl = URL(string: "https://www.google.com")!
    let youTubeUrl = URL(string: "https://www.youtube.com")!
    let coinGeckoUrl = URL(string: "https:www.coingecko.com")!
    let personalUrl = URL(string: "https://github.com/HorevyiNazar")!
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.theme.background.ignoresSafeArea()
                List {
                    switfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .tint(.blue)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    XmarkButton()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    private var switfulThinkingSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following Swiftful Thinking youtube course")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link(destination: youTubeUrl) {
                Text("Subscribe for YouTube")
            }
        } header: {
            Text("Swiftful thinking")
        }
    }
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link(destination: coinGeckoUrl) {
                Text("Visit CoinGecko")
            }
        } header: {
            Text("CoinGecko")
        }
    }
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Develop that created the application")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link(destination: personalUrl) {
                Text("Visit GitHub")
            }
        } header: {
            Text("Developer")
        }
    }   
    private var applicationSection: some View {
        Section {
            
            Link(destination: defaultUrl) {
                Text("Terms of service")
            }
            Link(destination: defaultUrl) {
                Text("Private policy")
            }
            Link(destination: defaultUrl) {
                Text("Company website")
            }
            Link(destination: defaultUrl) {
                Text("Learn more")
            }
        } header: {
            Text("Application")
        }
    }
}
