`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 19:10:39
// Design Name: 
// Module Name: drive
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


module drive(
    output reg IN1,
    output reg IN2,
    output reg IN3,
    output reg IN4,
    output reg ENA,
    output reg ENB,
    
    output reg NUM,
    
    input  Key2,
    
    input clk,
    input [7:0]sbuf
    );
    
    always@(*)//��������洢λ
    begin
    NUM = sbuf[0];
    end
    
    reg [1:0]speed=1'b1;//�ٶȱ�־λ
    reg [2:0]driver=1'b0;//�����־λ
    
    always@(posedge clk)//������������ݶԱ�־λ���и�ֵ
        begin
            if(Key2 == 1)
                begin
                case(sbuf)
                    8'b00000000:
                    driver=3'b000;
                    8'b00000001:
                    driver=3'b001;
                    8'b00000010:
                    driver=3'b010;
                    8'b00000011:
                    driver=3'b011;
                    8'b00000100:
                    driver=3'b100;
                    8'b00000101:
                    speed=2'b00;
                    8'b00000110:
                    speed=2'b01;
                    default:
                    begin
                        driver=3'b000;
                        speed=2'b01;
                    end
                endcase
                end
            end
    
    always@(*)//���ݷ���λ�Ե�����п���
        begin
            case(driver)
                3'b000:
                begin//ֹͣ
                    IN1=1;
                    IN2=1;
                    IN3=1;
                    IN4=1;
                end
                3'b001:
                begin//ǰ��
                    IN1=1;
                    IN2=0;
                    IN3=1;
                    IN4=0;
                end
                3'b010:
                begin//��ת
                    IN1=1;
                    IN2=0;
                    IN3=0;
                    IN4=0;
                end
                3'b011:
                begin//��ת
                    IN1=0;
                    IN2=0;
                    IN3=1;
                    IN4=0;
                end
                3'b100:
                begin//����
                    IN1=0;
                    IN2=1;
                    IN3=0;
                    IN4=1;
                end
                default:
                begin
                    IN1=1;
                    IN2=1;
                    IN3=1;
                    IN4=1;
                end
            endcase
            end
            
    always@(posedge clk)//�����ٶ�λ���ٶȽ��п���
        begin
            case(speed)
                2'b00:
                begin//ռ�ձ�Ϊ50%�ķ����������ѹƽ��ֵΪԭ����һ�룬ʵ�ְ���
                    ENA=~ENA;
                    ENB=~ENB;
                end
                2'b01:
                begin//�����ٶ�
                    ENA=1;
                    ENB=1;
                end
                default:
                begin//�����ٶ�
                    ENA=1;
                    ENB=1;
                end
            endcase
        end
endmodule