`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 15:38:10
// Design Name: 
// Module Name: coded
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


module coded(                                                     
    input Key1,
    input Rst,
    input NUM,                    
    output reg LED1=0, 
    output reg LED2=0, 
    output reg Key2=0               
    ); 
    //定义状态变量 
    reg[3:0]State_Next=0; 
    reg[3:0]State_Current=0; 
    
    //定义状态,One Hot 编码 
    parameter s0 = 4'b0000; 
    parameter s1 = 4'b0001; 
    parameter s2 = 4'b0010; 
    parameter s3 = 4'b0100;
    parameter s4 = 4'b1000; 
     
    //第一段,状态改变 
    always @ (negedge Key1 ) 
        begin 
            if (!Rst) 
                State_Current <= s0; 
            else 
                State_Current <= State_Next;
      
        end 
           
    //第二段,状态判断 
    always @ ( *) 
        begin 
            if (!Rst) 
                State_Next=s0; 
            else 
              case (State_Current) 
                    s0:    State_Next = (NUM)?s1:s0; 
                    s1:    State_Next = (!NUM)?s2:s1; 
                    s2:    State_Next = (NUM)?s3:s0;
                    s3:    State_Next = (!NUM)?s4:s1; 
                    s4:    State_Next = s4;
                    default:    State_Next = 4'bxxxx; 
              endcase 
       end 
     
     
    //第三段,状态处理 
    always @ (Rst or State_Current) 
        begin 
            if(!Rst) 
                LED1 <= 1; 
            else 
                case(State_Current) 
                    s0:    LED1 <= 1; 
                    s1:    LED1 <= 1; 
                    s2:    LED1 <= 1; 
                    s3:    LED1 <= 1; 
                    s4:    begin
                    LED2 <= 1;
                    LED1 <= 0;
                    Key2 <= 1;
                    end
    
                    default:   LED1 <= 1; 
                endcase 
        end      
endmodule
