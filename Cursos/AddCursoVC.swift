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
    
    var nteo1:Int64 = 0
    var nteo2:Int64 = 0
    var nteo3:Int64 = 0
    var nlab1:Int64 = 0
    var nlab2:Int64 = 0
    var nlab3:Int64 = 0
    var nteoFinal:Int64 = 0
    var nlabFinal:Int64 = 0
    var nfinal:Int64 = 0

    /*Borrrando para el datasource
    //  Llamada a nuestro princiapl VC
    var antVC = ViewController()*/
    
    //  funciones para realizar ciertas tareas
    @IBAction func addCurso(_ sender: Any) {
        //agregado para usar el datasource
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let curso = Curso(context: context)
        //borrando para el datasource
//        let curso = Curso()
        curso.nombre = txtNameCurso.text!
        
        //        convertir de un string a int teoria
        teo1 = txtTeo1.text!
        teo2 = txtTeo2.text!
        teo3 = txtTeo3.text!
        lab1 = txtLab1.text!
        lab2 = txtLab2.text!
        lab3 = txtLab3.text!
        
        //  convirtiendo a int pra subir notas
        nteo1 = Int64(teo1)!
        nteo2 = Int64(teo2)!
        nteo3 = Int64(teo3)!
        nlab1 = Int64(lab1)!
        nlab2 = Int64(lab2)!
        nlab3 = Int64(lab3)!
        
        nteoFinal = (nteo1 + nteo2 + nteo3) / 3
        nlabFinal = (nlab1 + nlab2 + nlab3) / 3
        
        nfinal = (nteoFinal + nlabFinal) / 2
//        print(nfinal)
        
        //  llamando el valor
        curso.nTeo1 = nteo1
        curso.nTeo2 = nteo2
        curso.nTeo3 = nteo3
        curso.nLab1 = nlab1
        curso.nLab2 = nlab2
        curso.nLab3 = nlab3
        curso.nFinal = nfinal
        
        
        /*borrando para el data source
        //  agregando a curso
        antVC.cursos.append(curso)
        antVC.cursosTVC.reloadData()
 */
        
        //agregando para dataSource
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
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
