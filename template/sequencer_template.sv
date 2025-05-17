//===============================================================
// File Name        : <CLASS_NAME>
// Description      :
// Package Name     : <PACKAGE_NAME>
// Name             : <CREATE_NAME>
// File Created     : <CREATE_DATE>
// Copyright        :
//===============================================================
// NOTE: Please Don\'t Remove Any Comments or //--- Given Below
//===============================================================

`ifndef <INC_GUARD>
`define <INC_GUARD>

//---------------------------------------------------------------
// Class: <CLASS_NAME>
// 
//---------------------------------------------------------------

class <CLASS_NAME> extends uvm_sequencer #(<PREFIX_NAME>_sequence_item_base);

 // Standard UVM Methods
 extern function       new   (string name= "<CLASS_NAME>", uvm_component parent);
 extern function void  build_phase(uvm_phase phase);

 // User Defined APIs

 // UVM Factory Registration Macro
`uvm_component_utils(<CLASS_NAME>)
endclass: <CLASS_NAME>


//---------------------------------------------------------------
// Function: new
// 
//---------------------------------------------------------------

function <CLASS_NAME>::new(string name = "<CLASS_NAME>", uvm_component parent);
 super.new(name, parent);
endfunction: new


//---------------------------------------------------------------
// Function: build_phase
// 
// Create and configure of testbench structure
//---------------------------------------------------------------

function void <CLASS_NAME>::build_phase(uvm_phase phase);
 super.build_phase(phase);
`uvm_info(get_type_name(), "In build_phase...!!", UVM_DEBUG);
endfunction: build_phase

`endif //<INC_GUARD>