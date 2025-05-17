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

class <CLASS_NAME> extends uvm_sequence #(<PREFIX_NAME>_sequence_item_base);
 //------------------------------------------
 // Data Members
 //------------------------------------------

 //------------------------------------------
 // Constraints
 //------------------------------------------

 //------------------------------------------
 // Methods
 //------------------------------------------

 // -----------------
 // Standard UVM Methods
 // -----------------
 extern function       new(string name="<CLASS_NAME>");
 extern virtual task   body();

 // -----------------
 // User Defined APIs
 // -----------------

 // -----------------
 // UVM Factory Registration
 // -----------------
 `uvm_object_utils(<CLASS_NAME>)
endclass: <CLASS_NAME>


//---------------------------------------------------------------
// Function: new
// 
//---------------------------------------------------------------

function <CLASS_NAME>::new(string name="<CLASS_NAME>");
 super.new(name);
endfunction: new


//---------------------------------------------------------------
// Task: body
// 
//---------------------------------------------------------------

task <CLASS_NAME>::body();
 super.body();
endtask: body

`endif //<INC_GUARD>