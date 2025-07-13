//
//  Split-tabs view.swift
//  finentialv1
//
//  Created by Bryan Trieu on 2025-06-08.
//

import SwiftUI

struct TravelTab: Identifiable {
    let id = UUID()
    var title: String
    var imageName: String
    var backgroundColor: Color
}

struct TabsView: View {
    let tabs: [TravelTab] = [
        TravelTab(title: "North Korea", imageName: "north_korea_trip", backgroundColor: Color.teal),
        TravelTab(title: "♡My Japan Trip♡", imageName: "japan_trip", backgroundColor: Color.orange)
    ]

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {

                HStack {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                    }

                    Spacer()

                    Text("Tabs")
                        .font(.title2)
                        .fontWeight(.bold)

                    Spacer()

                    Button(action: {}) {
                        Image(systemName: "map")
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)

                HStack {
                    
                    Text("Split your bills easily")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .padding(8)
                            .background(Color(.systemGray5))
                            .clipShape(Circle())
                    }
                    .padding(.trailing)
                }

                Button(action: {}) {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.teal)
                        .cornerRadius(10)
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 200)
                
                ScrollView {
                    VStack(spacing: -80) { // overlap effect
                        ForEach(tabs) { tab in
                            VStack {
                                if !tab.imageName.isEmpty {
                                    VStack {
                                        Text(tab.title)
                                            .font(.headline)
                                            .padding(.top, 10)

                                        Image(tab.imageName)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 120)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .padding(.bottom, 10)
                                    }
                                    .background(tab.backgroundColor)
                                    .cornerRadius(20)
                                    .padding(.horizontal)
                                } else {
                                    Text(tab.title)
                                        .font(.headline)
                                        .frame(width: 300, height: 100)
                                        .background(tab.backgroundColor)
                                        .cornerRadius(20)
                                        .padding(.horizontal)
                                }
                            }
                        }
                    }
                }

                Spacer()
                
            }
            .navigationBarHidden(true)
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
