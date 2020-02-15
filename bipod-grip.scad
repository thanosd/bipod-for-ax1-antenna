include <BOSL/constants.scad>
use <BOSL/joiners.scad>

include <constants.scad>

module ring() {
    
    // Make a hollow cylinder
    difference() {    
        cylinder(r=antenna_diameter/2+grip_thickness, h=grip_height, $fn=50);
        cylinder(r=antenna_diameter/2, h=grip_height+1, $fn=50);
    }
}

module antenna_grip() {

    ring();

    // Joiner on the one side
    translate([0,20,10])
        half_joiner(screwsize=3, a=45, guides=false);

    // Jointer on the other side
    rotate([0,0,180])
    translate([0,20,10])
        half_joiner(screwsize=3, a=45, guides=false);

}

antenna_grip();