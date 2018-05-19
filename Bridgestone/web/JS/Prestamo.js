  function Prestamo(id,id_Persona,id_equi,departamento,fechaInicio,fechaDevolucion,comentario) {
    this.Prestamo(id,id_Persona,id_equi,departamento,fechaInicio,fechaDevolucion,comentario);
  }
  
     Prestamo.prototype={
  	id: 0,
	id_Persona: "",
        id_equi:0,
        departamento:"",
        fechaInicio:"",
        fechaDevolucion:"",
	comentario: "",
	

	Prestamo: function(id,id_Persona,id_equi,departamento,fechaInicio,fechaDevolucion,comentario){
		this.id=id;
		this.id_Persona=id_Persona;
                this.id_equi = id_equi;
                this.departamento = departamento;
                this.fechaInicio = fechaInicio;
                this.fechaDevolucion = fechaDevolucion;
                this.comentario=comentario;

	},
	toString:function(){
	  return this.id;
	}
  }
  
  Prestamo.from= function(plain){
    prestamo = new Prestamo(plain.id, plain.id_Persona, plain.id_equi , plain.departamento,plain.fechaInicio,plain.fechaDevolucion , plain.comentario);
	return prestamo;
  };
  
    Prestamo.to= function(Prestamo){
    return {
        _class : 'Prestamo',
        id:Prestamo.id,
        id_Persona:Prestamo.id_Persona,
        id_equi:Prestamo.id_equi,
        departamento:Prestamo.departamento,
        fechaInicio:Prestamo.fechaInicio,
        fechaDevolucion: Prestamo.fechaDevolucion,
        comentario:Prestamo.comentario

       
    };	
  };
  