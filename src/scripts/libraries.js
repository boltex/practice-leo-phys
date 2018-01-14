
function Vector(p_x, p_y, p_z) { // Constructor
  this.x = p_x || 0;
  this.y = p_y || 0;
  this.z = p_z || 0;
}

Vector.prototype.add=function(p_v) {
  this.x += p_v.x;
  this.y += p_v.y;
  this.z += p_v.z;
  return this;
};
Vector.prototype.sub=function(p_v) {
  this.x -= p_v.x;
  this.y -= p_v.y;
  this.z -= p_v.z;
  return this;
};

Vector.prototype.multiply=function(p_s) {
  this.x *= p_s;
  this.y *= p_s;
  this.z *= p_s;
  return this;
};
Vector.prototype.divide=function(p_s) {
  this.x /= p_s;
  this.y /= p_s;
  this.z /= p_s;
  return this;
};

Vector.prototype.dot=function(p_v) {
  return p_v.x*this.x + p_v.y*this.y + p_v.z*this.z;
};

Vector.prototype.cross=function(p_v) {
  var w_x = (this.y*p_v.z)-(this.z*p_v.y); // Protect x and y while computing
  var w_y = (this.z*p_v.x)-(this.x*p_v.z);
  this.z = (this.x*p_v.y)-(this.y*p_v.x);
  this.x = w_x;
  this.y = w_y;
  return this;
};

Vector.prototype.norm=function() {
  return Math.sqrt(this.dot(this));
};

Vector.prototype.normalize=function() {
  var w_norm=this.norm();
  this.x /= w_norm;
  this.y /= w_norm;
  this.z /= w_norm;
  return this;
};

Vector.shapes = [
  "Cylinder",
  "CylinderShell",
  "RectangularPrism",
  "Cuboid",
  "Sphere",
  "SphericalShell"
 ];

// Make all vector methods also available directly on Vector with additional first parameter.
// such as :
// v3 = Vector.add(v1, v2) // will return a new sum vector v3. Neither v1 nor v2 will change.

for (var w_key in Vector.prototype){
  if(Vector.prototype.hasOwnProperty(w_key)){
    (function(w_key){
      Vector[w_key] = function(){
        var v = new Vector(arguments[0].x, arguments[0].y, arguments[0].z);
        return v[w_key].apply(v, Array.prototype.slice.call(arguments, 1) );
      };
    })(w_key);
  }
}
function PointMass(p_mass, p_x, p_y, p_z) { // Constructor
  this.mass = p_mass;
  this.pos = new Vector(p_x, p_y, p_z);
}
PointMass.prototype.solidMomentOfInertia = function() {
  return new Vector(0,0,0);
};
function Cuboid(p_m, p_x, p_y, p_z, p_length, p_width, p_height){ // Constructor
  PointMass.call(this, p_m, p_x, p_y, p_z);
  this.length = p_length; // Length in X axis, width in Y axis, height in Z
  this.width  = p_width;
  this.height = p_height;
}
Cuboid.prototype = Object.create(PointMass.prototype);
Cuboid.prototype.constructor = Cuboid;

Cuboid.prototype.solidMomentOfInertia = function() {
  return solidMomentOfInertia(this.constructor.name, this.mass, this.length, this.width, this.height)
};
function totalMass(p_elements){
  var i;
  var w_totalMass=0;
  for (i = 0; i < p_elements.length; i++){ // Σm
    w_totalMass += p_elements[i].mass;
  }
  return w_totalMass;
}
function centerGravity(p_elements){
  var i;
  var w_firstMoment = new Vector(0,0,0);
  for (i = 0; i < p_elements.length; i++){ // m*x,m*y,m*z / Σm
    w_firstMoment.add( Vector.multiply( p_elements[i].pos, p_elements[i].mass) );
  }
  return w_firstMoment.divide(totalMass(p_elements));
}
function momentOfInertia(p_elements){
  var i;
  var w_centerGravity = centerGravity(p_elements);

  var w_pos=[]; // corrected positions from center of gravity
  for (i = 0; i < p_elements.length; i++){
    w_pos[i] = Vector.sub(p_elements[i].pos, w_centerGravity);
  }
  log("pos", w_pos);
  var w_m = new Vector(0,0,0);
  var w_mn; // moment about own neutral axis
  var d2;
  for (i = 0; i < p_elements.length; i++){ // Parallel Axis Theorem
                                           // MomentInertiaNeutral + Mass*distance^2 
                                           // mn+ m*(yy+zz), mn+ m*(xx+zz), mn+ m*(xx+yy)
    w_mn = p_elements[i].solidMomentOfInertia();
    log("solidMomentOfInertia",w_mn);
    log("mass", p_elements[i].mass);
    d2 = new Vector((w_pos[i].y*w_pos[i].y + w_pos[i].z*w_pos[i].z),
                                  (w_pos[i].x*w_pos[i].x + w_pos[i].z*w_pos[i].z),
                                  (w_pos[i].x*w_pos[i].x + w_pos[i].y*w_pos[i].y) 
                                 );
    
    w_m.add( w_mn.add( d2.multiply(p_elements[i].mass)));
    log("2",w_mn);
  }
  return w_m;
}
function solidMomentOfInertia(p_shapeString, p_mass, p_1, p_2, p_3){
  // p_1 = Radius in the XY plane or p_1=X,[p_2=Y],[last is p_2 or p_3=Lenght in Z]
  var w_m;
  switch(p_shapeString) {
    case "Cylinder": // X = Y = (1/4)mr^2 + (1/12)mL^2 ; Z = (1/2)mr^2
      w_m = new Vector(
        0.25*p_mass*p_1*p_1 + (1/12)*(p_mass*p_2*p_2),
        0.25*p_mass*p_1*p_1 + (1/12)*(p_mass*p_2*p_2),
        0.5*p_mass*p_1*p_1
      );
      break;
    case "CylinderShell": // X = Y = (1/2)mr^2 + (1/12)mL^2 ; Z = mr^2
      w_m = new Vector(
        0.5*p_mass*p_1*p_1 + (1/12)*(p_mass*p_2*p_2),
        0.5*p_mass*p_1*p_1 + (1/12)*(p_mass*p_2*p_2),
        p_mass*p_1*p_1
      );
      break;
    case "Cuboid": // X = (1/12)m*(Y^2+Z^2) Y = (1/12)m*(X^2+Z^2) Z = (1/12)m*(X^2+Y^2)
    case "RectangularPrism":
      w_m = new Vector(
        (1/12)*(p_mass*(p_2*p_2+p_3*p_3)),
        (1/12)*(p_mass*(p_1*p_1+p_3*p_3)),
        (1/12)*(p_mass*(p_1*p_1+p_2*p_2))
      );
      break;
    case "Sphere": // X = Y = Z = (2/5)mr^2
      w_m = new Vector(
        (2/5)*(p_mass*p_1*p_1),
        (2/5)*(p_mass*p_1*p_1),
        (2/5)*(p_mass*p_1*p_1)
      );
      break;
    case "SphericalShell": // X = Y = Z = (2/3)mr^2
      w_m = new Vector(
        (2/3)*(p_mass*p_1*p_1),
        (2/3)*(p_mass*p_1*p_1),
        (2/3)*(p_mass*p_1*p_1)
      );
      break;

    default:
      if( (Vector.shapes.indexOf(p_shapeString) > -1)){
        throw "Invalid Strings Definition : Vector.shapes is OUTDATED";
      }else {
        throw "Invalid Geometric Shape String Parameter :  "+p_shapeString;
      }
  }
  return w_m;
}
