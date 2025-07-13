//
//  create new tab view.swift
//  finentialv1
//
//  Created by Bryan Trieu on 2025-06-30.
//

import SwiftUI

struct CreateNewTab: View {
    var body: some View {
        ZStack {
            // Background color filling entire screen
            Color(.systemGray6)
                .ignoresSafeArea()

            VStack(spacing: 10) {
                // Header bar
                HStack {
                    Button(action: {
                        // Action for back
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    Spacer()

                    Text("Create a New Tab")
                        .font(.headline)
                        .foregroundColor(.gray)

                    Spacer()

                    Button(action: {
                        // Action for menu
                    }) {
                        Image(systemName: "square.grid.2x2")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .background(Color(.systemGray6)) // Ensure header has background so text doesn't clash

                // Main content
                ScrollView {
                    VStack(spacing: 40) {
                        Text("[Tab Name]")
                            .font(.title3)
                            .foregroundColor(.gray)
                            .padding(.top, 10)

                        VStack(alignment: .leading, spacing: 10) {
                            Text("Who's in the group?")
                                .font(.subheadline)
                                .foregroundColor(.gray)

                            TextField("Jill", text: .constant(""))
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding(.vertical, 5)
                                .overlay(Rectangle().frame(height: 1).foregroundColor(.gray), alignment: .bottom)

                            TextField("Jane", text: .constant(""))
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding(.vertical, 5)
                                .overlay(Rectangle().frame(height: 1).foregroundColor(.gray), alignment: .bottom)

                            Button(action: {
                                // Add new person
                            }) {
                                Text("Add New")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 16)
                                    .background(Color.black)
                                    .cornerRadius(8)
                            }
                            .padding(.top, 5)
                        }
                        .padding(.horizontal)

                        VStack(spacing: 15) {
                            Button(action: {
                                // Enter Expense Manually
                            }) {
                                Text("Enter Expense Manually")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color(red: 29/255, green: 41/255, blue: 61/255))
                                    .cornerRadius(8)
                            }

                            Button(action: {
                                // Take a Receipt Photo
                            }) {
                                Text("Take a Receipt Photo")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color(red: 29/255, green: 41/255, blue: 61/255))
                                    .cornerRadius(8)
                            }

                            Button(action: {
                                // View Expenses
                            }) {
                                Text("View Expenses")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color(red: 29/255, green: 41/255, blue: 61/255))
                                    .cornerRadius(8)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 40)
                    }
                    .background(Color(red: 182/255, green: 237/255, blue: 242/255))
                    .cornerRadius(20)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    CreateNewTab()
}
