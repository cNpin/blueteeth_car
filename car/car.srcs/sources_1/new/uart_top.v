`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 19:36:07
// Design Name: 
// Module Name: uart_top
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


module uart_top(
    input clk_i,
    input rst_n_i,
    input uart_rx_i,
    output [7:0] uart_rx_data_o,
    output uart_tx_o,
    output Key1
     );

    wire uart_rx_done;
     
    uart_rx_path uart_rx_path_u (
         .clk_i(clk_i), 
         .uart_rx_i(uart_rx_i), 
         .uart_rx_data_o(uart_rx_data_o), 
         .uart_rx_done(uart_rx_done),
         .Key1(Key1)
         );
     
    uart_tx_path uart_tx_path_u (
         .clk_i(clk_i), 
         .uart_tx_data_i(uart_rx_data_o), 
         .uart_tx_en_i(uart_rx_done), 
         .uart_tx_o(uart_tx_o)
         );
     
endmodule

