  function Trabajador(id,clave,tipo,identificacion,nombre,apellido,telefono,correo) {
    this.Trabajador(id,clave,tipo,identificacion,nombre,apellido,telefono,correo);
  }
  
  Trabajador.prototype={
  	id: "",
        clave:"",
        tipo:0,
        identificacion:"",
	nombre: "",
        apellido:"",
        telefono:"",
	correo: "",
	

	Trabajador: function(id,clave,tipo,identificacion,nombre,apellido,telefono,correo){
		this.id=id;
                this.clave= clave;
                this.tipo = tipo;
                this.identificacion = identificacion;
		this.nombre=nombre;
                this.apellido = apellido;
                this.telefono = telefono;
                this.correo=correo;

	},
        
	toString:function(){
	  return this.identificacion + this.nombre;
	}
  }
  
  Trabajador.from= function(plain){
    trabajador = new Trabajador(plain.id, plain.clave ,plain.tipo ,plain.identificacion , plain.nombre, plain.apellido , plain.telefono , plain.correo);
	return trabajador;
  };
  
    Trabajador.to= function(Trabajador){
    return {
        _class : 'Trabajador',
        id:Trabajador.id,
        clave:Trabajador.clave,
        tipo:Trabajador.tipo,
        identificacion: Trabajador.identificacion,
        nombre:Trabajador.nombre,
        apellido:Trabajador.apellido,
        telefono:Trabajador.telefono,
        correo:Trabajador.correo

       
    };	
  };
  


