package inmobiliaria

class BootStrap {

    def init = { servletContext ->



    def cliente = new Cliente(
        nombre: "Joaquin" ,
        apellido: "Gonzalez" ,
        sexo: 'M' ,
        dni: "37632999" ,
        fechaNacimiento: new Date() ,
        domicilio: "San antonio" ,
        telefono: "383-4021123" ,
        email: "joaqin@gmail.com"
    ).save()

    def propiedad = new Propiedad(
        tipo: "Casa" ,
        ubicacion: "Valle Viejo" ,
        direccion: "calle sn" ,
        descripcion: "descripcion aqui " ,
        precio: 2345 ,
    ).save()

    def propietario = new ClientePropietario(
        nombre: "Ernesto" ,
        apellido: "Galindez" ,
        sexo: 'M' ,
        dni: "37632888" ,
        fechaNacimiento: new Date() ,
        domicilio: "San antonio" ,
        telefono: "383-4021123" ,
        email: "ernesto@gmail.com"
    ).save()


    def contrato = new Contrato(
        fechaOperacion: new Date() ,
        monto:  2500 ,
        comision: 1000 ,
        fechaCaducidad: new Date() ,
        propiedad: propiedad ,
        propietario:  propietario ,
        cliente:  cliente ,
    ).save()







    }
    def destroy = {
    }
}
