/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

  function Activo(numeroDeSerie,fechaDeEntrada,descripción,codigoContratoLeasing) {
    this.Activo(numeroDeSerie,fechaDeEntrada,descripción,codigoContratoLeasing);
  }
  
  /*numeroDeSerie int,
	fechaDeEntrada Date,
	descripción varchar(20),
	codigoContratoLeasing varchar(10),*/
  Activo.prototype={
        numeroDeSerie:"",
        fechaDeEntrada:"",
        descripción:"",
        codigoContratoLeasing:"",
	
	Activo: function(numeroDeSerie,fechaDeEntrada,descripción,codigoContratoLeasing){
                this.numeroDeSerie= numeroDeSerie;
                this.fechaDeEntrada = fechaDeEntrada;
                this.descripción = descripción;
                this.codigoContratoLeasing = codigoContratoLeasing;

	},
	toString:function(){
	  return this.numeroDeSerie;
	}
  }
  
  Activo.from= function(plain){
    contrat = new Activo(plain.numeroDeSerie,plain.fechaDeEntrada,plain.descripción,plain.codigoContratoLeasing);
	return contrat;
  };
  
    Activo.to= function(contrato){
    return {
        _class : 'Activo',
        numeroDeSerie:contrato.numeroDeSerie,
        fechaDeEntrada:contrato.fechaDeEntrada,
        descripción: contrato.descripción,
        codigoContratoLeasing: contrato.codigoContratoLeasing
    };	
  };