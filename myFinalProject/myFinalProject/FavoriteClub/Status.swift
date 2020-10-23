//
//  Status.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/17/20.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 250.0) {//Contains both the triangles
            VStack {//User Triangle
                HStack(spacing: 15.0) {
                Button(action: {}) {
                        Text("7")
                            .font(.largeTitle)
                    }
                Button(action: {}) {
                        Text("8")
                            .font(.largeTitle)
                    }
                Button(action: {}) {
                        Text("9")
                            .font(.largeTitle)
                    }
                Button(action: {}) {
                        Text("10")
                            .font(.largeTitle)
                    }
                }
                HStack(spacing: 15.0) {
                Button(action: {}) {
                        Text("6")
                            .font(.largeTitle)
                    }
                Button(action: {}) {
                        Text("5")
                            .font(.largeTitle)
                    }
                Button(action: {}) {
                        Text("4")
                            .font(.largeTitle)
                    }
                }
                HStack(spacing: 15.0) {
                Button(action: {}) {
                        Text("3")
                            .font(.largeTitle)
                    }
                Button(action: {}) {
                        Text("2")
                            .font(.largeTitle)
                    }
                }
                HStack(spacing: 15.0) {
                Button(action: {}) {
                        Text("1")
                            .font(.largeTitle)
                    }
                }
            }

            //            Text("Game On")

            VStack {//Opponent Triangle
                HStack {
                    VStack {
                Button(action: {}) {
                            Text("1")
                                .font(.largeTitle)
                        }
                        HStack {
                Button(action: {}) {
                                Text("2")
                                    .font(.largeTitle)
                            }
                Button(action: {}) {
                                Text("3")
                                    .font(.largeTitle)
                            }
                        }
                        HStack {
                            Button(action: {}) {
                                Text("4")
                                    .font(.largeTitle)
                            }
                            Button(action: {}) {
                                Text("5")
                                    .font(.largeTitle)
                            }
                            Button(action: {}) {
                                Text("6")
                                    .font(.largeTitle)
                            }
                        }
                        HStack {
                            Button(action: {}) {
                                Text("7")
                                    .font(.largeTitle)
                            }
                            Button(action: {}) {
                                Text("8")
                                    .font(.largeTitle)
                            }
                            Button(action: {}) {
                                Text("9")
                                    .font(.largeTitle)
                            }
                            Button(action: {}) {
                                Text("10")
                                    .font(.largeTitle)
                            }
                        }
                    }
                }


            }// Ending Opponent Triangle verticle Stack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
