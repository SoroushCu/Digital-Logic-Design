/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

module Q8Mealy(clk, rst, j, w);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  input clk;
  input j;
  reg [3:0] ps;
  input rst;
  output w;
  NOT _26_ (
    .A(_08_),
    .Y(_11_)
  );
  NOT _27_ (
    .A(_09_),
    .Y(_13_)
  );
  NOR _28_ (
    .A(_13_),
    .B(_11_),
    .Y(_19_)
  );
  NOR _29_ (
    .A(_22_),
    .B(_09_),
    .Y(_15_)
  );
  NOR _30_ (
    .A(_15_),
    .B(_11_),
    .Y(_23_)
  );
  NOR _31_ (
    .A(_25_),
    .B(_24_),
    .Y(_16_)
  );
  NOR _32_ (
    .A(_16_),
    .B(_11_),
    .Y(_10_)
  );
  NOT _33_ (
    .A(_22_),
    .Y(_17_)
  );
  NAND _34_ (
    .A(_17_),
    .B(_13_),
    .Y(_18_)
  );
  NOR _35_ (
    .A(_18_),
    .B(_25_),
    .Y(_20_)
  );
  NOR _36_ (
    .A(_20_),
    .B(_08_),
    .Y(_12_)
  );
  NOT _37_ (
    .A(_24_),
    .Y(_21_)
  );
  NOR _38_ (
    .A(_21_),
    .B(_08_),
    .Y(_14_)
  );
  always @(posedge clk or posedge rst)
    if (rst)
      ps[0] <= 1;
    else
      ps[0] <= _01_;
  always @(posedge clk or posedge rst)
    if (rst)
      ps[1] <= 0;
    else
      ps[1] <= _00_;
  always @(posedge clk or posedge rst)
    if (rst)
      ps[2] <= 0;
    else
      ps[2] <= _02_;
  always @(posedge clk or posedge rst)
    if (rst)
      ps[3] <= 0;
    else
      ps[3] <= _04_;
  assign _08_ = j;
  assign _09_ = ps[3];
  assign w = _19_;
  assign _22_ = ps[2];
  assign _00_ = _23_;
  assign _24_ = ps[1];
  assign _25_ = ps[0];
  assign _01_ = _10_;
  assign _02_ = _12_;
  assign _04_ = _14_;
endmodule
