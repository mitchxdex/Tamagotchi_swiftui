//
//  controlador_general.swift
//  maquina_de_estados
//
//  Created by alumno on 9/9/26.
//

import Foundation

@Observable
class ControladorGeneral{
    var tamagotchi: Tamagotchi
    
    init(tamagotchi_a_cargar: Tamagotchi? = nil) {
        if let tamagotchi_a_cargar = tamagotchi_a_cargar{
            self.tamagotchi = tamagotchi_a_cargar
        }
        else {
            self.tamagotchi = Tamagotchi(
                nombre: "Inicial",esta_vivo: false,
                edad: 0, hambre: 100, cansancio: 100,
                limpio: 0, aburrido: 0)
        }
    }
    
    func cambiar_nombre(_ nombre_nuevo: String)-> Bool{
        if tamagotchi.esta_vivo{
            tamagotchi.nombre = nombre_nuevo
            
        }
        return tamagotchi.esta_vivo
    }
    func matarlo() -> Bool{
        if  tamagotchi.esta_vivo{
            tamagotchi.esta_vivo = false
            return true
        }
        return false
        
    }
    func revivir() -> Bool{
        if  !tamagotchi.esta_vivo{
            tamagotchi.esta_vivo = true
            return true
        }
        return false
    }

}
