$fs = $preview ? 1 : 0.1;
$fa = $preview ? 3 : 2;

$nozzle = 0.4;

size = 12;
slop = 0.2;
height = 30;
wing_w = 5;
wing_h = 10;
wall = 4 * $nozzle;

// f = face-to-face distance
module hexagon(f) {
  circle(r = f / sqrt(3), $fn = 6);
}

module shaft(f, h, outer, wing_w=0, wing_r=3) {
  rh = f / sqrt(3);
  linear_extrude(h) {
    difference() {
      hull() {
        minkowski() {
          hexagon(f);
          circle(r = outer, $fn = 40);
        }
        if(wing_w > 0)
          for(i = [-1, 1])
            translate([i * (rh + outer + wing_w - wing_r), 0])
              circle(r = wing_r, $fn = 40);
      }
      hexagon(f);
    }
  }
}

shaft(f = size + slop, h = height, outer = wall);
shaft(f = size + slop, h = wing_h, outer = wall, wing_w = wing_w, wing_r = 3);
