//
//  searchBar.swift
//  CookieSubway
//
//  Created by 종건 on 2022/04/06.
//

import SwiftUI

struct searchBar: View {
    @Binding var text : String
    @State var editText : Bool = false
    
    var body: some View {
        HStack{
            TextField("검색어를 넣어주세요" , text : self.$text)
                .padding(15)
                .padding(.horizontal,15)
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .overlay(
                    HStack{
                        Spacer()
                       
                        if self.editText{
                            Button(action : {
                                self.editText = false
                                self.text = ""
                              
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                            }){
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(Color(.black))
                                    .padding()
                            }
                        }else{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(.black))
                                .padding()
                        }
                       
                    }
                ).onTapGesture {
                    self.editText = true
                }
        }
        
        
    }
}
struct main : View {
    @State var text : String = ""
    struct Ocean: Identifiable {
        let name: String
        let id = UUID()
    }
    private var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]
    var body :some View{
  

      
        NavigationView{
            VStack{
                
                //검색창에서
                searchBar(text: self.$text)
                
                List {
                    Section(header: Text("최신리스트")){
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<10) {row in
                                    NavigationLink(destination: Text("Detail \(row)")) {
                                        Circle()
                                            .fill(Color.blue)
                                            .frame(width: 50, height:50)
                                    }
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("전체리스트")){
                        
                        ForEach((0..<20).filter({"\($0)".contains(self.text) || self.text.isEmpty}), id : \.self)
                        { i in
                            NavigationLink(destination: Text("Detail \(i)")) {
                                Text("Row \(i)")
                            }
                        }
                        
                    }
                    
                }.listStyle(.grouped)
                
                
            }.navigationBarHidden(true)
       }
      
    }
}
struct searchBar_Previews: PreviewProvider {
    static var previews: some View {
        main()
    }
}
