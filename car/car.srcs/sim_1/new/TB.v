`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 19:39:23
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB;
    reg clk;
    reg rst_n_i;
    reg uart_rx_i;
    wire uart_tx_o;
    
    car u(
        .clk(clk),
        .rst_n_i (rst_n_i),
        .uart_rx_i (uart_rx_i),
        .uart_tx_o (uart_tx_o)
        );
    initial
        begin
            clk = 0;
            rst_n_i = 0;
            uart_rx_i = 1'b1;
            // Wait 100 ns for global reset to finish
            
            #96;
            rst_n_i=1;
            
            #104170
            uart_rx_i = 1'b1;
            
            #104170
            uart_rx_i = 1'b0;//start
            
            //000000001
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            #104170
            
            uart_rx_i = 1'b1;//stop 
            #808320
            
            //00000000
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            
            #808320
            //00000001
            uart_rx_i = 1'b0;//start
            
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            #808320
            //00000000
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            #808320
            //00000000
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            
            #808320     
             //00000001
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            #808320
            //00000010
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            #808320
           
            //00000011
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            #808320
            //00000100
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            #808320
            //00000101
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
            #808320
            //00000000
            uart_rx_i = 1'b0;//start
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b1;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0;
            #104170
            uart_rx_i = 1'b0; 
            
            #104170
            uart_rx_i = 1'b1;//stop 
        
        end
    always 
        begin
            #10 clk = ~clk;
        end

endmodule
