$fs = $preview ? 1 : 0.1;
$fa = $preview ? 3 : 2;

inner_d = 2;
handle_width = 3;
handle_length = 50;
outer_d = 9;
width = 10;

linear_extrude(width) {
  difference() {
    union() {
      circle(d = outer_d);
      hull() {
        circle(d = handle_width);
        translate([handle_length, 0])
          circle(d = handle_width);
      }
    }
    hull() {
      translate([-inner_d / 2, inner_d / 2])
        circle(d = inner_d);
      translate([0, outer_d / 2])
        circle(d = inner_d);
    }
  }
}
