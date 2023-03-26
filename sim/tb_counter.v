module tb_counter ();

    reg clk;
    reg resetn;
    reg [31 : 0] incr_i;
    wire counter_o;  

    // connecting testbench to counter.v instance
    counter counter_instance(   
        .clk(clk),
        .resetn(resetn),
        .incr_i(incr_i),
        .counter_o(counter_o)
    );

    //clk (100MHz)
    always begin
        clk = 1;
        #5;
        clk = 0;
        #5;
    end
    
    //main simulation
    initial begin
        //set counter increment = 2    
        incr_i <= 2;

        //enable core
        resetn <= 1;

        //run 50ns
        #50;

        //set counter increment = 4
        incr_i <= 4;

        //run 50ns
        #50;

        //finish
        $stop;
        end 
    endmodule