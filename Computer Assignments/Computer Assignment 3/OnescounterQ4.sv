`timescale 1ns/1ns
module OnescounterQ4 #(parameter n = 6) (input [2 ** (n + 1) - 2:0]a,output [n:0]OUT);
  wire [(2**n)-1:0]V1;
  wire [3*(2**(n-2))-1:0]V2;
  wire[2**(n-1)-1:0]V3;
  wire [19:0]V4;
  wire[11:0]V5;
  wire[6:0]V6;                                                                                                         
  genvar i;
  generate 
    for(i=0;i<=2**(n-1)-1;i=i+1)begin:Veneer1
      FAnbitQ2 #(1) FA(.a(a[3*i]),.b(a[3*i+1]),.CIN(a[3*i+2]),.SUM(V1[2*i]),.COUT(V1[2*i+1]));
    end
    for(i=0;i<=2**(n-2)-1;i=i+1)begin:Veneer2
      FAnbitQ2 #(2) FA(.a(V1[4*i+1:4*i]),.b(V1[4*i+3:4*i+2]),.CIN(a[i+96]),.SUM(V2[3*i+1:3*i]),.COUT(V2[3*i+2]));
    end
    for(i=0;i<=2**(n-3)-1;i=i+1)begin:Veneer3
      FAnbitQ2 #(3) FA(.a(V2[6*i+2:6*i]),.b(V2[6*i+5:6*i+3]),.CIN(a[i+112]),.SUM(V3[4*i+2:4*i]),.COUT(V3[4*i+3]));
    end
    for(i=0;i<=2**(n-4)-1;i=i+1)begin:Veneer4
      FAnbitQ2 #(4) FA(.a(V3[8*i+3:8*i]),.b(V3[8*i+7:8*i+4]),.CIN(a[i+120]),.SUM(V4[5*i+3:5*i]),.COUT(V4[5*i+4]));
    end
    for(i=0;i<=2**(n-5)-1;i=i+1)begin:Veneer5
      FAnbitQ2 #(5) FA(.a(V4[10*i+4:10*i]),.b(V4[10*i+9:10*i+5]),.CIN(a[i+124]),.SUM(V5[6*i+4:6*i]),.COUT(V5[6*i+5]));
    end
    FAnbitQ2 #(6) FA(.a(V5[5:0]),.b(V5[11:6]),.CIN(a[126]),.SUM(V6[5:0]),.COUT(V6[6]));
  endgenerate
  assign OUT=V6;
endmodule

