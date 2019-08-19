import screwGenLib
import sys

screwTol = 0.4

#segement resolution
rez = 128

mainD = 34.0


P = 3.0
N = 16

R2 = (mainD-screwTol)/2.0
R1 = R2 - 1.5
SCREW = screwGenLib.screwDef(R2,R1,P,N,"main_inner.stl")
screwGenLib.buildScrew(SCREW)

R2 += screwTol
R1 += screwTol
SCREW = screwGenLib.screwDef(R2,R1,P,N,"main_outer.stl")
screwGenLib.buildScrew(SCREW)
