module base(){
  difference(){
    cylinder(h=32-12,d=38,$fn=128);
    translate([0,0,32-12]) sphere(d=30,$fn=128, $fs=128);
    translate([0,0,20-12]) import("main_outer.stl");
    cylinder(h=200,d=6.8,$fn=64);
    translate([0,0,1]) cylinder(h=200,d=12.8,$fn=6);
  }
}
//base();

module ball(){
  difference(){
    sphere(d=29,$fn=128, $fs=128);
    translate([0,0,12]) cylinder(h=200,d=40,$fn=128);
    cylinder(h=200,d=6.4,$fn=64, center=true);
    translate([0,0,-9]) cylinder(h=30,d=13,$fn=64, center=true);
    translate([0,0,-27.25]) cylinder(h=30,d=40,$fn=128, center=true);
  }
}
rotate([0,180,0]) ball();

module cap(){
  union(){
    intersection(){
      difference(){
        translate([0,0,22]) cylinder(h=16,d=35,$fn=128);
        translate([0,0,31]) sphere(d=30,$fn=128, $fs=128);
        translate([0,0,32-20]) cylinder(h=20,d=30,$fn=128);
      }
      import("main_inner.stl");
    }
    difference(){
      translate([0,0,32]) cylinder(h=6,d=38,$fn=128);
      translate([0,0,32]) cylinder(h=6,d=31,$fn=128);
    }
  }
}

//rotate([0,180,0]) cap();