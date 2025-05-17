//===============================================================
// File Name        : <CLASS_NAME>
// Description      :
// Package Name     : <PACKAGE_NAME>
// Name             : <CREATE_NAME>
// File Created     : <CREATE_DATE>
// Copyright        :
//===============================================================
// NOTE: Please Don't Remove Any Comments or //--- Given Below
//===============================================================

`ifndef <INC_GUARD>
`define <INC_GUARD>

//---------------------------------------------------------------
// Class: <CLASS_NAME>
// 
//---------------------------------------------------------------

class <CLASS_NAME> extends uvm_sequence_item;
 //------------------------------------------
 // Data Members
 //------------------------------------------
 //------------------------------------------

 //------------------------------------------
 // Constraints
 //------------------------------------------
 //------------------------------------------

 //------------------------------------------
 // Methods
 //------------------------------------------
 //------------------------------------------

 // -----------------
 // Standard UVM Methods
 // -----------------
 extern function       new(string name="<CLASS_NAME>");

 // -----------------
 // User Defined APIs
 // -----------------

 // -----------------
 // UVM Factory Registration
 // -----------------
 `uvm_object_utils_begin(<CLASS_NAME>)
 // -----------------
 // Add field configurations
 // -----------------
 // -----------------
 `uvm_object_utils_end
endclass: <CLASS_NAME>


//---------------------------------------------------------------
// Function: new
// 
//---------------------------------------------------------------

function <CLASS_NAME>::new(string name="<CLASS_NAME>");
 super.new(name);
endfunction: new
