//
//  viewResultadoController.swift
//  Jogo_da_Forca_3
//
//  Created by IFPB on 12/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class viewResultadoController: UIViewController {
    
    var result : String = "'"''"

    
    
    @IBAction func botaoVoltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.labelResult.text = self.resultado
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
