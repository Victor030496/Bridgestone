  function Prestamo(id,id_Persona,id_equi,departamento,comentario) {
    this.Prestamo(id,id_Persona,id_equi,departamento,comentario);
  }
  
     Prestamo.prototype={
  	id: 0,
	id_Persona: "",
        id_equi:0,
        departamento:"",
	comentario: "",
	

	Prestamo: function(id,id_Persona,id_equi,departamento,comentario){
		this.id=id;
		this.id_Persona=id_Persona;
                this.id_equi = id_equi;
                this.departamento = departamento;
                this.comentario=comentario;

	},
	toString:function(){
	  return this.id;
	}
  }
  
  Prestamo.from= function(plain){
    prestamo = new Prestamo(plain.id, plain.id_Persona, plain.id_equi , plain.departamento , plain.comentario);
	return prestamo;
  };
  
    Prestamo.to= function(Prestamo){
    return {
        _class : 'Prestamo',
        id:Prestamo.id,
        id_Persona:Prestamo.id_Persona,
        apellido:Prestamo.id_equi,
        telefono:Prestamo.departamento,
        correo:Prestamo.comentario

       
    };	
  };
  