//
//  pantalla_usuario.swift
//  maquina_de_estados
//
//  Created by alumno on 9/9/26.
//
import SwiftUI

struct PantallaInicial: View {
    @State var controlador_tamagotchi: ControladorGeneral =
    ControladorGeneral()
    @State var nombre_nuevo = ""
    
    var body: some View{
        Text("Su nombre es:\(controlador_tamagotchi.tamagotchi.nombre)")
        
        if(controlador_tamagotchi.tamagotchi.esta_vivo){
            Text("Tu tamagotchi ESTA VIVO")
        }
        else{
            Text("ESTA MUERTO Y LO MATASTE")
        }
        
        TextField("place holder: Nombre nuevo tamagotchi",text: $nombre_nuevo)
        Button("cambiar nombre"){
            //controlador_tamagotchi.tamagotchi.esta_vivo = true
            controlador_tamagotchi.cambiar_nombre(nombre_nuevo)
        }
        
        HStack{
            Button("Revivir"){
                controlador_tamagotchi.revivir()
            }
            
            Spacer()
            
            Button("Matarlo"){
                controlador_tamagotchi.matarlo()
            }
        }
       
        
      
    }
}

#Preview {
    PantallaInicial()
}
