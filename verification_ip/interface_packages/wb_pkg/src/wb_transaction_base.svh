class wb_transaction_base #(
    parameter int ADDR_WIDTH = 2,
    parameter int DATA_WIDTH = 8
) extends ncsu_transaction;

    // Register this object with a factory
    `ncsu_register_object (wb_transaction_base)
    
    bit cmd;
    bit [ADDR_WIDTH-1:0] addr;
    bit [DATA_WIDTH-1:0] data;
    bit we;

    function new (string name = "");
        super.new(name);
    endfunction

    function void create (bit cmd, bit [ADDR_WIDTH-1:0] addr, bit [DATA_WIDTH-1:0] data);
        this.cmd = cmd;
        this.addr = addr;
        this.data = data;
    endfunction

    function void display ();
        $display ("cmd = %b, addr = %b, data = %b", this.cmd, this.addr, this.data);
    endfunction

endclass