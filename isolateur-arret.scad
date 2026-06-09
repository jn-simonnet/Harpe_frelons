/*
   Harpe anti-frelons asiatiques
   Isolateur à réaliser en PETG (durabilité aux UVs)
   
   Ces pièces permettent par juxtaposition d'obtenir une barre transversale isolante
   permettant le passage de fil inox diam. 0.5.
   Le pas entre fils voisins est de 25 mm (paramètre p ajustable à volonté).
   
   Les trous de passage sont à 12.5 mm (p/2) du bord de la pièce, ce qui permet
   d'obtenir un pas de 25 mm quand on juxtapose 2 pièces.
   
   Deux trous de vis de fixation permettent de visser ces pièces dans deux barres
   transversales servant de joues de support à l'ensemble des pièces.
*/
$fn=100;

He=14;  // Hauteur isolateur
Di=4.2; // Diamètre perçage de fixation, pour vis de 4x40
dt=1;   // Diamètre trou de passage fil inox
p=25;   // Pas des fils
e=8;    // Epaisseur pièce de fixation fils
a=2.5;  // Espacement des deux plans de fils
b=2.5;  // Espacement trous pour arrêt aux extrémités

h1=(He-a)/2; // hauteur premier plan de fils
h2=He-h1;    // hauteur 2e plan de fils
h3=h1/2;     // trous pour fixation fils plan du bas
h4=He-h3;    // trous pour fixation fils plan du haut

difference () {
  cube([2*p,e,He]);
  union() {
    // Trous de fixation
    translate([p/4,e/2,0])  cylinder(d=Di,h=He);
    translate([2*p-p/4,e/2,0])  cylinder(d=Di,h=He);
      
    // Trous pour passage fils
    //translate([p/2,0,He/3])  rotate([-90,0,0])  cylinder(d=dt,h=e);
    //translate([p/2,0,2*He/3])  rotate([-90,0,0])  cylinder(d=dt,h=e);
    //translate([2*p-p/2,0,He/3])  rotate([-90,0,0])  cylinder(d=dt,h=e);
    //translate([2*p-p/2,0,2*He/3])  rotate([-90,0,0])  cylinder(d=dt,h=e);
    translate([p/2,0,h1])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);
    translate([p/2,0,h2])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);
    translate([2*p-p/2,0,h1])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);
    translate([2*p-p/2,0,h2])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);;
    translate([0,0,h1])  rotate([45,0,0])  translate([0,-dt/2,-dt/2])  cube([2*p,dt,dt]);
    translate([0,0,h2])  rotate([45,0,0])  translate([0,-dt/2,-dt/2])  cube([2*p,dt,dt]);
    translate([0,e,h1])  rotate([45,0,0])  translate([0,-dt/2,-dt/2])  cube([2*p,dt,dt]);
    translate([0,e,h2])  rotate([45,0,0])  translate([0,-dt/2,-dt/2])  cube([2*p,dt,dt]);

    // trous fixation fils (pour extrémités)
    translate([p/2+b,0,h1])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);
    translate([p/2+b,0,h2])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);
    translate([2*p-p/2-b,0,h1])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);
    translate([2*p-p/2-b,0,h2])  rotate([45,0,90])  translate([0,-dt/2,-dt/2])  cube([e,dt,dt]);;
  }
}

//translate([0,0,He/3])  rotate([0,90,0])  cylinder(d=dt,h=2*p);
//translate([0,0,2*He/3])  rotate([0,90,0])  cylinder(d=dt,h=2*p);
