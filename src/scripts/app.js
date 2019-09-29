window.log = console.log;
window.onload = function () {main();};

function main(){
  var elements=[];

  elements.push( new PointMass(1, 2,0,0));
  elements.push( new PointMass(1, 6,0,0));

  log("inertiaTensor: ",  inertiaTensor(elements));  // 0,0,0  0,8,0  0,0,8

  var body   = new Cuboid( 17500/9.81,  30.50, 30.50, 0,  4.70, 1.80, 1.25);
  var driver = new Cuboid(   850/9.81,  31.50, 31.00, 0,  0.90, 0.50, 1.10);
  var fuel   = new Cuboid(   993/9.81,  28.00, 30.50, 0,  0.50, 0.90, 0.30);

  car = [ body, driver, fuel ];

  log("   totalemass car : ", totalMass(car), " kg"); // 1971.76 kg
  log("centerGravity car : ", centerGravity(car)); // x: 30.41, y: 30.52, z: 0
  log("inertiaTensor car : ", inertiaTensor(car)); // 752, 4238, 4508





  // create dom
  var w_canvas = document.createElement("canvas" );
  // w_canvas.style.cssText = 'position:absolute;width:100%;height:100%;
  w_canvas.setAttribute("width","640");
  w_canvas.setAttribute("height","480");
  w_canvas.setAttribute("style", "border: 1px solid #888;");

  document.body.appendChild(w_canvas);

  // set context to draw text
  var  w_context;
  w_context = w_canvas.getContext('2d');


  //.fillStyle = 'cornflowerblue';
  //.strokeStyle = 'blue';
  //.strokeText

  w_context.font = "46px Arial";
  w_context.fillText("test text", 50, 50);

}
