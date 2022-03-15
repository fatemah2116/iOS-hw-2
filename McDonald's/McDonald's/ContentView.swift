//
//  ContentView.swift
//  McDonald's
//
//  Created by fati on 15/03/2022.
//

import SwiftUI

struct ContentView: View {
    var bigtesti = 2.1
    var waber = 1.9
    var happymil = 0.5
    @State var f1 = 0
    @State var f2 = 0
    @State var f3 = 0
    @State var acunt = 0.0
    @State var money = ""
    @State var msg = ""
    var body: some View {
        VStack{
          
                Text("McDonald's")
                    .font(.title)
                Image("111")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 130, alignment: .center)
                Text("menu")
                    .font(.title3)
                HStack{
                    Stepper("\(f1)",value: $f1,in:0...12)
                    
                    
                Text("2.1 Kd")
                    Spacer()
                    Text("BigTasty")
                    Image("222")
                        .resizable()
                        .frame(width: 80, height: 80)
                  
                    }
                HStack{
                    Stepper("\(f2)",value: $f2,in:0...12)
                    
                Text(" 1.9Kd")
                    Spacer()
                    Text("ChickenMac")
                    Image("333")
                        .resizable()
                        .frame(width: 80, height: 80)
                }
                HStack{
                    Stepper("\(f3)",value: $f3,in:0...12)
                    
                Text("0.5 Kd")
                    Spacer()
                    Text(" Fanta")
                    Image("444")
                        .resizable()
                        .frame(width: 50, height: 80)
                }
                Group{
                    HStack{
                        TextField("مبلغ",text:$money)
                        Text("your money")
                    }
                    Text("فاتوره")
                        .font(.largeTitle)
                        .background(.red)
                        .cornerRadius(10)
                        .onTapGesture {
                            let p1 = bigtesti * Double(f1)
                            let p2 = waber * Double (f2)
                            let p3 = happymil * Double(f3)
                            acunt = p1 + p2 + p3
                            if (acunt > Double(money) ?? 0 ){
                                msg = "فشلت العمليه"
                            }
                            else { msg = "نجحت العملیه"}
                           }
                    Text("مبلغ الاجمالي \(acunt)")
                    Text(msg)
                    
                     }
                
                
            
            
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
