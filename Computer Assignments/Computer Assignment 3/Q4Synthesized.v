/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

module \$paramod\FAnbitQ2\n=1 (a, b, CIN, SUM, COUT);
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
  input CIN;
  output COUT;
  output SUM;
  input a;
  input b;
  NOT _20_ (
    .A(_13_),
    .Y(_15_)
  );
  NOT _21_ (
    .A(_03_),
    .Y(_17_)
  );
  NOT _22_ (
    .A(_04_),
    .Y(_18_)
  );
  NAND _23_ (
    .A(_18_),
    .B(_17_),
    .Y(_19_)
  );
  NAND _24_ (
    .A(_04_),
    .B(_03_),
    .Y(_05_)
  );
  NAND _25_ (
    .A(_05_),
    .B(_19_),
    .Y(_06_)
  );
  NOR _26_ (
    .A(_06_),
    .B(_15_),
    .Y(_07_)
  );
  NOR _27_ (
    .A(_04_),
    .B(_03_),
    .Y(_08_)
  );
  NOR _28_ (
    .A(_18_),
    .B(_17_),
    .Y(_09_)
  );
  NOR _29_ (
    .A(_09_),
    .B(_08_),
    .Y(_10_)
  );
  NOR _30_ (
    .A(_10_),
    .B(_13_),
    .Y(_11_)
  );
  NOR _31_ (
    .A(_11_),
    .B(_07_),
    .Y(_14_)
  );
  NAND _32_ (
    .A(_10_),
    .B(_13_),
    .Y(_12_)
  );
  NAND _33_ (
    .A(_12_),
    .B(_05_),
    .Y(_16_)
  );
  assign _03_ = CIN;
  assign _04_ = a;
  assign _13_ = b;
  assign SUM = _14_;
  assign COUT = _16_;
endmodule

module \$paramod\FAnbitQ2\n=2 (a, b, CIN, SUM, COUT);
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
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  input CIN;
  output COUT;
  output [1:0] SUM;
  input [1:0] a;
  input [1:0] b;
  NOT _35_ (
    .A(_28_),
    .Y(_34_)
  );
  NAND _36_ (
    .A(_06_),
    .B(_05_),
    .Y(_08_)
  );
  NOT _37_ (
    .A(_05_),
    .Y(_09_)
  );
  NOT _38_ (
    .A(_06_),
    .Y(_11_)
  );
  NAND _39_ (
    .A(_11_),
    .B(_09_),
    .Y(_12_)
  );
  NAND _40_ (
    .A(_12_),
    .B(_08_),
    .Y(_13_)
  );
  NOR _41_ (
    .A(_13_),
    .B(_34_),
    .Y(_14_)
  );
  NOR _42_ (
    .A(_11_),
    .B(_09_),
    .Y(_15_)
  );
  NOR _43_ (
    .A(_06_),
    .B(_05_),
    .Y(_16_)
  );
  NOR _44_ (
    .A(_16_),
    .B(_15_),
    .Y(_17_)
  );
  NOR _45_ (
    .A(_17_),
    .B(_28_),
    .Y(_18_)
  );
  NOR _46_ (
    .A(_18_),
    .B(_14_),
    .Y(_31_)
  );
  NOR _47_ (
    .A(_14_),
    .B(_15_),
    .Y(_19_)
  );
  NOR _48_ (
    .A(_33_),
    .B(_32_),
    .Y(_20_)
  );
  NAND _49_ (
    .A(_33_),
    .B(_32_),
    .Y(_21_)
  );
  NOT _50_ (
    .A(_21_),
    .Y(_22_)
  );
  NOR _51_ (
    .A(_22_),
    .B(_20_),
    .Y(_23_)
  );
  NOT _52_ (
    .A(_23_),
    .Y(_24_)
  );
  NOR _53_ (
    .A(_24_),
    .B(_19_),
    .Y(_25_)
  );
  NAND _54_ (
    .A(_17_),
    .B(_28_),
    .Y(_26_)
  );
  NAND _55_ (
    .A(_26_),
    .B(_08_),
    .Y(_27_)
  );
  NOR _56_ (
    .A(_23_),
    .B(_27_),
    .Y(_29_)
  );
  NOR _57_ (
    .A(_29_),
    .B(_25_),
    .Y(_07_)
  );
  NAND _58_ (
    .A(_23_),
    .B(_27_),
    .Y(_30_)
  );
  NAND _59_ (
    .A(_30_),
    .B(_21_),
    .Y(_10_)
  );
  assign _05_ = b[0];
  assign _06_ = a[0];
  assign _28_ = CIN;
  assign SUM[0] = _31_;
  assign _32_ = b[1];
  assign _33_ = a[1];
  assign SUM[1] = _07_;
  assign COUT = _10_;
endmodule

module \$paramod\FAnbitQ2\n=3 (a, b, CIN, SUM, COUT);
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
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  wire _43_;
  wire _44_;
  wire _45_;
  wire _46_;
  wire _47_;
  wire _48_;
  wire _49_;
  wire _50_;
  wire _51_;
  wire _52_;
  wire _53_;
  input CIN;
  output COUT;
  output [2:0] SUM;
  input [2:0] a;
  input [2:0] b;
  NOT _54_ (
    .A(_33_),
    .Y(_13_)
  );
  NOT _55_ (
    .A(_09_),
    .Y(_15_)
  );
  NOT _56_ (
    .A(_10_),
    .Y(_16_)
  );
  NAND _57_ (
    .A(_16_),
    .B(_15_),
    .Y(_17_)
  );
  NAND _58_ (
    .A(_10_),
    .B(_09_),
    .Y(_18_)
  );
  NAND _59_ (
    .A(_18_),
    .B(_17_),
    .Y(_20_)
  );
  NOR _60_ (
    .A(_20_),
    .B(_13_),
    .Y(_21_)
  );
  NOR _61_ (
    .A(_10_),
    .B(_09_),
    .Y(_23_)
  );
  NOR _62_ (
    .A(_16_),
    .B(_15_),
    .Y(_24_)
  );
  NOR _63_ (
    .A(_24_),
    .B(_23_),
    .Y(_25_)
  );
  NOR _64_ (
    .A(_25_),
    .B(_33_),
    .Y(_26_)
  );
  NOR _65_ (
    .A(_26_),
    .B(_21_),
    .Y(_43_)
  );
  NOR _66_ (
    .A(_21_),
    .B(_24_),
    .Y(_27_)
  );
  NOT _67_ (
    .A(_52_),
    .Y(_28_)
  );
  NOT _68_ (
    .A(_53_),
    .Y(_29_)
  );
  NOR _69_ (
    .A(_29_),
    .B(_28_),
    .Y(_30_)
  );
  NOR _70_ (
    .A(_53_),
    .B(_52_),
    .Y(_31_)
  );
  NOR _71_ (
    .A(_31_),
    .B(_30_),
    .Y(_32_)
  );
  NOT _72_ (
    .A(_32_),
    .Y(_34_)
  );
  NOR _73_ (
    .A(_34_),
    .B(_27_),
    .Y(_35_)
  );
  NAND _74_ (
    .A(_25_),
    .B(_33_),
    .Y(_36_)
  );
  NAND _75_ (
    .A(_36_),
    .B(_18_),
    .Y(_37_)
  );
  NOR _76_ (
    .A(_32_),
    .B(_37_),
    .Y(_38_)
  );
  NOR _77_ (
    .A(_38_),
    .B(_35_),
    .Y(_11_)
  );
  NOR _78_ (
    .A(_35_),
    .B(_30_),
    .Y(_39_)
  );
  NOR _79_ (
    .A(_14_),
    .B(_12_),
    .Y(_40_)
  );
  NAND _80_ (
    .A(_14_),
    .B(_12_),
    .Y(_41_)
  );
  NOT _81_ (
    .A(_41_),
    .Y(_42_)
  );
  NOR _82_ (
    .A(_42_),
    .B(_40_),
    .Y(_44_)
  );
  NOT _83_ (
    .A(_44_),
    .Y(_45_)
  );
  NOR _84_ (
    .A(_45_),
    .B(_39_),
    .Y(_46_)
  );
  NOT _85_ (
    .A(_30_),
    .Y(_47_)
  );
  NAND _86_ (
    .A(_32_),
    .B(_37_),
    .Y(_48_)
  );
  NAND _87_ (
    .A(_48_),
    .B(_47_),
    .Y(_49_)
  );
  NOR _88_ (
    .A(_44_),
    .B(_49_),
    .Y(_50_)
  );
  NOR _89_ (
    .A(_50_),
    .B(_46_),
    .Y(_19_)
  );
  NAND _90_ (
    .A(_44_),
    .B(_49_),
    .Y(_51_)
  );
  NAND _91_ (
    .A(_51_),
    .B(_41_),
    .Y(_22_)
  );
  assign _09_ = b[0];
  assign _10_ = a[0];
  assign _33_ = CIN;
  assign SUM[0] = _43_;
  assign _52_ = b[1];
  assign _53_ = a[1];
  assign SUM[1] = _11_;
  assign _12_ = b[2];
  assign _14_ = a[2];
  assign SUM[2] = _19_;
  assign COUT = _22_;
endmodule

module \$paramod\FAnbitQ2\n=4 (a, b, CIN, SUM, COUT);
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
  input CIN;
  output COUT;
  output [3:0] SUM;
  input [3:0] a;
  input [3:0] b;
  NOT _073_ (
    .A(_039_),
    .Y(_020_)
  );
  NAND _074_ (
    .A(_016_),
    .B(_015_),
    .Y(_022_)
  );
  NOT _075_ (
    .A(_015_),
    .Y(_024_)
  );
  NOT _076_ (
    .A(_016_),
    .Y(_026_)
  );
  NAND _077_ (
    .A(_026_),
    .B(_024_),
    .Y(_027_)
  );
  NAND _078_ (
    .A(_027_),
    .B(_022_),
    .Y(_028_)
  );
  NOR _079_ (
    .A(_028_),
    .B(_020_),
    .Y(_029_)
  );
  NOR _080_ (
    .A(_026_),
    .B(_024_),
    .Y(_031_)
  );
  NOR _081_ (
    .A(_016_),
    .B(_015_),
    .Y(_032_)
  );
  NOR _082_ (
    .A(_032_),
    .B(_031_),
    .Y(_033_)
  );
  NOR _083_ (
    .A(_033_),
    .B(_039_),
    .Y(_034_)
  );
  NOR _084_ (
    .A(_034_),
    .B(_029_),
    .Y(_049_)
  );
  NOR _085_ (
    .A(_029_),
    .B(_031_),
    .Y(_035_)
  );
  NOR _086_ (
    .A(_070_),
    .B(_059_),
    .Y(_037_)
  );
  NAND _087_ (
    .A(_070_),
    .B(_059_),
    .Y(_038_)
  );
  NOT _088_ (
    .A(_038_),
    .Y(_040_)
  );
  NOR _089_ (
    .A(_040_),
    .B(_037_),
    .Y(_041_)
  );
  NOT _090_ (
    .A(_041_),
    .Y(_042_)
  );
  NOR _091_ (
    .A(_042_),
    .B(_035_),
    .Y(_043_)
  );
  NAND _092_ (
    .A(_033_),
    .B(_039_),
    .Y(_044_)
  );
  NAND _093_ (
    .A(_044_),
    .B(_022_),
    .Y(_045_)
  );
  NOR _094_ (
    .A(_041_),
    .B(_045_),
    .Y(_046_)
  );
  NOR _095_ (
    .A(_046_),
    .B(_043_),
    .Y(_017_)
  );
  NOR _096_ (
    .A(_043_),
    .B(_040_),
    .Y(_047_)
  );
  NAND _097_ (
    .A(_019_),
    .B(_018_),
    .Y(_048_)
  );
  NOT _098_ (
    .A(_048_),
    .Y(_050_)
  );
  NOR _099_ (
    .A(_019_),
    .B(_018_),
    .Y(_051_)
  );
  NOR _100_ (
    .A(_051_),
    .B(_050_),
    .Y(_052_)
  );
  NOT _101_ (
    .A(_052_),
    .Y(_053_)
  );
  NOR _102_ (
    .A(_053_),
    .B(_047_),
    .Y(_054_)
  );
  NAND _103_ (
    .A(_041_),
    .B(_045_),
    .Y(_055_)
  );
  NAND _104_ (
    .A(_055_),
    .B(_038_),
    .Y(_056_)
  );
  NOR _105_ (
    .A(_052_),
    .B(_056_),
    .Y(_057_)
  );
  NOR _106_ (
    .A(_057_),
    .B(_054_),
    .Y(_021_)
  );
  NOR _107_ (
    .A(_054_),
    .B(_050_),
    .Y(_058_)
  );
  NOT _108_ (
    .A(_023_),
    .Y(_060_)
  );
  NOT _109_ (
    .A(_025_),
    .Y(_061_)
  );
  NOR _110_ (
    .A(_061_),
    .B(_060_),
    .Y(_062_)
  );
  NOR _111_ (
    .A(_025_),
    .B(_023_),
    .Y(_063_)
  );
  NOR _112_ (
    .A(_063_),
    .B(_062_),
    .Y(_064_)
  );
  NOT _113_ (
    .A(_064_),
    .Y(_065_)
  );
  NOR _114_ (
    .A(_065_),
    .B(_058_),
    .Y(_066_)
  );
  NAND _115_ (
    .A(_052_),
    .B(_056_),
    .Y(_067_)
  );
  NAND _116_ (
    .A(_067_),
    .B(_048_),
    .Y(_068_)
  );
  NOR _117_ (
    .A(_064_),
    .B(_068_),
    .Y(_069_)
  );
  NOR _118_ (
    .A(_069_),
    .B(_066_),
    .Y(_030_)
  );
  NOT _119_ (
    .A(_062_),
    .Y(_071_)
  );
  NAND _120_ (
    .A(_064_),
    .B(_068_),
    .Y(_072_)
  );
  NAND _121_ (
    .A(_072_),
    .B(_071_),
    .Y(_036_)
  );
  assign _015_ = b[0];
  assign _016_ = a[0];
  assign _039_ = CIN;
  assign SUM[0] = _049_;
  assign _059_ = b[1];
  assign _070_ = a[1];
  assign SUM[1] = _017_;
  assign _018_ = b[2];
  assign _019_ = a[2];
  assign SUM[2] = _021_;
  assign _023_ = b[3];
  assign _025_ = a[3];
  assign SUM[3] = _030_;
  assign COUT = _036_;
endmodule

module \$paramod\FAnbitQ2\n=5 (a, b, CIN, SUM, COUT);
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
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  input CIN;
  output COUT;
  output [4:0] SUM;
  input [4:0] a;
  input [4:0] b;
  NOT _093_ (
    .A(_018_),
    .Y(_024_)
  );
  NOT _094_ (
    .A(_019_),
    .Y(_026_)
  );
  NOR _095_ (
    .A(_026_),
    .B(_024_),
    .Y(_027_)
  );
  NOT _096_ (
    .A(_027_),
    .Y(_028_)
  );
  NOT _097_ (
    .A(_021_),
    .Y(_029_)
  );
  NOT _098_ (
    .A(_022_),
    .Y(_030_)
  );
  NOR _099_ (
    .A(_030_),
    .B(_029_),
    .Y(_031_)
  );
  NOT _100_ (
    .A(_031_),
    .Y(_032_)
  );
  NAND _101_ (
    .A(_025_),
    .B(_023_),
    .Y(_033_)
  );
  NOT _102_ (
    .A(_033_),
    .Y(_034_)
  );
  NOR _103_ (
    .A(_025_),
    .B(_023_),
    .Y(_036_)
  );
  NOR _104_ (
    .A(_036_),
    .B(_034_),
    .Y(_038_)
  );
  NOT _105_ (
    .A(_053_),
    .Y(_040_)
  );
  NOT _106_ (
    .A(_064_),
    .Y(_042_)
  );
  NOR _107_ (
    .A(_042_),
    .B(_040_),
    .Y(_043_)
  );
  NOT _108_ (
    .A(_043_),
    .Y(_045_)
  );
  NAND _109_ (
    .A(_092_),
    .B(_090_),
    .Y(_047_)
  );
  NOT _110_ (
    .A(_090_),
    .Y(_048_)
  );
  NOT _111_ (
    .A(_092_),
    .Y(_049_)
  );
  NOR _112_ (
    .A(_049_),
    .B(_048_),
    .Y(_050_)
  );
  NOR _113_ (
    .A(_092_),
    .B(_090_),
    .Y(_051_)
  );
  NOR _114_ (
    .A(_051_),
    .B(_050_),
    .Y(_052_)
  );
  NAND _115_ (
    .A(_052_),
    .B(_020_),
    .Y(_054_)
  );
  NAND _116_ (
    .A(_054_),
    .B(_047_),
    .Y(_055_)
  );
  NOR _117_ (
    .A(_064_),
    .B(_053_),
    .Y(_056_)
  );
  NOR _118_ (
    .A(_056_),
    .B(_043_),
    .Y(_057_)
  );
  NAND _119_ (
    .A(_057_),
    .B(_055_),
    .Y(_058_)
  );
  NAND _120_ (
    .A(_058_),
    .B(_045_),
    .Y(_059_)
  );
  NAND _121_ (
    .A(_059_),
    .B(_038_),
    .Y(_060_)
  );
  NAND _122_ (
    .A(_060_),
    .B(_033_),
    .Y(_061_)
  );
  NOR _123_ (
    .A(_022_),
    .B(_021_),
    .Y(_062_)
  );
  NOR _124_ (
    .A(_062_),
    .B(_031_),
    .Y(_063_)
  );
  NAND _125_ (
    .A(_063_),
    .B(_061_),
    .Y(_065_)
  );
  NAND _126_ (
    .A(_065_),
    .B(_032_),
    .Y(_066_)
  );
  NOR _127_ (
    .A(_019_),
    .B(_018_),
    .Y(_067_)
  );
  NOR _128_ (
    .A(_067_),
    .B(_027_),
    .Y(_068_)
  );
  NAND _129_ (
    .A(_068_),
    .B(_066_),
    .Y(_069_)
  );
  NAND _130_ (
    .A(_069_),
    .B(_028_),
    .Y(_035_)
  );
  NOT _131_ (
    .A(_020_),
    .Y(_070_)
  );
  NAND _132_ (
    .A(_049_),
    .B(_048_),
    .Y(_071_)
  );
  NAND _133_ (
    .A(_071_),
    .B(_047_),
    .Y(_072_)
  );
  NOR _134_ (
    .A(_072_),
    .B(_070_),
    .Y(_073_)
  );
  NOR _135_ (
    .A(_052_),
    .B(_020_),
    .Y(_074_)
  );
  NOR _136_ (
    .A(_074_),
    .B(_073_),
    .Y(_037_)
  );
  NOR _137_ (
    .A(_073_),
    .B(_050_),
    .Y(_075_)
  );
  NOT _138_ (
    .A(_057_),
    .Y(_076_)
  );
  NOR _139_ (
    .A(_076_),
    .B(_075_),
    .Y(_077_)
  );
  NOR _140_ (
    .A(_057_),
    .B(_055_),
    .Y(_078_)
  );
  NOR _141_ (
    .A(_078_),
    .B(_077_),
    .Y(_039_)
  );
  NOT _142_ (
    .A(_038_),
    .Y(_079_)
  );
  NOR _143_ (
    .A(_077_),
    .B(_043_),
    .Y(_080_)
  );
  NOR _144_ (
    .A(_080_),
    .B(_079_),
    .Y(_081_)
  );
  NOR _145_ (
    .A(_059_),
    .B(_038_),
    .Y(_082_)
  );
  NOR _146_ (
    .A(_082_),
    .B(_081_),
    .Y(_041_)
  );
  NOR _147_ (
    .A(_081_),
    .B(_034_),
    .Y(_083_)
  );
  NOT _148_ (
    .A(_063_),
    .Y(_084_)
  );
  NOR _149_ (
    .A(_084_),
    .B(_083_),
    .Y(_085_)
  );
  NOR _150_ (
    .A(_063_),
    .B(_061_),
    .Y(_086_)
  );
  NOR _151_ (
    .A(_086_),
    .B(_085_),
    .Y(_044_)
  );
  NOR _152_ (
    .A(_085_),
    .B(_031_),
    .Y(_087_)
  );
  NOT _153_ (
    .A(_068_),
    .Y(_088_)
  );
  NOR _154_ (
    .A(_088_),
    .B(_087_),
    .Y(_089_)
  );
  NOR _155_ (
    .A(_068_),
    .B(_066_),
    .Y(_091_)
  );
  NOR _156_ (
    .A(_091_),
    .B(_089_),
    .Y(_046_)
  );
  assign _018_ = b[4];
  assign _019_ = a[4];
  assign _053_ = b[1];
  assign _064_ = a[1];
  assign _090_ = b[0];
  assign _092_ = a[0];
  assign _020_ = CIN;
  assign _021_ = b[3];
  assign _022_ = a[3];
  assign _023_ = b[2];
  assign _025_ = a[2];
  assign COUT = _035_;
  assign SUM[0] = _037_;
  assign SUM[1] = _039_;
  assign SUM[2] = _041_;
  assign SUM[3] = _044_;
  assign SUM[4] = _046_;
endmodule

module \$paramod\FAnbitQ2\n=6 (a, b, CIN, SUM, COUT);
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
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  input CIN;
  output COUT;
  output [5:0] SUM;
  input [5:0] a;
  input [5:0] b;
  NOT _114_ (
    .A(_045_),
    .Y(_033_)
  );
  NOT _115_ (
    .A(_025_),
    .Y(_034_)
  );
  NOT _116_ (
    .A(_026_),
    .Y(_035_)
  );
  NAND _117_ (
    .A(_035_),
    .B(_034_),
    .Y(_037_)
  );
  NAND _118_ (
    .A(_026_),
    .B(_025_),
    .Y(_039_)
  );
  NAND _119_ (
    .A(_039_),
    .B(_037_),
    .Y(_041_)
  );
  NOR _120_ (
    .A(_041_),
    .B(_033_),
    .Y(_042_)
  );
  NOR _121_ (
    .A(_026_),
    .B(_025_),
    .Y(_043_)
  );
  NOR _122_ (
    .A(_035_),
    .B(_034_),
    .Y(_044_)
  );
  NOR _123_ (
    .A(_044_),
    .B(_043_),
    .Y(_046_)
  );
  NOR _124_ (
    .A(_046_),
    .B(_045_),
    .Y(_047_)
  );
  NOR _125_ (
    .A(_047_),
    .B(_042_),
    .Y(_059_)
  );
  NOR _126_ (
    .A(_042_),
    .B(_044_),
    .Y(_050_)
  );
  NOT _127_ (
    .A(_070_),
    .Y(_052_)
  );
  NOT _128_ (
    .A(_080_),
    .Y(_053_)
  );
  NOR _129_ (
    .A(_053_),
    .B(_052_),
    .Y(_054_)
  );
  NOR _130_ (
    .A(_080_),
    .B(_070_),
    .Y(_055_)
  );
  NOR _131_ (
    .A(_055_),
    .B(_054_),
    .Y(_057_)
  );
  NOT _132_ (
    .A(_057_),
    .Y(_058_)
  );
  NOR _133_ (
    .A(_058_),
    .B(_050_),
    .Y(_060_)
  );
  NAND _134_ (
    .A(_046_),
    .B(_045_),
    .Y(_061_)
  );
  NAND _135_ (
    .A(_061_),
    .B(_039_),
    .Y(_062_)
  );
  NOR _136_ (
    .A(_057_),
    .B(_062_),
    .Y(_063_)
  );
  NOR _137_ (
    .A(_063_),
    .B(_060_),
    .Y(_027_)
  );
  NOR _138_ (
    .A(_060_),
    .B(_054_),
    .Y(_065_)
  );
  NAND _139_ (
    .A(_029_),
    .B(_028_),
    .Y(_066_)
  );
  NOT _140_ (
    .A(_066_),
    .Y(_067_)
  );
  NOR _141_ (
    .A(_029_),
    .B(_028_),
    .Y(_068_)
  );
  NOR _142_ (
    .A(_068_),
    .B(_067_),
    .Y(_069_)
  );
  NOT _143_ (
    .A(_069_),
    .Y(_071_)
  );
  NOR _144_ (
    .A(_071_),
    .B(_065_),
    .Y(_072_)
  );
  NOT _145_ (
    .A(_054_),
    .Y(_073_)
  );
  NAND _146_ (
    .A(_057_),
    .B(_062_),
    .Y(_074_)
  );
  NAND _147_ (
    .A(_074_),
    .B(_073_),
    .Y(_075_)
  );
  NOR _148_ (
    .A(_069_),
    .B(_075_),
    .Y(_076_)
  );
  NOR _149_ (
    .A(_076_),
    .B(_072_),
    .Y(_030_)
  );
  NOR _150_ (
    .A(_072_),
    .B(_067_),
    .Y(_077_)
  );
  NOR _151_ (
    .A(_032_),
    .B(_031_),
    .Y(_078_)
  );
  NAND _152_ (
    .A(_032_),
    .B(_031_),
    .Y(_079_)
  );
  NOT _153_ (
    .A(_079_),
    .Y(_081_)
  );
  NOR _154_ (
    .A(_081_),
    .B(_078_),
    .Y(_082_)
  );
  NAND _155_ (
    .A(_082_),
    .B(_077_),
    .Y(_083_)
  );
  NAND _156_ (
    .A(_069_),
    .B(_075_),
    .Y(_084_)
  );
  NAND _157_ (
    .A(_084_),
    .B(_066_),
    .Y(_085_)
  );
  NOT _158_ (
    .A(_082_),
    .Y(_086_)
  );
  NAND _159_ (
    .A(_086_),
    .B(_085_),
    .Y(_087_)
  );
  NAND _160_ (
    .A(_087_),
    .B(_083_),
    .Y(_036_)
  );
  NOT _161_ (
    .A(_038_),
    .Y(_088_)
  );
  NOT _162_ (
    .A(_040_),
    .Y(_089_)
  );
  NOR _163_ (
    .A(_089_),
    .B(_088_),
    .Y(_090_)
  );
  NOR _164_ (
    .A(_040_),
    .B(_038_),
    .Y(_091_)
  );
  NOR _165_ (
    .A(_091_),
    .B(_090_),
    .Y(_092_)
  );
  NOT _166_ (
    .A(_092_),
    .Y(_093_)
  );
  NOR _167_ (
    .A(_078_),
    .B(_077_),
    .Y(_094_)
  );
  NOR _168_ (
    .A(_094_),
    .B(_081_),
    .Y(_095_)
  );
  NOR _169_ (
    .A(_095_),
    .B(_093_),
    .Y(_096_)
  );
  NOR _170_ (
    .A(_081_),
    .B(_085_),
    .Y(_097_)
  );
  NOR _171_ (
    .A(_097_),
    .B(_078_),
    .Y(_098_)
  );
  NOR _172_ (
    .A(_098_),
    .B(_092_),
    .Y(_099_)
  );
  NOR _173_ (
    .A(_099_),
    .B(_096_),
    .Y(_048_)
  );
  NOR _174_ (
    .A(_096_),
    .B(_090_),
    .Y(_100_)
  );
  NOT _175_ (
    .A(_049_),
    .Y(_101_)
  );
  NOT _176_ (
    .A(_051_),
    .Y(_102_)
  );
  NOR _177_ (
    .A(_102_),
    .B(_101_),
    .Y(_103_)
  );
  NOR _178_ (
    .A(_051_),
    .B(_049_),
    .Y(_104_)
  );
  NOR _179_ (
    .A(_104_),
    .B(_103_),
    .Y(_105_)
  );
  NOT _180_ (
    .A(_105_),
    .Y(_106_)
  );
  NOR _181_ (
    .A(_106_),
    .B(_100_),
    .Y(_107_)
  );
  NOT _182_ (
    .A(_090_),
    .Y(_108_)
  );
  NAND _183_ (
    .A(_098_),
    .B(_092_),
    .Y(_109_)
  );
  NAND _184_ (
    .A(_109_),
    .B(_108_),
    .Y(_110_)
  );
  NOR _185_ (
    .A(_105_),
    .B(_110_),
    .Y(_111_)
  );
  NOR _186_ (
    .A(_111_),
    .B(_107_),
    .Y(_056_)
  );
  NOT _187_ (
    .A(_103_),
    .Y(_112_)
  );
  NAND _188_ (
    .A(_105_),
    .B(_110_),
    .Y(_113_)
  );
  NAND _189_ (
    .A(_113_),
    .B(_112_),
    .Y(_064_)
  );
  assign _025_ = b[0];
  assign _026_ = a[0];
  assign _045_ = CIN;
  assign SUM[0] = _059_;
  assign _070_ = b[1];
  assign _080_ = a[1];
  assign SUM[1] = _027_;
  assign _028_ = b[2];
  assign _029_ = a[2];
  assign SUM[2] = _030_;
  assign _031_ = b[3];
  assign _032_ = a[3];
  assign SUM[3] = _036_;
  assign _038_ = b[4];
  assign _040_ = a[4];
  assign SUM[4] = _048_;
  assign _049_ = b[5];
  assign _051_ = a[5];
  assign SUM[5] = _056_;
  assign COUT = _064_;
endmodule

module OnescounterQ4(a, OUT);
  output [6:0] OUT;
  wire [63:0] V1;
  wire [47:0] V2;
  wire [31:0] V3;
  wire [19:0] V4;
  wire [11:0] V5;
  wire [6:0] V6;
  input [126:0] a;
  \$paramod\FAnbitQ2\n=6  FA (
    .CIN(a[126]),
    .COUT(V6[6]),
    .SUM(V6[5:0]),
    .a(V5[5:0]),
    .b(V5[11:6])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[0].FA  (
    .CIN(a[2]),
    .COUT(V1[1]),
    .SUM(V1[0]),
    .a(a[0]),
    .b(a[1])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[10].FA  (
    .CIN(a[32]),
    .COUT(V1[21]),
    .SUM(V1[20]),
    .a(a[30]),
    .b(a[31])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[11].FA  (
    .CIN(a[35]),
    .COUT(V1[23]),
    .SUM(V1[22]),
    .a(a[33]),
    .b(a[34])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[12].FA  (
    .CIN(a[38]),
    .COUT(V1[25]),
    .SUM(V1[24]),
    .a(a[36]),
    .b(a[37])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[13].FA  (
    .CIN(a[41]),
    .COUT(V1[27]),
    .SUM(V1[26]),
    .a(a[39]),
    .b(a[40])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[14].FA  (
    .CIN(a[44]),
    .COUT(V1[29]),
    .SUM(V1[28]),
    .a(a[42]),
    .b(a[43])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[15].FA  (
    .CIN(a[47]),
    .COUT(V1[31]),
    .SUM(V1[30]),
    .a(a[45]),
    .b(a[46])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[16].FA  (
    .CIN(a[50]),
    .COUT(V1[33]),
    .SUM(V1[32]),
    .a(a[48]),
    .b(a[49])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[17].FA  (
    .CIN(a[53]),
    .COUT(V1[35]),
    .SUM(V1[34]),
    .a(a[51]),
    .b(a[52])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[18].FA  (
    .CIN(a[56]),
    .COUT(V1[37]),
    .SUM(V1[36]),
    .a(a[54]),
    .b(a[55])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[19].FA  (
    .CIN(a[59]),
    .COUT(V1[39]),
    .SUM(V1[38]),
    .a(a[57]),
    .b(a[58])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[1].FA  (
    .CIN(a[5]),
    .COUT(V1[3]),
    .SUM(V1[2]),
    .a(a[3]),
    .b(a[4])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[20].FA  (
    .CIN(a[62]),
    .COUT(V1[41]),
    .SUM(V1[40]),
    .a(a[60]),
    .b(a[61])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[21].FA  (
    .CIN(a[65]),
    .COUT(V1[43]),
    .SUM(V1[42]),
    .a(a[63]),
    .b(a[64])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[22].FA  (
    .CIN(a[68]),
    .COUT(V1[45]),
    .SUM(V1[44]),
    .a(a[66]),
    .b(a[67])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[23].FA  (
    .CIN(a[71]),
    .COUT(V1[47]),
    .SUM(V1[46]),
    .a(a[69]),
    .b(a[70])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[24].FA  (
    .CIN(a[74]),
    .COUT(V1[49]),
    .SUM(V1[48]),
    .a(a[72]),
    .b(a[73])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[25].FA  (
    .CIN(a[77]),
    .COUT(V1[51]),
    .SUM(V1[50]),
    .a(a[75]),
    .b(a[76])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[26].FA  (
    .CIN(a[80]),
    .COUT(V1[53]),
    .SUM(V1[52]),
    .a(a[78]),
    .b(a[79])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[27].FA  (
    .CIN(a[83]),
    .COUT(V1[55]),
    .SUM(V1[54]),
    .a(a[81]),
    .b(a[82])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[28].FA  (
    .CIN(a[86]),
    .COUT(V1[57]),
    .SUM(V1[56]),
    .a(a[84]),
    .b(a[85])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[29].FA  (
    .CIN(a[89]),
    .COUT(V1[59]),
    .SUM(V1[58]),
    .a(a[87]),
    .b(a[88])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[2].FA  (
    .CIN(a[8]),
    .COUT(V1[5]),
    .SUM(V1[4]),
    .a(a[6]),
    .b(a[7])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[30].FA  (
    .CIN(a[92]),
    .COUT(V1[61]),
    .SUM(V1[60]),
    .a(a[90]),
    .b(a[91])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[31].FA  (
    .CIN(a[95]),
    .COUT(V1[63]),
    .SUM(V1[62]),
    .a(a[93]),
    .b(a[94])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[3].FA  (
    .CIN(a[11]),
    .COUT(V1[7]),
    .SUM(V1[6]),
    .a(a[9]),
    .b(a[10])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[4].FA  (
    .CIN(a[14]),
    .COUT(V1[9]),
    .SUM(V1[8]),
    .a(a[12]),
    .b(a[13])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[5].FA  (
    .CIN(a[17]),
    .COUT(V1[11]),
    .SUM(V1[10]),
    .a(a[15]),
    .b(a[16])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[6].FA  (
    .CIN(a[20]),
    .COUT(V1[13]),
    .SUM(V1[12]),
    .a(a[18]),
    .b(a[19])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[7].FA  (
    .CIN(a[23]),
    .COUT(V1[15]),
    .SUM(V1[14]),
    .a(a[21]),
    .b(a[22])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[8].FA  (
    .CIN(a[26]),
    .COUT(V1[17]),
    .SUM(V1[16]),
    .a(a[24]),
    .b(a[25])
  );
  \$paramod\FAnbitQ2\n=1  \Veneer1[9].FA  (
    .CIN(a[29]),
    .COUT(V1[19]),
    .SUM(V1[18]),
    .a(a[27]),
    .b(a[28])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[0].FA  (
    .CIN(a[96]),
    .COUT(V2[2]),
    .SUM(V2[1:0]),
    .a(V1[1:0]),
    .b(V1[3:2])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[10].FA  (
    .CIN(a[106]),
    .COUT(V2[32]),
    .SUM(V2[31:30]),
    .a(V1[41:40]),
    .b(V1[43:42])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[11].FA  (
    .CIN(a[107]),
    .COUT(V2[35]),
    .SUM(V2[34:33]),
    .a(V1[45:44]),
    .b(V1[47:46])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[12].FA  (
    .CIN(a[108]),
    .COUT(V2[38]),
    .SUM(V2[37:36]),
    .a(V1[49:48]),
    .b(V1[51:50])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[13].FA  (
    .CIN(a[109]),
    .COUT(V2[41]),
    .SUM(V2[40:39]),
    .a(V1[53:52]),
    .b(V1[55:54])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[14].FA  (
    .CIN(a[110]),
    .COUT(V2[44]),
    .SUM(V2[43:42]),
    .a(V1[57:56]),
    .b(V1[59:58])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[15].FA  (
    .CIN(a[111]),
    .COUT(V2[47]),
    .SUM(V2[46:45]),
    .a(V1[61:60]),
    .b(V1[63:62])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[1].FA  (
    .CIN(a[97]),
    .COUT(V2[5]),
    .SUM(V2[4:3]),
    .a(V1[5:4]),
    .b(V1[7:6])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[2].FA  (
    .CIN(a[98]),
    .COUT(V2[8]),
    .SUM(V2[7:6]),
    .a(V1[9:8]),
    .b(V1[11:10])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[3].FA  (
    .CIN(a[99]),
    .COUT(V2[11]),
    .SUM(V2[10:9]),
    .a(V1[13:12]),
    .b(V1[15:14])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[4].FA  (
    .CIN(a[100]),
    .COUT(V2[14]),
    .SUM(V2[13:12]),
    .a(V1[17:16]),
    .b(V1[19:18])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[5].FA  (
    .CIN(a[101]),
    .COUT(V2[17]),
    .SUM(V2[16:15]),
    .a(V1[21:20]),
    .b(V1[23:22])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[6].FA  (
    .CIN(a[102]),
    .COUT(V2[20]),
    .SUM(V2[19:18]),
    .a(V1[25:24]),
    .b(V1[27:26])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[7].FA  (
    .CIN(a[103]),
    .COUT(V2[23]),
    .SUM(V2[22:21]),
    .a(V1[29:28]),
    .b(V1[31:30])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[8].FA  (
    .CIN(a[104]),
    .COUT(V2[26]),
    .SUM(V2[25:24]),
    .a(V1[33:32]),
    .b(V1[35:34])
  );
  \$paramod\FAnbitQ2\n=2  \Veneer2[9].FA  (
    .CIN(a[105]),
    .COUT(V2[29]),
    .SUM(V2[28:27]),
    .a(V1[37:36]),
    .b(V1[39:38])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[0].FA  (
    .CIN(a[112]),
    .COUT(V3[3]),
    .SUM(V3[2:0]),
    .a(V2[2:0]),
    .b(V2[5:3])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[1].FA  (
    .CIN(a[113]),
    .COUT(V3[7]),
    .SUM(V3[6:4]),
    .a(V2[8:6]),
    .b(V2[11:9])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[2].FA  (
    .CIN(a[114]),
    .COUT(V3[11]),
    .SUM(V3[10:8]),
    .a(V2[14:12]),
    .b(V2[17:15])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[3].FA  (
    .CIN(a[115]),
    .COUT(V3[15]),
    .SUM(V3[14:12]),
    .a(V2[20:18]),
    .b(V2[23:21])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[4].FA  (
    .CIN(a[116]),
    .COUT(V3[19]),
    .SUM(V3[18:16]),
    .a(V2[26:24]),
    .b(V2[29:27])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[5].FA  (
    .CIN(a[117]),
    .COUT(V3[23]),
    .SUM(V3[22:20]),
    .a(V2[32:30]),
    .b(V2[35:33])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[6].FA  (
    .CIN(a[118]),
    .COUT(V3[27]),
    .SUM(V3[26:24]),
    .a(V2[38:36]),
    .b(V2[41:39])
  );
  \$paramod\FAnbitQ2\n=3  \Veneer3[7].FA  (
    .CIN(a[119]),
    .COUT(V3[31]),
    .SUM(V3[30:28]),
    .a(V2[44:42]),
    .b(V2[47:45])
  );
  \$paramod\FAnbitQ2\n=4  \Veneer4[0].FA  (
    .CIN(a[120]),
    .COUT(V4[4]),
    .SUM(V4[3:0]),
    .a(V3[3:0]),
    .b(V3[7:4])
  );
  \$paramod\FAnbitQ2\n=4  \Veneer4[1].FA  (
    .CIN(a[121]),
    .COUT(V4[9]),
    .SUM(V4[8:5]),
    .a(V3[11:8]),
    .b(V3[15:12])
  );
  \$paramod\FAnbitQ2\n=4  \Veneer4[2].FA  (
    .CIN(a[122]),
    .COUT(V4[14]),
    .SUM(V4[13:10]),
    .a(V3[19:16]),
    .b(V3[23:20])
  );
  \$paramod\FAnbitQ2\n=4  \Veneer4[3].FA  (
    .CIN(a[123]),
    .COUT(V4[19]),
    .SUM(V4[18:15]),
    .a(V3[27:24]),
    .b(V3[31:28])
  );
  \$paramod\FAnbitQ2\n=5  \Veneer5[0].FA  (
    .CIN(a[124]),
    .COUT(V5[5]),
    .SUM(V5[4:0]),
    .a(V4[4:0]),
    .b(V4[9:5])
  );
  \$paramod\FAnbitQ2\n=5  \Veneer5[1].FA  (
    .CIN(a[125]),
    .COUT(V5[11]),
    .SUM(V5[10:6]),
    .a(V4[14:10]),
    .b(V4[19:15])
  );
  assign OUT = V6;
endmodule
