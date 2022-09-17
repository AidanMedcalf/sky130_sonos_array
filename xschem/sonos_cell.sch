v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -240 360 -240 {
lab=xxx}
N 210 -140 360 -140 {
lab=xxx}
N 360 -240 360 -190 {
lab=xxx}
N 360 -180 360 -140 {
lab=xxx}
N 360 -190 380 -190 {
lab=xxx}
N 120 -240 170 -240 {
lab=WLS}
N 120 -140 170 -140 {
lab=WL}
N 360 -190 360 -180 {
lab=xxx}
N 210 -300 210 -270 {
lab=BL}
N 210 -110 210 -80 {
lab=SRC}
N 210 -210 210 -170 {
lab=#net1}
C {special_sonosfet_star.sym} 190 -240 0 0 {name=M1
L=0.22
W=0.45
mult=1
model=special_sonosfet_star
spiceprefix=X
}
C {special_nfet_pass_flash.sym} 190 -140 0 0 {name=M2
L=0.15
W=0.45
mult=1
model=special_nfet_pass_flash
spiceprefix=X
}
C {devices/ipin.sym} 120 -240 2 1 {name=p1 lab=WLS}
C {devices/ipin.sym} 120 -140 0 0 {name=p1 lab=WL}
C {devices/iopin.sym} 380 -190 0 0 {name=p1 lab=B}
C {devices/iopin.sym} 210 -300 3 0 {name=p1 lab=BL}
C {devices/iopin.sym} 210 -80 1 0 {name=p1 lab=SRC}
