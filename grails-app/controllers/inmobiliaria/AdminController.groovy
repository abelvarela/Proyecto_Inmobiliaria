package inmobiliaria

class AdminController {
    def adminService

    def prueba(){
        def clie = Cliente.get(params.cli)
        println("clie.nombre = "+ clie.nombre)
        println("params.cli = "+ params.cli)
        redirect(action: "index")
    }

    def index() {
        render(view:"admin", model: [listado: Cliente.findAll()])
    }

// ------------------ CLIENTE --------------------------

    def cliente(){
        render(view:"cliente", model: [listado: Cliente.findAll()])
    }

    def altaCliente(){
        [cliente: new Cliente()]
    }

    def guardarAltaCliente(){
        def id = adminService.altaCliente(params)
        redirect(action:"verCliente" , params: [id: id])
    }

    def editarCliente(){
        [cliente: Cliente.get(params.id)]
    }

    def guardarEditarCliente(){
        adminService.editarCliente(params)
        redirect(action:"verCliente" , params: [id: params.id])
    }

    def eliminarCliente(){
        [cliente: Cliente.get(params.id)]
    }

    def confirmarEliminarCliente(){
        adminService.eliminarCliente(new Long(params.id))
        redirect(action:"cliente")
    }

    def verCliente(){
        [cliente: Cliente.get(params.id)]
    }

    def buscarCliente(){
        // def clientes = adminService.buscarCliente(params)
        render(view:"cliente", model: [listado: adminService.buscarCliente(params)])
    }


// ------------------ FIN CLIENTE --------------------------


// ------------------ PROPIETARIO --------------------------
    def propietario(){
        render(view:"propietario", model: [listado: ClientePropietario.findAll()])
    }

    def altaPropietario(){
        [propietario: new ClientePropietario()]
    }

    def guardarAltaPropietario(){
        def id = adminService.altaPropietario(params)
        redirect(action:"verPropietario", params: [id: id])
    }

    def editarPropietario(){
        [propietario: ClientePropietario.get(params.id)]
    }

    def guardarEditarPropietario(){
        adminService.editarPropietario(params)
        redirect(action:"verPropietario", params: [id: params.id])
    }

    def eliminarPropietario(){
        [propietario: ClientePropietario.get(params.id)]
    }

    def confirmarEliminarPropietario(){
        adminService.eliminarPropietario(new Long(params.id))
        redirect(action:"propietario")
    }

    def verPropietario(){
        [propietario: ClientePropietario.get(params.id)]
    }

    def buscarPropietario(){
        // def propietarios = adminService.buscarPropietario(params)
        render(view:"propietario", model: [listado: adminService.buscarPropietario(params)])
    }


// ------------------ FIN PROPIETARIO --------------------------


// ------------------ PROPIEDAD --------------------------

    def propiedad(){
        render(view:"propiedad", model: [listado: Propiedad.findAll([sort: "ubicacion", order: "asc"])])
    }

    def altaPropiedad(){
        [propiedad: new Propiedad()]
    }

    def guardarAltaPropiedad(){
        // def img = params.imagen
        def id = adminService.altaPropiedad(params)
        redirect(action:"verPropiedad", params: [id: id])
    }

    def editarPropiedad(){
        [propiedad: Propiedad.get(params.id)]
    }

    def guardarEditarPropiedad(){
        adminService.editarPropiedad(params)
        redirect(action:"verPropiedad", params: [id: params.id])
    }

    def eliminarPropiedad(){
        [propiedad: Propiedad.get(params.id)]
    }

    def confirmarEliminarPropiedad(){
        adminService.eliminarPropiedad(new Long(params.id))
        redirect(action:"propiedad")
    }

    def verPropiedad(){
        [propiedad: Propiedad.get(params.id)]
    }

    def buscarPropiedad(){
        render(view:"propiedad", model: [listado: adminService.buscarPropiedad(params)])
    }

    def cargarImagen(){
        [propiedad: Propiedad.get(params.id)]
    }

    def guardarImagen(){
        def propiedad = Propiedad.get(params.id)
        def file = params.myFile
        def imagen = new Imagen(imagen: file)
        propiedad.imagen = imagen
        propiedad.save(flush:true)
        redirect(action:"verPropiedad", params: [id: params.id])
    }

    def verImagen(){
        def img = Imagen.get(params.id)      
        response.outputStream << img.imagen
        response.outputStream.flush()
    }



// ------------------ FIN PROPIEDAD --------------------------


// ------------------ CONTRATO --------------------------
    def contrato(){
        render(view:"contrato", model: [listado: Contrato.findAll([sort: "cliente.apellido", order: "asc"]),
        clientes: Cliente.findAll([sort: "apellido", order: "asc"]), propiedades: Propiedad.findAll([sort: "ubicacion", order: "asc"]),
        propietarios: ClientePropietario.findAll([sort: "apellido", order: "asc"]) ])
    }

    def altaContrato(){
        [contrato: new Contrato()]
    }

    def guardarAltaContrato(){
        def id = adminService.altaContrato(params)
        redirect(action:"verContrato", params: [id: id])
    }

    def editarContrato(){
        [contrato: Contrato.get(params.id)]
    }

    def guardarEditarContrato(){
        adminService.editarContrato(params)
        redirect(action:"verContrato", params: [id: params.id])
    }

    def eliminarContrato(){
        [contrato: Contrato.get(params.id)]
    }

    def confirmarEliminarContrato(){
        adminService.eliminarContrato(new Long(params.id))
        redirect(action:"contrato")
    }

    def verContrato(){
        [contrato: Contrato.get(params.id)]
    }

    def buscarContrato(){
        render(view:"contrato", model: [listado: adminService.buscarContrato(params),
        clientes: Cliente.findAll([sort: "apellido", order: "asc"]), propiedades: Propiedad.findAll([sort: "ubicacion", order: "asc"]),
        propietarios: ClientePropietario.findAll([sort: "apellido", order: "asc"]) ])
    }



// ------------------ FIN CONTRATO --------------------------


// ------------------ CONSULTA --------------------------

    def consulta(){
        render(view:"consulta", model: [listado: Consulta.findAll([sort: "fecha", order: "desc"]),
        propiedades: Propiedad.findAll([sort: "ubicacion", order: "asc"])])
    }

    def verConsulta(Long id){
        [consulta: Consulta.get(id)]
    }

    def atenderConsulta(Long id){
        def consulta = Consulta.get(id)
        consulta.estado = 'Atendido'
        consulta.save(flush:true)
        redirect(action: 'consulta')
    }




// ------------------ FIN CONSULTA --------------------------




// ------------------ USUARIO --------------------------
    def usuario(){
        render(view:"usuario", model: [listado: Usuario.findAll()])
    }

    def altaUsuario(){
        [usuario: new Usuario(), roles: Rol.findAll()]
    }

    def guardarAltaUsuario(){
        adminService.altaUsuario(params)
        redirect(action:"usuario")
    }

    def editarUsuario(){
        [usuario: Usuario.get(params.id)]
    }

    def guardarEditarUsuario(){
        adminService.editarUsuario(params)
        redirect(action:"usuario")
    }

    def eliminarUsuario(){
        [usuario: Usuario.get(params.id)]
    }

    def confirmarEliminarUsuario(){
        adminService.eliminarUsuario(new Long(params.id))
        redirect(action:"usuario")
    }

    def verUsuario(){
        [usuario: Usuario.get(params.id)]
    }

    def buscarUsuario(){
        // def usuarios = adminService.buscarUsuario(params)
        render(view:"usuario", model: [listado: adminService.buscarUsuario(params)])
    }



// ------------------ FIN USUARIO --------------------------




}
