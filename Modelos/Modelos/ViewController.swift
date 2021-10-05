//
//  ViewController.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var restaurantes : [Restaurant] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurant") as! CeldaRestaurantController
        celda.lblNombre.text = restaurantes[indexPath.row].nombre
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    override func viewDidLoad() {
        self.title = "Restaurantes"
        
        super.viewDidLoad()
        restaurantes.append(Restaurant(nombre: "La hamburguesa feliz", direccion: "Calle Dos #123", horario: "12 pm a 10 pm"))
        restaurantes.append(Restaurant(nombre: "Carnitas el puerco", direccion: "Calle Tres #456", horario: "10 am a 4 pm"))
        restaurantes.append(Restaurant(nombre: "Pollos Asados el piolin", direccion: "Calle Cindo #789", horario: "11 am a 5 pm"))

    }


}
