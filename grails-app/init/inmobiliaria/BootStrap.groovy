package inmobiliaria

class BootStrap {

    def init = { servletContext ->



    // def cliente = new Cliente(
    //     nombre: "Joaquin" ,
    //     apellido: "Gonzalez" ,
    //     sexo: 'M' ,
    //     dni: "37632999" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "joaqin@gmail.com"
    // ).save()

    // def cliente2 = new Cliente(
    //     nombre: "Daniel" ,
    //     apellido: "Varela" ,
    //     sexo: 'M' ,
    //     dni: "37632999" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "daniel@gmail.com"
    // ).save()


    // def propietario = new ClientePropietario(
    //     nombre: "Ernesto" ,
    //     apellido: "Galindez" ,
    //     sexo: 'M' ,
    //     dni: "37632888" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "ernesto@gmail.com"
    // ).save()

    // def propietario2 = new ClientePropietario(
    //     nombre: "Miguel" ,
    //     apellido: "Fadel" ,
    //     sexo: 'M' ,
    //     dni: "37632888" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "mf@gmail.com"
    // ).save()

    // def propiedad = new Propiedad(
    //     tipo: "Casa" ,
    //     ubicacion: "Valle Viejo" ,
    //     operacion: "Alquiler" ,
    //     direccion: "calle sn" ,
    //     descripcion: "descripcion aqui " ,
    //     precio: 2345 ,
    //     estado: true ,
    //     oferta: false ,
    //     propietario: propietario
    // ).save()

    // def propiedad2 = new Propiedad(
    //     tipo: "Oficina" ,
    //     ubicacion: "Capital" ,
    //     operacion: "Venta" ,
    //     direccion: "calle sn" ,
    //     descripcion: "descripcion aqui " ,
    //     precio: 25 ,
    //     estado: false ,
    //     oferta: true ,
    //     propietario: propietario2
    // ).save()

    // def contrato = new Contrato(
    //     fechaOperacion: new Date() ,
    //     monto:  2500 ,
    //     comision: 1000 ,
    //     fechaCaducidad: new Date() ,
    //     propiedad: propiedad ,
    //     propietario:  propiedad.propietario ,
    //     cliente:  cliente 
    // ).save()

    // def contrato2 = new Contrato(
    //     fechaOperacion: new Date() ,
    //     monto:  2500 ,
    //     comision: 1000 ,
    //     fechaCaducidad: new Date() ,
    //     propiedad: propiedad2 ,
    //     propietario:  propiedad2.propietario ,
    //     cliente:  cliente2 
    // ).save()



    // def usu = new Usuario(nombreUsuario: "JoseToloza", nombre:"Jose Maria", apellido: "Toloza", contrasena: "12341", email: "tolozajosemaria@gmail.com")
    //     if(!usu.save(flush: true)) {
    //         usu.errors.each{
    //         println it
    //     }
    // }
    
    // def rol = new Rol(authority: "ADMINISTRADOR")
    //     if(!rol.save(flush: true)) {
    //         rol.errors.each{
    //         println it
    //     }
    // }

    // def usuarioRol = new UsuarioRol(usuario: usu, rol: rol)
    //     if(!usuarioRol.save(flush: true)) {
    //         usuarioRol.errors.each{
    //         println it
    //     }
    // }

    // def usu2 = new Usuario(nombreUsuario: "AbelVarela" , nombre: "Abel Alejandro", apellido: "Varela", contrasena: "1234", email: "abel.varelaa@gmail.com")
    //     if(!usu2.save(flush: true)) {
    //         usu2.errors.each{
    //         println it
    //     }
    // }

    // def rol2 = new Rol(authority: "OPERADOR")
    //     if(!rol2.save(flush: true)) {
    //         rol2.errors.each{
    //             println it
    //         }
    // }

    // def usuarioRol2 = new UsuarioRol(usuario: usu2, rol: rol2)
    //     if(!usuarioRol2.save(flush: true)) {
    //         usuarioRol2.errors.each{
    //             println it
    //         }
    //     }

    // def usu3 = new Usuario(nombreUsuario: "FedeMartinez" , nombre: "Lucas Federico", apellido: "Martinez", contrasena: "1111", email: "federico.martinez_@hotmail.com")
    //     if(!usu3.save(flush: true)) {
    //         usu3.errors.each{
    //         println it
    //     }
    // }


    // def usuarioRol3 = new UsuarioRol(usuario: usu3, rol: rol2)
    //     if(!usuarioRol3.save(flush: true)) {
    //         usuarioRol3.errors.each{
    //             println it
    //         }
    //     }

    
    }
    

    def destroy = {
    }
}
