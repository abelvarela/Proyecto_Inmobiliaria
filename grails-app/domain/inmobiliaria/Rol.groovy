package inmobiliaria

class Rol implements Serializable {
    private static final long serialVersionUID = 1

    String authority

  	boolean equals(rol) {
  		is(rol) || (rol instanceof Rol && rol.authority == authority)
  	}

  	static constraints = {
  		authority blank: false, unique: true
  	}
}