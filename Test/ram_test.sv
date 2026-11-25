# code for ram_test
# Test case for Dual port RAM
...
  //------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_base_test from uvm_test;
class ram_base_test extends uvm_test;

   // Factory Registration
        `uvm_component_utils(ram_base_test)


    // Declare the ram_env and ram_wr_agent_config handles as ram_envh and m_ram_cfg respectively
    ram_env ram_envh;
    ram_wr_agent_config m_ram_cfg;
        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Standard UVM Methods:
        extern function new(string name = "ram_base_test" , uvm_component parent);
        extern function void build_phase(uvm_phase phase);

 endclass
//-----------------  constructor new method  -------------------//
// Define Constructor new() function
function ram_base_test::new(string name = "ram_base_test" , uvm_component parent);
        super.new(name,parent);
endfunction

//-----------------  build() phase method  -------------------//

function void ram_base_test::build_phase(uvm_phase phase);
        // Create the instance of config_object
    m_ram_cfg=ram_wr_agent_config::type_id::create("m_ram_cfg");
        // set is_active to UVM_ACTIVE
    m_ram_cfg.is_active = UVM_ACTIVE;
    // set the config object into UVM config DB
        uvm_config_db #(ram_wr_agent_config)::set(this,"*","ram_wr_agent_config",m_ram_cfg);
    super.build_phase(phase);
        // create the instance for env
        ram_envh=ram_env::type_id::create("ram_envh", this);
endfunction

//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_single_addr_test from ram_base_test;
class ram_single_addr_test extends ram_base_test;


        // Factory Registration
        `uvm_component_utils(ram_single_addr_test)

   //Declare the handle for  ram_single_addr_wr_xtns sequence
        ram_single_addr_wr_xtns ram_seqh;
        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Standard UVM Methods:
        extern function new(string name = "ram_single_addr_test" , uvm_component parent);
        extern function void build_phase(uvm_phase phase);
        extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function
function ram_single_addr_test::new(string name = "ram_single_addr_test" , uvm_component parent);
        super.new(name,parent);
endfunction

//-----------------  build() phase method  -------------------//
        // call build phase of ram_base_test
function void ram_single_addr_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
endfunction

//-----------------  run() phase method  -------------------//
 task ram_ten_addr_test::run_phase(uvm_phase phase);
        //raise objection
   phase.raise_objection(this);
        //create instance for sequence
   ram_seqh=ram_ten_wr_xtns::type_id::create("ram_seqh");
        //start the sequence on write agent sequencer
   ram_seqh.start(ram_envh.wr_agnth.seqrh);
        //drop objection
   phase.drop_objection(this);
        endtask


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------
// Extend ram_odd_addr_test from ram_base_test;
class ram_odd_addr_test extends ram_base_test;


        // Factory Registration
        `uvm_component_utils(ram_odd_addr_test)

   // Declare the handle for  ram_odd_wr_xtns sequence
  ram_odd_wr_xtns ram_seqh;
        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Standard UVM Methods:
        extern function new(string name = "ram_odd_addr_test" , uvm_component parent);
        extern function void build_phase(uvm_phase phase);
        extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function
function ram_odd_addr_test::new(string name = "ram_odd_addr_test" , uvm_component parent);
        super.new(name,parent);
endfunction

//-----------------  build() phase method  -------------------//
  // call build phase of ram_base_test
function void ram_odd_addr_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
endfunction

//-----------------  run() phase method  -------------------//
task ram_odd_addr_test::run_phase(uvm_phase phase);
        //raise objection
   phase.raise_objection(this);
        //create instance for sequence
  ram_seqh=ram_odd_wr_xtns::type_id::create("ram_seqh");
        //start the sequence on write agent sequencer
   ram_seqh.start(ram_envh.wr_agnth.seqrh);
        //drop objection
        phase.drop_objection(this);
endtask


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_even_addr_test from ram_base_test;
class ram_even_addr_test extends ram_base_test;


        // Factory Registration
        `uvm_component_utils(ram_even_addr_test)

   // Declare the handle for  ram_even_wr_xtns sequence
        ram_even_wr_xtns ram_seqh;
        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Standard UVM Methods:
        extern function new(string name = "ram_even_addr_test" , uvm_component parent);
        extern function void build_phase(uvm_phase phase);
        extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function

function ram_even_addr_test::new(string name = "ram_even_addr_test" , uvm_component parent);
        super.new(name,parent);
endfunction
//-----------------  build() phase method  -------------------//
 // call build phase of ram_base_test
function void ram_even_addr_test::build_phase(uvm_phase phase);
        super.build_phase(phase);
endfunction
//-----------------  run() phase method  -------------------//
task ram_even_addr_test::run_phase(uvm_phase phase);
        //raise objection
  phase.raise_objection(this);
        //create instance for sequence
   ram_seqh=ram_even_wr_xtns::type_id::create("ram_seqh");
        //start the sequence on write agent sequencer
  ram_seqh.start(ram_envh.wr_agnth.seqrh);
        //drop objection
   phase.drop_objection(this);
endtask
...                                                                                            
