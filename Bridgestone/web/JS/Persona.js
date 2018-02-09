  function Persona(id,nombre,apellido,telefono,correo) {
    this.Persona(id,nombre,apellido,telefono,correo);
  }
  
  Persona.prototype={
  	id: "",
	nombre: "",
        apellido:"",
        telefono:"",
	correo: "",
	

	Persona: function(id,nombre,apellido,telefono,correo){
		this.id=id;
		this.nombre=nombre;
                this.apellido = apellido;
                this.telefono = telefono;
                this.correo=correo;

	},
	toString:function(){
	  return this.id;
	}
  }
  
  Persona.from= function(plain){
    persona = new Persona(plain.id, plain.nombre, plain.apellido , plain.telefono , plain.correo);
	return persona;
  };
  
    Persona.to= function(Persona){
    return {
        _class : 'Persona',
        id:Persona.id,
        nombre:Persona.nombre,
        apellido:Persona.apellido,
        telefono:Persona.telefono,
        correo:Persona.correo

       
    };	
  };
  


