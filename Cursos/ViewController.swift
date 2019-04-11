//
//  ViewController.swift
//  Cursos
//
//  Created by Jeferson Bujaico on 4/11/19.
//  Copyright © 2019 JeffRay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    //  Creacion de variable de TableView
    @IBOutlet weak var cursosTVC: UITableView!
    @IBAction func addCurso(_ sender: Any) {
        performSegue(withIdentifier: "addCursoS", sender: nil)
    }
    
    
    
    //  Llamada a la clase Curso
    var cursos:[Curso] = []
    
    //Creación de variables
    var nTeoFinal:Int = 0
    var nLabFinal:Int = 0
    var l1 = 0, l2 = 0
    var indexSeleccionado:Int = 0
    
    //  Agregando valores a nuestra clase Curso
    func crearCursos() -> [Curso] {
        let curso1 = Curso()
        curso1.nombre = "Matemática"
        curso1.nLab1 = 15
        curso1.nLab2 = 05
        curso1.nLab3 = 11
        curso1.nTeo1 = 19
        curso1.nTeo2 = 15
        curso1.nTeo3 = 17
        return [curso1]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cursos = crearCursos()
        
        cursosTVC.dataSource = self
        cursosTVC.delegate = self
        
    }
    
    //== FUNCIONES DE DATASOURCE Y DELEGATE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cursos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let curso = cursos[indexPath.row]
        //  Almacenando valores de luego realizar una sua para saber el total de las notas de los cursos de laboratorio
//        l1 = curso.nLab1
//        l2 = curso.nLab2
//        nLabFinal = l1 + l2
        // Manera usando datos externos para convertir de un int a string
//        let ifinal = nLabFinal as NSNumber
//        let final:String = ifinal.stringValue
        //Manera usando datos internos de Swift, para converti de int a string
//        let final:String = String(nLabFinal)
        //Le damos un valor a mostrar en nuestra celdas
//        cell.textLabel?.text = final
        cell.textLabel?.text = curso.nombre
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let sigVC = segue.destination as! AddCursoVC
//        sigVC.antVC = self
        if segue.identifier == "addCursoS"{
            let sigVC = segue.destination as! AddCursoVC
            sigVC.antVC = self
        }
        if segue.identifier == "selectCursoS"{
            let sigVC = segue.destination as! viewCursoVC
            sigVC.curso = sender as? Curso
            sigVC.antVC = self
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexSeleccionado = indexPath.row
        let curso = cursos[indexPath.row]
        performSegue(withIdentifier: "selectCursoS", sender: curso)
    }


}

