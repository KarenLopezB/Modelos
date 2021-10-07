//
//  ViewController.swift
//  modelosJesus
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaRestaurantesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var restaurantes : [Restaurant] = []
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesRestaurantController
        destino.restaurant = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
    }

    override func viewDidLoad() {
        self.title = "Restaurantes"
        
        super.viewDidLoad()
        restaurantes.append(Restaurant(nombre: "La hamburguesa feliz", direccion: "Calle Dos #123", horario: "De 12 pm a 10 pm"))
        restaurantes.append(Restaurant(nombre: "Carnitas del Mora", direccion: "Calle Tres #456", horario: "De 10 am a 4 pm"))
        restaurantes.append(Restaurant(nombre: "Pollos locos el Andres", direccion: "Calle Cuatro #789", horario: "De 1 pm a 8 pm"))
    }


}

