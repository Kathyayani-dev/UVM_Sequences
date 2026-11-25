# code for ram_wr_mon'
#  Write monitor class for Dual Port RAM TB
...
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_wr_monitor from uvm_monitor

class ram_wr_monitor extends uvm_monitor;

  // Factory Registration
        `uvm_component_utils(ram_wr_monitor)
        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Standard UVM Methods :
        extern function new(string name = "ram_wr_monitor", uvm_component parent);
        extern task run_phase(uvm_phase phase);

endclass
//-----------------  constructor new method  -------------------//
function ram_wr_monitor::new(string name = "ram_wr_monitor", uvm_component parent);
        super.new(name,parent);
 endfunction

//-----------------  run() phase method  -------------------//
//Print info message “This is write monitor run_phase”
task ram_wr_monitor::run_phase(uvm_phase phase);
        `uvm_info("RAM_WR_MONITOR","THIS IS MONITOR IN RUN",UVM_LOW)
endtask
...
