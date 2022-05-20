//
//  Cardlist.swift
//  Flashcards
//
//  Created by Natalia Locatelli Barbosa on 16/05/22.
//

import Foundation

// title
// resume
// let newResume = Resume(title, resume)
// Resume.resumes.append(newResume)
struct Resume: Hashable {
    var id = UUID()
    var title: String
    var description: String
    
    static var resumes: [Resume] = [
        Resume (title: "Primeira Guerra", description: "A Primeira Guerra Mundial foi um conflito envolvendo vários países entre 1914 e 1918, na Europa. As origens remontam a meados do século XIX, quando as grandes potências europeias disputavam entre si mercado consumidor, matéria-prima e metais preciosos na Ásia e na África. Essa disputa levou à corrida armamentista, ou seja, investimento em armamentos potentes caso houvesse enfrentamento entre essas potências."),
        Resume(title:"Segunda Guerra", description: "A Segunda Guerra Mundial foi um conflito de proporções globais que aconteceu entre 1939 e 1945. Caracterizada como um conflito em estado de guerra total (no qual há mobilização de todos os recursos para a guerra), a Segunda Guerra Mundial fez Aliados e Eixo enfrentarem-se na Europa, África, Ásia e Oceania. Após seis anos de conflito, mais de 60 milhões de pessoas morreram."),
        Resume(title: "Guerra Fria", description: "Guerra Fria foi um período de tensão geopolítica entre a União Soviética e os Estados Unidos e seus respectivos aliados, o Bloco Oriental e o Bloco Ocidental, após a Segunda Guerra Mundial. Considera-se geralmente que o período abrange a Doutrina Truman de 1947 até a dissolução da União Soviética em 1991"),
        Resume(title: "Revolução Industrial", description: "Por Revolução Industrial, as ciências humanas compreendem como o período de grande desenvolvimento tecnológico que foi iniciado na Inglaterra a partir da segunda metade do século XVIII. Com o tempo, esse desenvolvimento espalhou-se para outras partes do mundo, como a Europa ocidental e os Estados Unidos. Assim, surgiu a indústria, e as transformações causadas por essa possibilitaram a consolidação do capitalismo."),
        Resume(title: "Primeira Guerra", description: "A Primeira Guerra Mundial foi um conflito envolvendo vários países entre 1914 e 1918, na Europa. As origens remontam a meados do século XIX, quando as grandes potências europeias disputavam entre si mercado consumidor, matéria-prima e metais preciosos na Ásia e na África. Essa disputa levou à corrida armamentista, ou seja, investimento em armamentos potentes caso houvesse enfrentamento entre essas potências."),
        Resume(title: "Segunda Guerra", description: "A Segunda Guerra Mundial foi um conflito de proporções globais que aconteceu entre 1939 e 1945. Caracterizada como um conflito em estado de guerra total (no qual há mobilização de todos os recursos para a guerra), a Segunda Guerra Mundial fez Aliados e Eixo enfrentarem-se na Europa, África, Ásia e Oceania. Após seis anos de conflito, mais de 60 milhões de pessoas morreram."),
        Resume(title: "Guerra Fria", description: "Guerra Fria foi um período de tensão geopolítica entre a União Soviética e os Estados Unidos e seus respectivos aliados, o Bloco Oriental e o Bloco Ocidental, após a Segunda Guerra Mundial. Considera-se geralmente que o período abrange a Doutrina Truman de 1947 até a dissolução da União Soviética em 1991."),
        Resume(title: "Revolução Industrial", description: "Por Revolução Industrial, as ciências humanas compreendem como o período de grande desenvolvimento tecnológico que foi iniciado na Inglaterra a partir da segunda metade do século XVIII. Com o tempo, esse desenvolvimento espalhou-se para outras partes do mundo, como a Europa ocidental e os Estados Unidos. Assim, surgiu a indústria, e as transformações causadas por essa possibilitaram a consolidação do capitalismo.")
        ]
}
