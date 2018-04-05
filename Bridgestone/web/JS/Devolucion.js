/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



  function Devolucion(id,id_Prestamo,comentario,id_Persona,id_equi) {
    this.Devolucion(id,id_Prestamo,comentario,id_Persona,id_equi);
  }
  
  Devolucion.prototype={
        id:0,
        id_Prestamo:"",
        comentario:"",
        id_Persona: "",
        id_equi:0,
	
	Devolucion: function(id,id_Prestamo,comentario,id_Persona,id_equi){
                this.id= id;
                this.id_Prestamo = id_Prestamo;
                this.comentario = comentario;
                this.id_Persona= id_Persona;
                this.id_equi= id_equi;

	},
	toString:function(){
	  return this.id + this.id_Prestamo +this.comentario;
	}
  }
  
  Devolucion.from= function(plain){
    devo = new Devolucion(plain.id,plain.id_Prestamo,plain.comentario,plain.id_Persona,plain.id_equi);
	return devo;
  };
  
    Devolucion.to= function(contrato){
    return {
        _class : 'Devolucion',
        id:contrato.id,
        id_Prestamo:contrato.id_Prestamo,
        comentario: contrato.comentario,
        id_Persona: contrato.id_Persona,
        id_equi: contrato.id_equi
    };	
  };
