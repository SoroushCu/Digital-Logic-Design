/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

module Q2(A, B, Cin, S, Co);
  wire _000_;
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
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Co;
  output [3:0] S;
  NOT _075_ (.A(_017_),.Y(_020_));
  NOT _076_ (.A(_018_),.Y(_022_));
  NOR _077_ (.A(_022_),.B(_020_),.Y(_023_));
  NOT _078_ (.A(_023_),.Y(_024_));
  NAND _079_ (.A(_021_),.B(_019_),.Y(_025_));
  NOT _080_ (.A(_015_),.Y(_026_));
  NOT _081_ (.A(_016_),.Y(_027_));
  NOR _082_ (.A(_027_),.B(_026_),.Y(_029_));
  NOT _083_ (.A(_029_),.Y(_031_));
  NAND _084_ (.A(_061_),.B(_051_),.Y(_033_));
  NOT _085_ (.A(_051_),.Y(_034_));
  NOT _086_ (.A(_061_),.Y(_036_));
  NOR _087_ (.A(_036_),.B(_034_),.Y(_037_));
  NOR _088_ (.A(_061_),.B(_051_),.Y(_039_));
  NOR _089_ (.A(_039_),.B(_037_),.Y(_040_));
  NAND _090_ (.A(_040_),.B(_074_),.Y(_041_));
  NAND _091_ (.A(_041_),.B(_033_),.Y(_042_));
  NOR _092_ (.A(_016_),.B(_015_),.Y(_043_));
  NOR _093_ (.A(_043_),.B(_029_),.Y(_044_));
  NAND _094_ (.A(_044_),.B(_042_),.Y(_045_));
  NAND _095_ (.A(_045_),.B(_031_),.Y(_046_));
  NOT _096_ (.A(_025_),.Y(_047_));
  NOR _097_ (.A(_021_),.B(_019_),.Y(_048_));
  NOR _098_ (.A(_048_),.B(_047_),.Y(_049_));
  NAND _099_ (.A(_049_),.B(_046_),.Y(_050_));
  NAND _100_ (.A(_050_),.B(_025_),.Y(_052_));
  NOR _101_ (.A(_018_),.B(_017_),.Y(_053_));
  NOR _102_ (.A(_053_),.B(_023_),.Y(_054_));
  NAND _103_ (.A(_054_),.B(_052_),.Y(_055_));
  NAND _104_ (.A(_055_),.B(_024_),.Y(_028_));
  NOT _105_ (.A(_074_),.Y(_056_));
  NAND _106_ (.A(_036_),.B(_034_),.Y(_057_));
  NAND _107_ (.A(_057_),.B(_033_),.Y(_058_));
  NOR _108_ (.A(_058_),.B(_056_),.Y(_059_));
  NOR _109_ (.A(_040_),.B(_074_),.Y(_060_));
  NOR _110_ (.A(_060_),.B(_059_),.Y(_030_));
  NOR _111_ (.A(_059_),.B(_037_),.Y(_062_));
  NOT _112_ (.A(_044_),.Y(_063_));
  NOR _113_ (.A(_063_),.B(_062_),.Y(_064_));
  NOR _114_ (.A(_044_),.B(_042_),.Y(_065_));
  NOR _115_ (.A(_065_),.B(_064_),.Y(_032_));
  NOR _116_ (.A(_064_),.B(_029_),.Y(_066_));
  NOT _117_ (.A(_049_),.Y(_067_));
  NOR _118_ (.A(_067_),.B(_066_),.Y(_068_));
  NOR _119_ (.A(_049_),.B(_046_),.Y(_069_));
  NOR _120_ (.A(_069_),.B(_068_),.Y(_035_));
  NOR _121_ (.A(_068_),.B(_047_),.Y(_070_));
  NOT _122_ (.A(_054_),.Y(_071_));
  NOR _123_ (.A(_071_),.B(_070_),.Y(_072_));
  NOR _124_ (.A(_054_),.B(_052_),.Y(_073_));
  NOR _125_ (.A(_073_),.B(_072_),.Y(_038_));
  assign _015_ = B[1];
  assign _016_ = A[1];
  assign _051_ = B[0];
  assign _061_ = A[0];
  assign _074_ = Cin;
  assign _017_ = B[3];
  assign _018_ = A[3];
  assign _019_ = B[2];
  assign _021_ = A[2];
  assign Co = _028_;
  assign S[0] = _030_;
  assign S[1] = _032_;
  assign S[2] = _035_;
  assign S[3] = _038_;
endmodule
