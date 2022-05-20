//
//  Addnewcard.swift
//  Flashcards
//
//  Created by Natalia Locatelli Barbosa on 16/05/22.
//

import SwiftUI

struct Addnewcard: View {
    
    @Binding var notes: [Resume]
    
    @State var title = ""
    @State var resume = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 227/255, green: 227/255, blue: 232/255, opacity: 1)
                    .ignoresSafeArea()
                
                VStack {
                    TextField("Titulo", text: $title)
                        .font(.title2)
                        .padding()
                    Divider()
                    TextEditor(text: $resume)
                        .cornerRadius(10)
                        .frame(height: UIScreen.main.bounds.height * 0.7)
                }
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.background)
                }
                .padding()
                .navigationTitle("Crie seu resumo📝")
                .navigationBarTitleDisplayMode(.inline)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        let newResume = Resume(
                            title: title,
                            description: resume
                        )
                        notes.append(newResume)
                    } label: {
                        Text("Salvar")
                    }
                    .disabled(resume.isEmpty)

                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct Addnewcard_Previews: PreviewProvider {
    static var previews: some View {
        Addnewcard(
            notes: Binding(
                get: { Resume.resumes },
                set: { _ in Resume.resumes = [] }
            )
        )
    }
}

