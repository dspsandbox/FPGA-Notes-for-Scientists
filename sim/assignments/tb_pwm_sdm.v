`timescale 1ns / 1ps
module tb_pwm_sdm();

    // Inputs
    reg clk;
    reg resetn;
    reg [7:0] duty_cycle;

    // Outputs
    wire pwm_o, sdm_o;

    // Instantiate the PWM module
    pwm_8bit pwm_inst (
        .clk(clk),
        .resetn(resetn),
        .duty_cycle(duty_cycle),
        .pwm_o(pwm_o)
    );
    // Instantiate the SDM module
    sdm_8bit sdm_inst (
        .clk(clk),
        .resetn(resetn),
        .duty_cycle(duty_cycle),
        .sdm_o(sdm_o)
    );

    // Clock generation
    always begin
        #5 clk = ~clk; // Clock period of 10 time units
    end

    // Initial block for simulation
    initial begin
        // Initialize inputs
        clk = 0;
        resetn = 0;
        duty_cycle = 0; 

        // Reset the PWM module
        #10 resetn = 1; // Release reset after 10 time units

        // Wait for a few clock cycles
        #100;

        // Test 1: Duty cycle 50
        duty_cycle = 0.5 * 256;
        
        #10000; 

        // Test 2: Duty cycle 10
        duty_cycle = 0.1 * 256;
        #10000;

        // Test 3: Duty cycle 75
        duty_cycle = 0.75 * 256;
        #10000;

        

        // End simulation
        $finish;
    end


endmodule