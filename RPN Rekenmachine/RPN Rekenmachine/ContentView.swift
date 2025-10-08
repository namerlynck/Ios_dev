//
//  ContentView.swift
//  RPN Rekenmachine
//
//  Created by Nathan Amerlynck on 08/10/2025.
//

import SwiftUI

struct ContentView: View {
    //@State var number = 3
    @State var number2 = MyNumber()
    @State var result = "Text"
    var body: some View {
        VStack {
            HStack{
                TextEditor(text: .constant(result)).frame(width: 100).frame(height: 150).padding().foregroundColor(Color.gray).background(Color.gray)
                Grid{
                    GridRow{
                        ForEach(7..<10){
                            number in
                            CalcBtn(label:"\(number)"){
                                //action later meegeven
                            }
                        }
                        CalcBtn(label:"/"){
                            
                        }
                    }
                    GridRow{
                        ForEach(4..<7){
                            number in
                            CalcBtn(label:"\(number)"){
                                //action later meegeven
                            }
                        }
                        CalcBtn(label:"*"){
                            
                        }
                    }
                    GridRow{
                        ForEach(1..<4){
                            number in
                            CalcBtn(label:"\(number)"){
                                //action later meegeven
                            }
                        }
                        CalcBtn(label:"-"){
                            
                        }
                    }
                    GridRow{
                        CalcBtn(label:"0"){
                            
                        }
                        Text(" ")
                        Text(" ")
                        CalcBtn(label:"+"){
                            
                        }
                    }
                    GridRow{
                        CalcBtn(label:"Clear"){
                            //placeholder action
                            number2.increment()
                            //number += 1
                            //number kan niet worden aangepast zonder @State omdat het deel is van andere view
                        }.gridCellColumns(2)
                        CalcBtn(label:"Enter"){
                            
                        }.gridCellColumns(2)
                    }
                }
            }
            Button("Show Stack"){}.frame(maxWidth: .infinity, alignment: .leading).colorInvert().padding()
            
            }
        .padding()
        }
    }
#Preview {
    ContentView()
}

