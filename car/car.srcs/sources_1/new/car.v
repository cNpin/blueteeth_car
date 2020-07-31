`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 18:50:39
// Design Name: 
// Module Name: car
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


module car(
    input clk,
    input rst_n_i,
    input uart_rx_i,
    
    output uart_tx_o,
    
    output LED1,
    output LED2,
    
    output IN1,
    output IN2,
    output IN3,
    output IN4,
    output ENA,
    output ENB
    );
    wire clk_out1;
    clk_wiz_0 inst(
        .clk_in1(clk),
        .clk_out1(clk_out1)
        );
    wire Key1;
    wire [7:0] uart_rx_data_o;
    uart_top u_uart_top(
        .clk_i (clk_out1),
        .rst_n_i (rst_n_i),
        .uart_rx_i (uart_rx_i),
        .uart_rx_data_o(uart_rx_data_o),
        .uart_tx_o (uart_tx_o),
        .Key1(Key1)
        );
    wire Key2;
    wire NUM;
    drive test1(
    .clk(clk_out1),
    .sbuf(uart_rx_data_o),
    .IN1(IN1),
    .IN2(IN2),
    .IN3(IN3),
    .IN4(IN4),
    .ENA(ENA),
    .ENB(ENB),
    .NUM(NUM),
    .Key2(Key2)
	);
	coded test2(   
    .Key1(Key1),
    .Key2(Key2),
    .Rst(rst_n_i),
    .LED2(LED2),
    .LED1(LED1),
    .NUM(NUM)
	);

endmodule
