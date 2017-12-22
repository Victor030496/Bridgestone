/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


  function Contrato(codigoContrato,fechaInicio,fechaVencimiento) {
    this.Contrato(codigoContrato,fechaInicio,fechaVencimiento);
  }
  
  Contrato.prototype={
        codigoContrato:"",
        fechaInicio:"",
        fechaVencimiento:"",
	
	Contrato: function(codigoContrato,fechaInicio,fechaVencimiento){
                this.codigoContrato= codigoContrato;
                this.fechaInicio = fechaInicio;
                this.fechaVencimiento = fechaVencimiento;

	},
	toString:function(){
	  return this.numeroDeSerieActivo;
	}
  }
  
  Contrato.from= function(plain){
    contrat = new Contrato(plain.codigoContrato,plain.fechaInicio,plain.fechaVencimiento);
	return contrat;
  };
  
    Contrato.to= function(contrato){
    return {
        _class : 'Contrato',
        codigoContrato:contrato.codigoContrato,
        fechaInicio:contrato.fechaInicio,
        fechaVencimiento: contrato.fechaVencimiento,
 
    };	
  };

