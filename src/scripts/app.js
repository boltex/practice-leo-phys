window.log = console.log;
window.onload = function () {main();};

function main(){

  var elements=[];
  elements.push( new PointMass(1, 2,0,0));
  elements.push( new PointMass(1, 6,0,0));
  log("inertiaTensor: ",  inertiaTensor(elements));  // 0,0,0  0,8,0  0,0,8

  // IMPERIAL MEASURES
  //var body    = new Cuboid(3913,  100, 100, 0,  15.5, 6.0, 4.1);
  //var driver  = new Cuboid( 190,  103, 105, 0,   3.0, 1.5, 3.5);
  //var fuel    = new Cuboid( 210,   93, 100, 0,   1.5, 3.0, 1.0);

  var body   = new Cuboid( 17500/9.81,  30.50, 30.50, 0,  4.70, 1.80, 1.25);
  var driver = new Cuboid(   850/9.81,  31.50, 31.00, 0,  0.90, 0.50, 1.10);
  var fuel   = new Cuboid(   993/9.81,  28.00, 30.50, 0,  0.50, 0.90, 0.30);

  car = [ body, driver, fuel ];

  log("   totalemass car : ", totalMass(car), " kg"); // 1971.76 kg
  log("centerGravity car : ", centerGravity(car)); // x: 30.41, y: 30.52, z: 0
  log("inertiaTensor car : ", inertiaTensor(car)); // 752, 4238, 4508

  // TESTS matrix 3x3
  var m_test = new Matrix3x3(2,-2,0, -1,5,1, 3,4,5); // determinant is 26
  var m_test2 = new Matrix3x3(1,1,1, 1,1,1, 1,1,1);
  var m_test3 = new Matrix3x3(1,3,-2, 2,1,4, 5,7,3);

  log( "determinant " , m_test.add(m_test2).sub(m_test2).multiply(4).divide(2).divide(2).determinant() );
  //log( "transpose " , m_test.transpose() );
  //log( "inverse" , m_test.inverse() );
  log( "matrixMultiply" , m_test.matrixMultiply(m_test3) );

  // test scalar and vector triple products
  log("m_test3 " , m_test3);

  // tripleScalarProduct
  // tripleVectorProduct
  
  
}
