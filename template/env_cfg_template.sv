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

class <CLASS_NAME> extends uvm_object;
 //------------------------------------------
 // Environment Data Members
 //------------------------------------------

 //------------------------------------------
 // Environment Interface Instantiation
 //------------------------------------------

 //------------------------------------------
 // Environment Monitor Knobs
 //------------------------------------------

 //------------------------------------------
 // Environment Scoreboard Knobs
 //------------------------------------------

 //------------------------------------------
 // Environment Agent Variables
 //------------------------------------------

 //------------------------------------------
 // Environment Agent Config Instantiation
 //------------------------------------------

 //------------------------------------------
 // Sub-Environment Config Instantiation
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

 // -----------------
 // Get configuration
 // -----------------

 // Get Environment Monitors Configuration

 // Get Environment Scoreboards Configuration

 // Get Environment Agents Configuration

 // Get Sub-Environments Configuration

 // -----------------
 // Construct children
 // ------------------

 // Construct Environment Monitors Configuration

 // Construct Environment Scoreboards Configuration

 // Construct Environment Agents Configuration

 // Construct Sub-Environments Configuration

 // ------------------
 // Configure children
 // ------------------

 // Configure Environment Monitors Configuration

 // Configure Environment Scoreboards Configuration

 // Configure Environment Agents Configuration

 // Configure Sub-Environments Configuration
endfunction: new

`endif //<INC_GUARD>