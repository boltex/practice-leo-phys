window.log = console.log;
window.onload = function () {main();};

function main(){

  var elements=[];
  elements.push( new PointMass(1, 2,0,0));
  elements.push( new PointMass(1, 6,0,0));

  log(Vector.shapes);

  log("momentOfInertia: ",  momentOfInertia(elements));

  // log(solidMomentOfInertia("Cylinder",         1, 1,2,6));
  // log(solidMomentOfInertia("CylinderShell",    1, 1,2,6));
  // log(solidMomentOfInertia("rectangularPrism", 1, 1,2,6));
  // log(solidMomentOfInertia("cuboid",           1, 1,2,6));
  // log(solidMomentOfInertia("sphere",           1, 1,2,6));
  // log(solidMomentOfInertia("sphericalShell",   1, 1,2,6));

  // IMPERIAL MEASURES
  //var body    = new Cuboid(3913,  100, 100, 0,  15.5, 6.0, 4.1);
  //var driver = new Cuboid( 190,  103, 105, 0,   3.0, 1.5, 3.5);
  //var fuel   = new Cuboid( 210,   93, 100, 0,   1.5, 3.0, 1.0);


  var body   = new Cuboid( 17500/9.81 ,  30.50, 30.50, 0,  4.70, 1.80, 1.25);
  var driver = new Cuboid(   850/9.81,  31.50, 31.00, 0,  0.90, 0.50, 1.10);
  var fuel   = new Cuboid(   993/9.81,  28.00, 30.50, 0,  0.50, 0.90, 0.30);

  car = [ body, driver, fuel ];

  log("totalemass: ", totalMass(car),"kg" );

  log( "centerGravity car :" , centerGravity(car) );
  log( "momentOfInertia car :",  momentOfInertia(car) );

}
