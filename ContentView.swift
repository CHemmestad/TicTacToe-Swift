//
//  ContentView.swift
//  TicTacToe
//
//  Created by Caleb Hemmestad on 5/13/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerTurn = 1
    @State var playerXScore = 0
    @State var playerOScore = 0
    
    @State var one = 0
    @State var two = 0
    @State var thr = 0
    @State var fou = 0
    @State var fiv = 0
    @State var six = 0
    @State var sev = 0
    @State var eig = 0
    @State var nin = 0
    
    @State var winner = 0
    
    func check() {
        if
        one+two+thr == 3 ||
        fou+fiv+six == 3 ||
        sev+eig+nin == 3 ||
        one+fou+sev == 3 ||
        two+fiv+eig == 3 ||
        thr+six+nin == 3 ||
        one+fiv+nin == 3 ||
        thr+fiv+sev == 3 {
            winner = 1
            playerTurn = 1
            playerXScore += 1
        }
        else if
        one+two+thr == 30 ||
        fou+fiv+six == 30 ||
        sev+eig+nin == 30 ||
        one+fou+sev == 30 ||
        two+fiv+eig == 30 ||
        thr+six+nin == 30 ||
        one+fiv+nin == 30 ||
        thr+fiv+sev == 30 {
            winner = 2
            playerTurn = 1
            playerOScore += 1
        }
        else {
            if one+two+thr+fou+fiv+six+sev+eig+nin > 44 {
                winner = 3
                playerTurn = 1
            }
        }
    }
    
    var body: some View {
        
        ZStack {
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Spacer()
                    VStack{
                        Text("Player X's Score")
                            .font(.headline)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding(1)
                        Text(String(playerXScore))
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    VStack{
                        Text("Player O's Score")
                            .font(.headline)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding(1)
                        Text(String(playerOScore))
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                }
                .padding()
                Spacer()
                ZStack {
                    Button(action: {
                        one = 0
                        two = 0
                        thr = 0
                        fou = 0
                        fiv = 0
                        six = 0
                        sev = 0
                        eig = 0
                        nin = 0
                        playerXScore = 0
                        playerOScore = 0
                        playerTurn = 1
                    }, label: {
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(25)
                    })
                }
            }
            ZStack{
                Image("Grid")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Spacer()
                        Image("Player"+String(one))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Image("Player"+String(two))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Image("Player"+String(thr))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        Spacer()
                        Image("Player"+String(fou))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Image("Player"+String(fiv))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Image("Player"+String(six))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        Spacer()
                        Image("Player"+String(sev))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Image("Player"+String(eig))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Image("Player"+String(nin))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                }
                
                VStack{
                    Spacer()
                    Spacer()
                    HStack{
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if one == 0 {
                                    if playerTurn == 1 {
                                        one = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        one = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                        }
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if two == 0 {
                                    if playerTurn == 1 {
                                        two = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        two = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                        }
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if thr == 0 {
                                    if playerTurn == 1 {
                                        thr = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        thr = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                            Spacer()
                        }
                    }
                    
                    HStack{
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if fou == 0 {
                                    if playerTurn == 1 {
                                        fou = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        fou = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                        }
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if fiv == 0 {
                                    if playerTurn == 1 {
                                        fiv = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        fiv = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                        }
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if six == 0 {
                                    if playerTurn == 1 {
                                        six = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        six = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                            Spacer()
                        }
                    }
                    
                    HStack{
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if sev == 0 {
                                    if playerTurn == 1 {
                                        sev = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        sev = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                        }
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if eig == 0 {
                                    if playerTurn == 1 {
                                        eig = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        eig = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                        }
                        Spacer()
                        if winner == 0 {
                            Button(action: {
                                if nin == 0 {
                                    if playerTurn == 1 {
                                        nin = 1
                                        playerTurn = 10
                                        check()
                                    }
                                    else if playerTurn == 10 {
                                        nin = 10
                                        playerTurn = 1
                                        check()
                                    }
                                }
                            }, label: {
                                Text("  ")
                                    .padding(50)
                            })
                        }
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
            }
            VStack {
                if winner > 0 {
                        Image("Winner"+String(winner))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Button(action: {
                        one = 0
                        two = 0
                        thr = 0
                        fou = 0
                        fiv = 0
                        six = 0
                        sev = 0
                        eig = 0
                        nin = 0
                        winner = 0
                        }
                    , label: {
                        Text("Tap to Play Again")
                            .bold()
                            .font(.largeTitle)
                            .padding()
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
