/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

  function Baja(id,comentario,id_equi,fechaBaja) {
    this.Baja(id,comentario,id_equi,fechaBaja);
  }
  
  Baja.prototype={
        id:0,
        comentario:"",
        id_equi:0,
        fechaBaja:"",
	
	Baja: function(id,comentario,id_equi,fechaBaja){
                this.id= id;
                this.comentario = comentario;
                this.id_equi= id_equi;
                this.fechaBaja= fechaBaja;

	},
	toString:function(){
	  return this.id +this.comentario+this.id_equi+this.fechaBaja;
	}
  }
  
  Baja.from= function(plain){
    devo = new Baja(plain.id,plain.comentario,plain.id_equi,plain.fechaBaja);
	return devo;
  };
  
  
    Baja.to= function(baja){
    return {
        _class: 'Baja',
        id:baja.id,
        comentario: baja.comentario,
        id_equi: baja.id_equi,
        fechaBaja: baja.fechaBaja
    };	
  };
  /*
  Baja.to2= function(baja){
    return {
        _class: 'Baja',
        id:baja.id,
        comentario: baja.comentario,
        id_equi: baja.id_equi,
    };	
  };*/

