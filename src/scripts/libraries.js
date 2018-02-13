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
Vector.prototype.reverse=function() {
  this.x = -this.x;
  this.y = -this.y;
  this.z = -this.z;
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
  var w_length=this.norm();
  this.x /= w_norm;
  this.y /= w_norm;
  this.z /= w_norm;
  return this;
};
Vector.prototype.tripleScalarProduct=function(p_b, p_c) {

  // a . (b x c) or (a x b) . c

  // The scalar triple product can also be understood as the determinant of the 3×3 matrix (thus also its inverse) having the three vectors either as its rows or its columns (a matrix has the same determinant as its transpose)

  return this.dot( new Vector(p_b.x, p_b.y, p_b.z).cross(p_c) );
};
Vector.prototype.tripleVectorProduct=function(p_b, p_c) {

  //              "BAC - CAB" mnemonic
  // a x (b x c) = b(a.c) - c(a.b) 
  
  return this.cross( new Vector(p_b.x, p_b.y, p_b.z).cross(p_c) );
};

// Make all methods also available directly on 'Vector' with an additional first parameter.
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
function Matrix3x3( p_e11, p_e12, p_e13,
                    p_e21, p_e22, p_e23,
                    p_e31, p_e32, p_e33 ) { // Constructor
  this.e11 = p_e11 || 0;
  this.e12 = p_e12 || 0;
  this.e13 = p_e13 || 0;
  this.e21 = p_e21 || 0;
  this.e22 = p_e22 || 0;
  this.e23 = p_e23 || 0;
  this.e31 = p_e31 || 0;
  this.e32 = p_e32 || 0;
  this.e33 = p_e33 || 0;
}
Matrix3x3.prototype.add=function(p_m) {
  this.e11 += p_m.e11;
  this.e12 += p_m.e12;
  this.e13 += p_m.e13;
  this.e21 += p_m.e21;
  this.e22 += p_m.e22;
  this.e23 += p_m.e23;
  this.e31 += p_m.e31;
  this.e32 += p_m.e32;
  this.e33 += p_m.e33;
  return this;
};
Matrix3x3.prototype.sub=function(p_m) {
  this.e11 -= p_m.e11;
  this.e12 -= p_m.e12;
  this.e13 -= p_m.e13;
  this.e21 -= p_m.e21;
  this.e22 -= p_m.e22;
  this.e23 -= p_m.e23;
  this.e31 -= p_m.e31;
  this.e32 -= p_m.e32;
  this.e33 -= p_m.e33;
  return this;
};
Matrix3x3.prototype.multiply=function(p_s) {
  this.e11 *= p_s;
  this.e12 *= p_s;
  this.e13 *= p_s;
  this.e21 *= p_s;
  this.e22 *= p_s;
  this.e23 *= p_s;
  this.e31 *= p_s;
  this.e32 *= p_s;
  this.e33 *= p_s;
  return this;
};
Matrix3x3.prototype.divide=function(p_s) {
  this.e11 /= p_s;
  this.e12 /= p_s;
  this.e13 /= p_s;
  this.e21 /= p_s;
  this.e22 /= p_s;
  this.e23 /= p_s;
  this.e31 /= p_s;
  this.e32 /= p_s;
  this.e33 /= p_s;
  return this;
};
Matrix3x3.prototype.determinant=function() {
  return this.e11*(this.e22*this.e33-this.e23*this.e32) - this.e12*(this.e21*this.e33-this.e23*this.e31) + this.e13*(this.e21*this.e32-this.e22*this.e31);
};
Matrix3x3.prototype.transpose=function() {
  var w_temp;

  w_temp = this.e12;
  this.e12 = this.e21;
  this.e21 = w_temp;

  w_temp = this.e13;
  this.e13 = this.e31;
  this.e31 = w_temp;

  w_temp = this.e23;
  this.e23 = this.e32;
  this.e32 = w_temp;

  return this;
};
Matrix3x3.prototype.inverse=function() {

  // a b c              A D G
  // d e f  =>  1/det * B E H
  // g h i              C F I

  // A =  (ei-fh)  D = -(bi-ch)  G =  (bf-ce)
  // B = -(di-fg)  E =  (ai-cg)  H = -(af-cd)
  // C =  (dh-eg)  F = -(ah-bg)  I =  (ae-bd)

  var w_A =   this.e22*this.e33-this.e23*this.e32;
  var w_B = -(this.e21*this.e33-this.e23*this.e31);
  var w_C =   this.e21*this.e32-this.e22*this.e31; // enough for determinant.

  var w_det = this.e11*w_A + this.e12*w_B + this.e13*w_C;

  var w_D = -(this.e12*this.e33-this.e13*this.e32);
  var w_E =   this.e11*this.e33-this.e13*this.e31;
  var w_F = -(this.e11*this.e32-this.e12*this.e31);

  var w_G =   this.e12*this.e23-this.e13*this.e22;
  var w_H = -(this.e11*this.e23-this.e13*this.e21);
  var w_I =   this.e11*this.e22-this.e12*this.e21;

  this.e11 = w_A/w_det; // Order a d g b e h c f i to transpose.
  this.e12 = w_D/w_det;
  this.e13 = w_G/w_det;
  this.e21 = w_B/w_det;
  this.e22 = w_E/w_det;
  this.e23 = w_H/w_det;
  this.e31 = w_C/w_det;
  this.e32 = w_F/w_det;
  this.e33 = w_I/w_det;

  return this;
};
Matrix3x3.prototype.matrixMultiply=function(p_m) {

  // this * p_m
  
  // e11 e12 e13
  // e21 e22 e23
  // e31 e32 e33
  
  var w_A = this.e11*p_m.e11 + this.e12*p_m.e21 + this.e13*p_m.e31 ;
  var w_B = this.e11*p_m.e12 + this.e12*p_m.e22 + this.e13*p_m.e32 ;
  var w_C = this.e11*p_m.e13 + this.e12*p_m.e23 + this.e13*p_m.e33 ;

  var w_D = this.e21*p_m.e11 + this.e22*p_m.e21 + this.e23*p_m.e31 ;
  var w_E = this.e21*p_m.e12 + this.e22*p_m.e22 + this.e23*p_m.e32 ;
  var w_F = this.e21*p_m.e13 + this.e22*p_m.e23 + this.e23*p_m.e33 ;

  var w_G = this.e31*p_m.e11 + this.e32*p_m.e21 + this.e33*p_m.e31 ;
  var w_H = this.e31*p_m.e12 + this.e32*p_m.e22 + this.e33*p_m.e32 ;
  var w_I = this.e31*p_m.e13 + this.e32*p_m.e23 + this.e33*p_m.e33 ;

  this.e11 = w_A; // same order, no transpose.
  this.e12 = w_B;
  this.e13 = w_C;
  this.e21 = w_D;
  this.e22 = w_E;
  this.e23 = w_F;
  this.e31 = w_G;
  this.e32 = w_H;
  this.e33 = w_I;
  
  return this;
};
Matrix3x3.prototype.vectorMultiply=function(p_v) {
  return new Vector( 
    this.e11*p_v.x + this.e12*p_v.y + this.e13*p_v.z,
    this.e21*p_v.x + this.e22*p_v.y + this.e23*p_v.z,
    this.e31*p_v.x + this.e32*p_v.y + this.e33*p_v.z
  );
};
function PointMass(p_mass, p_x, p_y, p_z) { // Constructor
  this.mass = p_mass;
  this.pos = new Vector(p_x, p_y, p_z);
}
PointMass.prototype.solidMomentOfInertia = function() {
  return new Vector(0,0,0);
};
function Cuboid(p_mass, p_x, p_y, p_z, p_length, p_width, p_height){ // Constructor
  PointMass.call(this, p_mass, p_x, p_y, p_z);
  this.length = p_length; // Length in X axis, width in Y axis, height in Z
  this.width  = p_width;
  this.height = p_height;
}
Cuboid.prototype = Object.create(PointMass.prototype);
Cuboid.prototype.constructor = Cuboid;

Cuboid.prototype.solidMomentOfInertia = function() {
  return new Vector(
        (1/12)*(this.mass*(this.width* this.width+ this.height*this.height)),
        (1/12)*(this.mass*(this.length*this.length+this.height*this.height)),
        (1/12)*(this.mass*(this.length*this.length+this.width* this.width))
      );
};
function Cylinder(p_mass, p_x, p_y, p_z, p_radius, p_length){ // Constructor
  PointMass.call(this, p_mass, p_x, p_y, p_z);
  this.radius = p_radius;
  this.length = p_length;
}
Cylinder.prototype = Object.create(PointMass.prototype);
Cylinder.prototype.constructor = Cylinder;

Cylinder.prototype.solidMomentOfInertia = function() {
  return new Vector(
        0.25*this.mass*this.radius*this.radius + (1/12)*(this.mass*this.length*this.length),
        0.25*this.mass*this.radius*this.radius + (1/12)*(this.mass*this.length*this.length),
        0.5* this.mass*this.radius*this.radius
      );
};

function CylinderShell(p_mass, p_x, p_y, p_z, p_radius, p_length){ // Constructor
  PointMass.call(this, p_mass, p_x, p_y, p_z);
  this.radius = p_radius;
  this.length = p_length;
}
CylinderShell.prototype = Object.create(PointMass.prototype);
CylinderShell.prototype.constructor = CylinderShell;

CylinderShell.prototype.solidMomentOfInertia = function() {
  return new Vector(
        0.5*this.mass*this.radius*this.radius + (1/12)*(this.mass*this.length*this.length),
        0.5*this.mass*this.radius*this.radius + (1/12)*(this.mass*this.length*this.length),
        this.mass*this.radius*this.radius
      );
};

function Sphere(p_mass, p_x, p_y, p_z, p_radius){ // Constructor
  PointMass.call(this, p_mass, p_x, p_y, p_z);
  this.radius = p_radius;
}
Sphere.prototype = Object.create(PointMass.prototype);
Sphere.prototype.constructor = Sphere;

Sphere.prototype.solidMomentOfInertia = function() {
  return new Vector(
        (0.4)*(this.mass*this.radius*this.radius),
        (0.4)*(this.mass*this.radius*this.radius),
        (0.4)*(this.mass*this.radius*this.radius)
      );
};
function SphericalShell(p_mass, p_x, p_y, p_z, p_radius){ // Constructor
  PointMass.call(this, p_mass, p_x, p_y, p_z);
  this.radius = p_radius;
}
SphericalShell.prototype = Object.create(PointMass.prototype);
SphericalShell.prototype.constructor = SphericalShell;

SphericalShell.prototype.solidMomentOfInertia = function() {
  return new Vector(
        (2/3)*(this.mass*this.radius*this.radius),
        (2/3)*(this.mass*this.radius*this.radius),
        (2/3)*(this.mass*this.radius*this.radius)
      );
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
function inertiaTensor(p_elements){
  var i;
  var w_centerGravity = centerGravity(p_elements);

  var w_pos=[]; // corrected positions from center of gravity
  for (i = 0; i < p_elements.length; i++){
    w_pos[i] = Vector.sub(p_elements[i].pos, w_centerGravity);
  }

  var w_ixx=0;
  var w_iyy=0;
  var w_izz=0;
  var w_ixy=0;
  var w_ixz=0;
  var w_iyz=0;

  var w_mn; // moment about own neutral axis

  var d2;
  for (i = 0; i < p_elements.length; i++){ // Parallel Axis Theorem
                                           // MomentInertiaNeutral + Mass*distance^2
                                           // mn+ m*(yy+zz), mn+ m*(xx+zz), mn+ m*(xx+yy)
    w_mn = p_elements[i].solidMomentOfInertia();

    w_ixx += w_mn.x + p_elements[i].mass * (w_pos[i].y*w_pos[i].y + w_pos[i].z*w_pos[i].z);
    w_iyy += w_mn.y + p_elements[i].mass * (w_pos[i].x*w_pos[i].x + w_pos[i].z*w_pos[i].z);
    w_izz += w_mn.z + p_elements[i].mass * (w_pos[i].x*w_pos[i].x + w_pos[i].y*w_pos[i].y);

    w_ixy -= p_elements[i].mass * (w_pos[i].x*w_pos[i].y); // products of inertia are negative values.
    w_ixz -= p_elements[i].mass * (w_pos[i].x*w_pos[i].z);
    w_iyz -= p_elements[i].mass * (w_pos[i].y*w_pos[i].z);
  }
  var w_m = new Matrix3x3(w_ixx, w_ixy, w_ixz,
                          w_ixy, w_iyy, w_iyz,
                          w_ixz, w_iyz, w_izz ); // Tensor
  return w_m;
}
