//
//  ContentView.swift
//  Flashcards
//
//  Created by Natalia Locatelli Barbosa on 12/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var edit = false
    
    @State var notes = Resume.resumes
    
    @State var isPresenting = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                GroupBox {
                    Button {
                        isPresenting.toggle()
                    }
                label: {
                    VStack(spacing: 8){
                        Text("Add novo card").bold()
                            .accentColor(.green)
                    }.frame(
                        width:UIScreen.main.bounds.width*0.8,
                        height: UIScreen.main.bounds.height*0.03
                    )
                }
                }
                HStack{
                    Text("📚Biblioteca").bold().font(.title)
                }.frame(width: UIScreen.main.bounds.width*0.9, alignment: .leading)
                
                ScrollView{
                    ForEach(notes, id:\.self) { item in
                        CardView(resume: item)
                    }
                }
                
                Spacer()
                    .navigationTitle("Olá, estudante!🎓")
            }
            .sheet(isPresented: $isPresenting) {
                Addnewcard(notes: $notes)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
