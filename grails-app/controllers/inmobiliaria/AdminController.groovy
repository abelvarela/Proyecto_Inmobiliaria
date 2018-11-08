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
        render(view:"admin", model: listadoCliente())
    }

// ------------------ CLIENTE --------------------------
    def cliente(){
        render(view:"cliente", model: listadoCliente())
    }

    def altaCliente(){
        [cliente: new Cliente()]
    }

    def guardarAltaCliente(){
        adminService.altaCliente(params)
        redirect(action:"cliente")
    }

    def editarCliente(){
        [cliente: Cliente.get(params.id)]
    }

    def guardarEditarCliente(){
        adminService.editarCliente(params)
        redirect(action:"cliente")
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

    def listadoCliente(){
        [listado: adminService.listadoCliente()]
    }

// ------------------ FIN CLIENTE --------------------------


// ------------------ PROPIETARIO --------------------------
    def propietario(){
        render(view:"propietario", model: listadoPropietario())
    }

    def altaPropietario(){
        [propietario: new ClientePropietario()]
    }

    def guardarAltaPropietario(){
        adminService.altaPropietario(params)
        redirect(action:"propietario")
    }

    def editarPropietario(){
        [propietario: ClientePropietario.get(params.id)]
    }

    def guardarEditarPropietario(){
        adminService.editarPropietario(params)
        redirect(action:"propietario")
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

    def listadoPropietario(){
        [listado: adminService.listadoPropietario()]
    }

// ------------------ FIN PROPIETARIO --------------------------


// ------------------ PROPIEDAD --------------------------
    def propiedad(){
        render(view:"propiedad", model: listadoPropiedad())
    }

    def altaPropiedad(){
        [propiedad: new Propiedad(), listado: adminService.listadoPropietario()]
    }

    def guardarAltaPropiedad(){
        adminService.altaPropiedad(params)
        redirect(action:"propiedad")
    }

    def editarPropiedad(){
        [propiedad: Propiedad.get(params.id)]
    }

    def guardarEditarPropiedad(){
        adminService.editarPropiedad(params)
        redirect(action:"propiedad")
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
        // def propiedades = adminService.buscarPropiedad(params)
        render(view:"propiedad", model: [listado: adminService.buscarPropiedad(params)])
    }

    def listadoPropiedad(){
        [listado: adminService.listadoPropiedad()]
    }

// ------------------ FIN PROPIEDAD --------------------------







}
