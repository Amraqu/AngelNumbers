//
//  ContentView.swift
//  AngelNumbers
//
//  Created by Amra Kurtovic on 6. 3. 2023..
//

import SwiftUI


struct ContentView: View {
    @State private var searchText = ""
    @ObservedObject var datas = ReadData()
    @State private var selectedItem: Number?
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(usersNumber.prefix(5), id: \.numberId) { user in
                    Button(action: {
                        self.selectedItem = user
                    }, label: {
                        RowView(title: user.numberId)                    
                    })
                }
                .listRowBackground(Color("rowcolor"))
                .listRowSeparator(.automatic)
                
                
            }
            .background(Color(.white) .scaledToFill() .edgesIgnoringSafeArea(.all))
            .scrollContentBackground(.hidden)            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    LogoView()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, prompt: "Your angel numbers")
            .popover(item: $selectedItem) { item in
                HStack {
                    ScrollView {
                        VStack(alignment: .center, spacing: 10) {
                            Rectangle()
                                .cornerRadius(30)
                                .foregroundColor(.secondary)
                                .frame(width: 200, height: 6, alignment: .center)
                                .padding(10)
                                                        
                                .font(.title3)
                                .shadow(radius: 1)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                            
                            LogoView2()
                            
                            Spacer()
                            
                            Text(item.numberId)
                                .font(.title3)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                
                        }
                        Text(item.meaning)
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .multilineTextAlignment(.leading)
                            .lineSpacing(7)
                        
                    }
                }.background(Color("bgljubicasta"))
            }
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .padding(.all)
                    .foregroundColor(Color("bgljubicasta"))
                
                VStack (alignment: .listRowSeparatorLeading, spacing: 1) {
                    Text("What do angel numbers mean? ")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.trailing)
                    Text("In numerology, angel numbers are a repetitive sequence of three or four numbers that appear in seemingly random places in your life to convey a spiritual or divine message. If you were to have seen a different number, the message might be different because on top of the repetition itself containing meaning, individual numbers all have their own significance too. Let’s get into it! ")
                        .font(.body)
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                
            }
        }
    }
    
    var usersNumber: [Number] {
        if searchText.isEmpty {
            return datas.numbers
        }
        
        return datas.numbers.filter{ $0.numberId.contains(searchText) }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


