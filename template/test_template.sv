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

class <CLASS_NAME> extends uvm_test;
 //------------------------------------------
 // Data Members
 //------------------------------------------

 // Environment Data Members

 //------------------------------------------
 // Interface Instantiation
 //------------------------------------------

 //------------------------------------------
 // Component Declaration
 //------------------------------------------

 // Environments Instantiation

 //------------------------------------------
 // Configuration Instantiation
 //------------------------------------------

 // Environment Configuration Object Instantiation

 //------------------------------------------
 // Constraints
 //------------------------------------------

 //------------------------------------------
 // Methods
 //------------------------------------------

 //------------------------------------------
 // Misc Instantiation
 //------------------------------------------
 uvm_table_printer                   printer;

 // -----------------
 // Standard UVM Methods
 // -----------------
 extern function              new(string name = "<CLASS_NAME>", uvm_component parent);
 extern virtual function void build_phase(uvm_phase phase);
 extern virtual function void connect_phase(uvm_phase phase);
 extern virtual function void end_of_elaboration_phase(uvm_phase phase);
 extern virtual function void start_of_simulation_phase(uvm_phase phase);
 extern virtual task pre_reset_phase(uvm_phase phase); 
 extern virtual task reset_phase(uvm_phase phase);
 extern virtual task post_reset_phase(uvm_phase phase);
 extern virtual task pre_configure_phase(uvm_phase phase);
 extern virtual task configure_phase(uvm_phase phase);
 extern virtual task post_configure_phase(uvm_phase phase);
 extern virtual task pre_main_phase(uvm_phase phase);
 extern virtual task main_phase(uvm_phase phase);
 extern virtual task post_main_phase(uvm_phase phase);
 extern virtual task pre_shutdown_phase(uvm_phase phase);
 extern virtual task shutdown_phase(uvm_phase phase);
 extern virtual task post_shutdown_phase(uvm_phase phase);
 extern virtual function void extract_phase(uvm_phase phase);
 extern virtual function void check_phase(uvm_phase phase);
 extern virtual function void report_phase(uvm_phase phase);
 extern virtual function void final_phase(uvm_phase phase);

 // -----------------
 // User Defined APIs
 // -----------------

 // -----------------
 // UVM Factory Registration
 // -----------------
 `uvm_component_utils_begin(<CLASS_NAME>)
  // -----------------
  // Add field configurations
  // -----------------
  // -----------------
 `uvm_component_utils_end
endclass: <CLASS_NAME>


//---------------------------------------------------------------
// Function: new
// 
//---------------------------------------------------------------

function <CLASS_NAME>::new(string name = "<CLASS_NAME>", uvm_component parent);
 super.new(name, parent);
endfunction :new


//---------------------------------------------------------------
// Function: build_phase
// 
// Create and configure of testbench structure
//---------------------------------------------------------------

function void <CLASS_NAME>::build_phase(uvm_phase phase);
 super.build_phase(phase);
`uvm_info(get_type_name(), "In build_phase...!!", UVM_DEBUG);

 // -----------------
 // Get Configuration
 // -----------------

 // -----------------
 // Construct Components and Configuration
 // -----------------

 // Construct Environments

 // Construct Environments Configuration

 // -----------------
 // Construct children
 // ------------------

 // ------------------
 // Configure children
 // ------------------

 // Configure Environments

 // ------------------
 // Misc Configuration
 // ------------------
 printer = new();
endfunction: build_phase


//---------------------------------------------------------------
// Function: connect_phase
// 
// Establish cross-component connections
//---------------------------------------------------------------

function void <CLASS_NAME>::connect_phase(uvm_phase phase);
 super.connect_phase(phase);
`uvm_info(get_type_name(), "In connect_phase...!!", UVM_DEBUG);
endfunction: connect_phase


//---------------------------------------------------------------
// Function: end_of_elaboration_phase
// 
// Fine-tune the testbench
//---------------------------------------------------------------

function void <CLASS_NAME>::end_of_elaboration_phase(uvm_phase phase);
 super.end_of_elaboration_phase(phase);
`uvm_info(get_type_name(), "In end_of_elaboration_phase...!!", UVM_DEBUG);
`uvm_info(get_type_name(), $sformatf("Printing the Test Topology : %s", this.sprint(printer)), UVM_LOW)
endfunction: end_of_elaboration_phase


//---------------------------------------------------------------
// Function: start_of_simulation_phase
// 
// Get ready for DUT to be simulated
//---------------------------------------------------------------

function void <CLASS_NAME>::start_of_simulation_phase(uvm_phase phase);
 super.start_of_simulation_phase(phase);
`uvm_info(get_type_name(), "In start_of_simulation_phase...!!", UVM_DEBUG);
endfunction: start_of_simulation_phase


//---------------------------------------------------------------
// Task: pre_reset_phase
// 
// It is used to perform the operations before applying reset to DUT
//---------------------------------------------------------------

task <CLASS_NAME>::pre_reset_phase(uvm_phase phase);
 super.pre_reset_phase(phase);
`uvm_info(get_type_name(), "In pre_reset_phase...!!", UVM_DEBUG);
endtask: pre_reset_phase


//---------------------------------------------------------------
// Task: reset_phase
// 
// It is used to generate the reset and apply to DUT or any interface
//---------------------------------------------------------------

task <CLASS_NAME>::reset_phase(uvm_phase phase);
 super.reset_phase(phase);
`uvm_info(get_type_name(), "In reset_phase...!!", UVM_DEBUG);
endtask: reset_phase


//---------------------------------------------------------------
// Task: post_reset_phase
// 
// It is used to generate the reset and apply to DUT or any interface
//---------------------------------------------------------------

task <CLASS_NAME>::post_reset_phase(uvm_phase phase);
 super.post_reset_phase(phase);
`uvm_info(get_type_name(), "In post_reset_phase...!!", UVM_DEBUG);
endtask: post_reset_phase


//---------------------------------------------------------------
// Task: pre_configure_phase
// 
// This phase is used to gather the configuration information and
// to wait for the components to be ready for the configuration
// after rese
//---------------------------------------------------------------

task <CLASS_NAME>::pre_configure_phase(uvm_phase phase);
 super.pre_configure_phase(phase);
`uvm_info(get_type_name(), "In pre_configure_phase...!!", UVM_DEBUG);
endtask: pre_configure_phase


//---------------------------------------------------------------
// Task: configure_phase
// 
// This phase is used to configure the DUT and to initialize the
// memories in the testbench
//---------------------------------------------------------------

task <CLASS_NAME>::configure_phase(uvm_phase phase);
 super.configure_phase(phase);
`uvm_info(get_type_name(), "In configure_phase...!!", UVM_DEBUG);
endtask: configure_phase


//---------------------------------------------------------------
// Task: post_configure_phase
// 
// This phase is used to wait for the configuration information
// to progress to the DUT. It is used to ensure that the main
// testcase can started for the simulation.
//---------------------------------------------------------------

task <CLASS_NAME>::post_configure_phase(uvm_phase phase);
 super.post_configure_phase(phase);
`uvm_info(get_type_name(), "In post_configure_phase...!!", UVM_DEBUG);
endtask: post_configure_phase


//---------------------------------------------------------------
// Task: pre_main_phase
// 
// It is to ensure that all the components are ready to start the
// simulation
//---------------------------------------------------------------

task <CLASS_NAME>::pre_main_phase(uvm_phase phase);
 super.pre_main_phase(phase);
`uvm_info(get_type_name(), "In pre_main_phase...!!", UVM_DEBUG);
endtask: pre_main_phase


//---------------------------------------------------------------
// Task: main_phase
// 
// It is to ensure that all the components are ready to start the
// simulation
//---------------------------------------------------------------

task <CLASS_NAME>::main_phase(uvm_phase phase);
 super.main_phase(phase);
`uvm_info(get_type_name(), "In main_phase...!!", UVM_DEBUG);
endtask: main_phase


//---------------------------------------------------------------
// Task: post_main_phase
// 
// This phase is to take care of any finalization of the main_phase
//---------------------------------------------------------------

task <CLASS_NAME>::post_main_phase(uvm_phase phase);
 super.post_main_phase(phase);
`uvm_info(get_type_name(), "In post_main_phase...!!", UVM_DEBUG);
endtask: post_main_phase


//---------------------------------------------------------------
// Task: pre_shutdown_phase
// 
// This phase is to wait for the stimulus generation which is still
// generated
//---------------------------------------------------------------

task <CLASS_NAME>::pre_shutdown_phase(uvm_phase phase);
 super.pre_shutdown_phase(phase);
`uvm_info(get_type_name(), "In pre_shutdown_phase...!!", UVM_DEBUG);
endtask: pre_shutdown_phase


//---------------------------------------------------------------
// Task: shutdown_phase
// 
// This phase is used to ensure that all the stimulus has reached
// the DUT and the outputs are taken from the DUT
//---------------------------------------------------------------

task <CLASS_NAME>::shutdown_phase(uvm_phase phase);
 super.shutdown_phase(phase);
`uvm_info(get_type_name(), "In shutdown_phase...!!", UVM_DEBUG);
endtask: shutdown_phase


//---------------------------------------------------------------
// Task: post_shutdown_phase
// 
// It is to perform any final activities before exiting from the 
// actual simulation phases
//---------------------------------------------------------------

task <CLASS_NAME>::post_shutdown_phase(uvm_phase phase);
 super.post_shutdown_phase(phase);
`uvm_info(get_type_name(), "In post_shutdown_phase...!!", UVM_DEBUG);
endtask: post_shutdown_phase


//---------------------------------------------------------------
// Function: extract_phase
// 
// Extract data from different points of the verification environment
//---------------------------------------------------------------

function void <CLASS_NAME>::extract_phase(uvm_phase phase);
 super.extract_phase(phase);
`uvm_info(get_type_name(), "In extract_phase...!!", UVM_DEBUG);
endfunction: extract_phase


//---------------------------------------------------------------
// Function: check_phase
// 
// Check for any unexpected conditions in the verification environment
//---------------------------------------------------------------

function void <CLASS_NAME>::check_phase(uvm_phase phase);
 super.check_phase(phase);
`uvm_info(get_type_name(), "In check_phase...!!", UVM_DEBUG);
endfunction: check_phase


//---------------------------------------------------------------
// Function: report_phase
// 
// Report results of the test
//---------------------------------------------------------------

function void <CLASS_NAME>::report_phase(uvm_phase phase);
 super.report_phase(phase);
`uvm_info(get_type_name(), "In report_phase...!!", UVM_DEBUG);
endfunction: report_phase


//---------------------------------------------------------------
// Function: final_phase
// 
// Tie up loose ends. All Simulation activities are done.
// 
// Closing files, Ending co-simulation engines etc.
//---------------------------------------------------------------

function void <CLASS_NAME>::final_phase(uvm_phase phase);
 super.final_phase(phase);
`uvm_info(get_type_name(), "In final_phase...!!", UVM_DEBUG);
endfunction: final_phase


`endif //<INC_GUARD>