
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
  var x = (this.y*p_v.z)-(this.z*p_v.y);
  var y = (this.z*p_v.x)-(this.x*p_v.z);
  this.z = (this.x*p_v.y)-(this.y*p_v.x);
  this.x = x;
  this.y = y;
  return this;
};

Vector.prototype.norm=function() {
  return Math.sqrt(this.dot(this));
};

Vector.prototype.normalize=function() {
  var norm=this.norm();
  this.x /= norm;
  this.y /= norm;
  this.z /= norm;
  return this;
};

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









function PointMass(p_m, p_x, p_y, p_z) { // Constructor
  this.mass = p_m;
  this.pos = new Vector(p_x, p_y, p_z);  
}
