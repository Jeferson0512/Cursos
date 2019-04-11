//
//  viewCursoVC.swift
//  Cursos
//
//  Created by Jeferson Bujaico on 4/11/19.
//  Copyright © 2019 JeffRay. All rights reserved.
//

import UIKit

class viewCursoVC: UIViewController {
    
    var curso:Curso? = nil
    var antVC = ViewController()
    
    //  Declaración de etiquetas
    @IBOutlet weak var nombreCurso: UILabel!
    @IBOutlet weak var promTeoFinal: UILabel!
    @IBOutlet weak var promLabFinal: UILabel!
    @IBOutlet weak var promFinal: UILabel!
    @IBOutlet weak var nTeo1: UILabel!
    @IBOutlet weak var nTeo2: UILabel!
    @IBOutlet weak var nTeo3: UILabel!
    @IBOutlet weak var nLab1: UILabel!
    @IBOutlet weak var nLab2: UILabel!
    @IBOutlet weak var nLab3: UILabel!
    
    @IBOutlet weak var notaFFinal: UILabel!
    //    declaracion de variables de notas {teoria y laboratorio}
    var nteo1:Int64 = 0
    var nteo2:Int64 = 0
    var nteo3:Int64 = 0
    var nlab1:Int64 = 0
    var nlab2:Int64 = 0
    var nlab3:Int64 = 0
    
    //  declaracion de variables para notas finanles tanto para teoria y laboratorio
    var nteofinal:Int64 = 0
    var nlabfinal:Int64 = 0
    var notafinal:Int64 = 0
    
    var nffinal: Int64 = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        if curso!.aprobado{
//
//        }
        nombreCurso.text = curso?.nombre
        
        //  notas de teoria
        nteo1 = (curso?.nTeo1)!
        nteo2 = (curso?.nTeo2)!
        nteo3 = (curso?.nTeo3)!
        nTeo1.text = String(nteo1)
        nTeo2.text = String(nteo2)
        nTeo3.text = String(nteo3)
        
        //  notas de laboratorio
        nlab1 = (curso?.nLab1)!
        nlab2 = (curso?.nLab2)!
        nlab3 = (curso?.nLab3)!
        nLab1.text = String(nlab1)
        nLab2.text = String(nlab2)
        nLab3.text = String(nlab3)
        
        nffinal = (curso?.nFinal)!
        
        //  notas finales de Teoria y Laboratorio
        nteofinal = (nteo1 + nteo2 + nteo3) / 3
        promTeoFinal.text = String(nteofinal)
        nlabfinal = (nlab1 + nlab2 + nlab3) / 3
        promLabFinal.text = String(nlabfinal)
//
//        //  Nota final redondeado
        notafinal = (nteofinal + nlabfinal) / 2
        promFinal.text = String(notafinal)
        notaFFinal.text = String(nffinal)
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
