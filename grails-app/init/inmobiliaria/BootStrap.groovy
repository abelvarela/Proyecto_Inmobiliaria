package inmobiliaria

class BootStrap {

    def init = { servletContext ->



    // def cliente = new Cliente(
    //     nombre: "Gabriel" ,
    //     apellido: "Heinze" ,
    //     sexo: 'M' ,
    //     dni: "37632990" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "gh@gmail.com"
    // ).save(flush: true)

    // def cliente2 = new Cliente(
    //     nombre: "Lucas" ,
    //     apellido: "Bernardi" ,
    //     sexo: 'M' ,
    //     dni: "37632949" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "lb@gmail.com"
    // ).save(flush: true)


    // def propietario = new ClientePropietario(
    //     nombre: "Gerardo" ,
    //     apellido: "Martino" ,
    //     sexo: 'M' ,
    //     dni: "37632818" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "gm@gmail.com"
    // ).save(flush: true)

    // def propietario2 = new ClientePropietario(
    //     nombre: "Lionel" ,
    //     apellido: "Messi" ,
    //     sexo: 'M' ,
    //     dni: "37632858" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "San antonio" ,
    //     telefono: "383-4021123" ,
    //     email: "liomessi@gmail.com"
    // ).save(flush: true)

    // def propietario3 = new ClientePropietario(
    //     nombre: "Marcelo" ,
    //     apellido: "Bielsa" ,
    //     sexo: 'M' ,
    //     dni: "74899091" ,
    //     fechaNacimiento: new Date() ,
    //     domicilio: "Parque Independencia" ,
    //     telefono: "383-4021123" ,
    //     email: "marcelobielsa@gmail.com"
    // ).save(flush: true)

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
    // ).save(flush: true)

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
    // ).save(flush: true)

    // def contrato = new Contrato(
    //     fechaOperacion: new Date() ,
    //     monto:  2500 ,
    //     comision: 1000 ,
    //     fechaCaducidad: new Date() ,
    //     propiedad: propiedad ,
    //     propietario:  propiedad.propietario ,
    //     cliente:  cliente 
    // ).save(flush: true)

    // def contrato2 = new Contrato(
    //     fechaOperacion: new Date() ,
    //     monto:  2500 ,
    //     comision: 1000 ,
    //     fechaCaducidad: new Date() ,
    //     propiedad: propiedad2 ,
    //     propietario:  propiedad2.propietario ,
    //     cliente:  cliente2 
    // ).save(flush: true)



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
