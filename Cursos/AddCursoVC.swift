//
//  AddCursoVC.swift
//  Cursos
//
//  Created by Jeferson Bujaico on 4/11/19.
//  Copyright © 2019 JeffRay. All rights reserved.
//

import UIKit

class AddCursoVC: UIViewController {

    //  Declaración de variables de nuestro VC
    @IBOutlet weak var txtNameCurso: UITextField!
    @IBOutlet weak var txtTeo1: UITextField!
    @IBOutlet weak var txtTeo2: UITextField!
    @IBOutlet weak var txtTeo3: UITextField!
    @IBOutlet weak var txtLab1: UITextField!
    @IBOutlet weak var txtLab2: UITextField!
    @IBOutlet weak var txtLab3: UITextField!
    
    //  variables
    var teo1:String = ""
    var teo2:String = ""
    var teo3:String = ""
    var lab1:String = ""
    var lab2:String = ""
    var lab3:String = ""
    
    //  Llamada a nuestro princiapl VC
    var antVC = ViewController()
    
    //  funciones para realizar ciertas tareas
    @IBAction func addCurso(_ sender: Any) {
        let curso = Curso()
        curso.nombre = txtNameCurso.text!
        
        //        convertir de un string a int teoria
        teo1 = txtTeo1.text!
        teo2 = txtTeo2.text!
        teo3 = txtTeo3.text!
        lab1 = txtLab1.text!
        lab2 = txtLab2.text!
        lab3 = txtLab3.text!
        
        //  llamando el valor
        curso.nTeo1 = Int(teo1)!
        curso.nTeo2 = Int(teo2)!
        curso.nTeo3 = Int(teo3)!
        curso.nLab1 = Int(lab1)!
        curso.nLab2 = Int(lab2)!
        curso.nLab3 = Int(lab3)!
        
        //  agregando a curso
        antVC.cursos.append(curso)
        antVC.cursosTVC.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
