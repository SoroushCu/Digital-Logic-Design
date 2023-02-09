/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

module Q74BitUpCounter(PI, clk, rst, cnt, ld, ci, PO, co);
  wire [3:0] _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  input [3:0] PI;
  output [3:0] PO;
  reg [3:0] PO;
  input ci;
  input clk;
  input cnt;
  output co;
  input ld;
  input rst;
  NOT _065_ (
    .A(_019_),
    .Y(_023_)
  );
  NOT _066_ (
    .A(_040_),
    .Y(_024_)
  );
  NOR _067_ (
    .A(_024_),
    .B(_023_),
    .Y(_026_)
  );
  NOR _068_ (
    .A(_026_),
    .B(_018_),
    .Y(_028_)
  );
  NOT _069_ (
    .A(_018_),
    .Y(_029_)
  );
  NAND _070_ (
    .A(_040_),
    .B(_019_),
    .Y(_030_)
  );
  NOR _071_ (
    .A(_030_),
    .B(_029_),
    .Y(_032_)
  );
  NOR _072_ (
    .A(_032_),
    .B(_028_),
    .Y(_033_)
  );
  NOR _073_ (
    .A(_033_),
    .B(_062_),
    .Y(_034_)
  );
  NOT _074_ (
    .A(_062_),
    .Y(_035_)
  );
  NOR _075_ (
    .A(_035_),
    .B(_059_),
    .Y(_037_)
  );
  NOR _076_ (
    .A(_037_),
    .B(_034_),
    .Y(_063_)
  );
  NOR _077_ (
    .A(_032_),
    .B(_064_),
    .Y(_039_)
  );
  NOT _078_ (
    .A(_064_),
    .Y(_041_)
  );
  NAND _079_ (
    .A(_026_),
    .B(_018_),
    .Y(_042_)
  );
  NOR _080_ (
    .A(_042_),
    .B(_041_),
    .Y(_044_)
  );
  NOR _081_ (
    .A(_044_),
    .B(_039_),
    .Y(_045_)
  );
  NOR _082_ (
    .A(_045_),
    .B(_062_),
    .Y(_046_)
  );
  NOR _083_ (
    .A(_020_),
    .B(_035_),
    .Y(_047_)
  );
  NOR _084_ (
    .A(_047_),
    .B(_046_),
    .Y(_021_)
  );
  NOT _085_ (
    .A(_022_),
    .Y(_048_)
  );
  NAND _086_ (
    .A(_032_),
    .B(_064_),
    .Y(_049_)
  );
  NOR _087_ (
    .A(_049_),
    .B(_048_),
    .Y(_050_)
  );
  NOR _088_ (
    .A(_044_),
    .B(_022_),
    .Y(_051_)
  );
  NOR _089_ (
    .A(_051_),
    .B(_050_),
    .Y(_052_)
  );
  NOR _090_ (
    .A(_052_),
    .B(_062_),
    .Y(_053_)
  );
  NOR _091_ (
    .A(_025_),
    .B(_035_),
    .Y(_054_)
  );
  NOR _092_ (
    .A(_054_),
    .B(_053_),
    .Y(_027_)
  );
  NOR _093_ (
    .A(_050_),
    .B(_031_),
    .Y(_055_)
  );
  NOT _094_ (
    .A(_031_),
    .Y(_056_)
  );
  NAND _095_ (
    .A(_044_),
    .B(_022_),
    .Y(_057_)
  );
  NOR _096_ (
    .A(_057_),
    .B(_056_),
    .Y(_043_)
  );
  NOR _097_ (
    .A(_043_),
    .B(_055_),
    .Y(_058_)
  );
  NOR _098_ (
    .A(_058_),
    .B(_062_),
    .Y(_060_)
  );
  NOR _099_ (
    .A(_036_),
    .B(_035_),
    .Y(_061_)
  );
  NOR _100_ (
    .A(_061_),
    .B(_060_),
    .Y(_038_)
  );
  always @(posedge clk or posedge rst)
    if (rst)
      PO[0] <= 0;
    else
      PO[0] <= _000_[0];
  always @(posedge clk or posedge rst)
    if (rst)
      PO[1] <= 0;
    else
      PO[1] <= _000_[1];
  always @(posedge clk or posedge rst)
    if (rst)
      PO[2] <= 0;
    else
      PO[2] <= _000_[2];
  always @(posedge clk or posedge rst)
    if (rst)
      PO[3] <= 0;
    else
      PO[3] <= _000_[3];
  assign _018_ = PO[0];
  assign _019_ = ci;
  assign _040_ = cnt;
  assign _059_ = PI[0];
  assign _062_ = ld;
  assign _000_[0] = _063_;
  assign _064_ = PO[1];
  assign _020_ = PI[1];
  assign _000_[1] = _021_;
  assign _022_ = PO[2];
  assign _025_ = PI[2];
  assign _000_[2] = _027_;
  assign _031_ = PO[3];
  assign _036_ = PI[3];
  assign _000_[3] = _038_;
  assign co = _043_;
endmodule
