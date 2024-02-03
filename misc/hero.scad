use <../lib/threads-scad/threads.scad>;

for(i = [-1, 1]) {
    rotate([270, 0, 0])
    translate([-40*i, 0, 50*i])
    color("black") {
        include <../enclosure-clamp-4in.scad>;
    }
}

translate([-50, -90, 0])
for(i = [0:3]) {
    translate([12*i, 0, 0])
    color("grey")
    MetricBolt(4, 14);
}

translate([-50, -100, 0])
for(i = [0:3]) {
    translate([12*(i+0.5), 0, 0])
    color("grey")
    MetricBolt(3, 10);
}
