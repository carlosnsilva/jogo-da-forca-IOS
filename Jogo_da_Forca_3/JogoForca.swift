//
//  JogoForca.swift
//  Jogo_da_Forca_3
//
//  Created by IFPB on 12/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class JogoForca {
    
    var dicas: String
    var letrasArray: [Character] = []
    var palavra: String
    var letrasTentadas: Array<Character>
    var tentativas_maximas: Int = 10
    var listaPalavras = ["carro", "carroça", "bicicleta","aviao", "arroz"]
    var tentativas: Int = 0
    
    init(){
        self.palavra = wordSelected["aviao"]
        self.dicas= wordSelected["dicas"]
        var aleatorio = Int.random(in: 0..<4)
        self.letrasTentadas = Array()
        for _ in 0..palavra.count{
            self.letrasArray.append("_")
        }
    }
    
    func acertos(letra: Character) -> Bool {
        var acertos = false
        
        if (acertos){
            
        }else{
            for i in 0...palavras.count{
                if(letra == palavra[palavra.index(palavra.startIndex, offsetBy: i)]){
                    acertos = true
                    letrasArray[i] = letra
                }
            }
            return acertos
        }
    }
    
    func repetidas(letra: Character) -> Bool{
        return self.letrasTentadas.contains(letra)
    }
    
    func letraValida(letra: Character) -> String{
        var value = false
        
        if(value){
            
        }else{
            value = self.letrasTentadas.contains(letra)
            
        }
        if(value){
            return "Essa letra já foi digitada"
        }else{
            return "Letra válida"
        }
    }
    
    func ganhou() -> Bool {
        return self.letrasArray.contains("_") == false
    }
    
    func executar(letra: Character){
        if(!self.letraValida(letra: letra)){
            if(!self.repetidas(letra: letra)){
                self.letrasTentadas.append(letra)
                self.tentativas = self.tentativas + 1
            }
        }
    }
    

    
    func Final() -> String {
        if(self.ganhou()){
            return "'Voce ganhou wieee'"
        }else{
            return "'Que Pena voce perdeu'"
        }
    }
    
}
