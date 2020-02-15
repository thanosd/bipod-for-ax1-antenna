include <BOSL/constants.scad>
use <BOSL/joiners.scad>

include <constants.scad>

module leg() {
    
    half_joiner2(h=20, l=20, w=10, a=45, screwsize=3, guides=false);
    
    difference() {
        
        
        translate([-5,-30,-10])
        {
            // This is the long leg
            rotate([25,0,0])
            translate([0,6,9])
                cube([10,20,100]);
            
            // This is the rectangle that joins the joiner and the leg
            cube([10,20,20]);
        }
        
        // This is a big block that makes the bottom part of the leg flat.
        translate([-100,-100,90])
            cube([200,200,30]);
        
    }
}    

// Rotate the whole thing to make it print flat.
rotate([0,90,0])
    leg();
