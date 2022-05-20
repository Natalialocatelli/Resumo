//
//  CardView.swift
//  Flashcards
//
//  Created by Natalia Locatelli Barbosa on 19/05/22.
//

import SwiftUI

struct CardView: View {
    
    @State var edit = false
    
    let resume: Resume
    
    var body: some View {
        GroupBox {
            DisclosureGroup(resume.title){
                Divider()
                Text(resume.description)
                Button {
                    edit.toggle()// mostrar outra sheet
                } label: {
                    Text("Editar").bold()
                }
                .buttonStyle(.bordered)
                .foregroundColor(.green)

            }
            .accentColor(.green)
            .foregroundColor(.black)
        }
        .frame(width: UIScreen.main.bounds.width*0.9)
        .sheet(isPresented: $edit) {
            Text("EDIT \(resume.title)")
            
        }
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(resume: Resume(title: "Lorem Ipsum", description: "Lorem Ipsum"))
    }
}
