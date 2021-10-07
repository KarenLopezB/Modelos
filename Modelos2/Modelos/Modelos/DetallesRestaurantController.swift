//
//  DetallesRestaurantController.swift
//  modelosJesus
//
//  Created by Alumno on 10/6/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestaurantController : UIViewController{
    
    var restaurant : Restaurant = Restaurant(nombre: "", direccion: "", horario: "")

    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var lblDirreccion: UILabel!
    
    override func viewDidLoad() {
        self.title = restaurant.nombre
        
        lblDirreccion.text = restaurant.direccion
        lblHorario.text = restaurant.horario
    }
}
