//
//  ViewController.swift
//  Jogo_da_Forca_3
//
//  Created by IFPB on 12/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var campoDica: UILabel!
    
    
    @IBOutlet weak var campoTentativas: UILabel!
    
    @IBOutlet weak var campoQuantidade: UILabel!
    
    @IBOutlet weak var letras: UILabel!
    
    @IBOutlet weak var campoLetra: UILabel!
    
    var jogo: JogoForca!
    
    @IBAction func botaoJogar(_ sender: Any) {
        var letra = Character(self.campoLetra.text!)
        self.jogo.executar(letra: letra)
        if(self.jogo.encerrou()){
            let result = self.storyboard?.instantiateViewController(identifier: "result_view") as! viewResultadoController
            result.resultado = self.jogo.Final()
            result.present(result, animated: true, completion: nil)
            self.jogo = JogoForca()
        }
        
        self.atualizaJogo()
        self.campoLetra.text=''
    }
    
    func atualizaJogo(){
        self.campoTentativas.text = "'Tentativas:  \(self.jogo.tentativa)'"
        self.letras.text = String(self.joga.letrasTentada)
        self.campoDica().text = self.jogo.dica
        self.campoQuantidade.text = "Esta palavra contem \(self.jogo.palavra.count) as letras"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jogo = JogoForca()
        self.atualizaJogo()
    }


}

