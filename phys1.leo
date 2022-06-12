<?xml version="1.0" encoding="UTF-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="fil.20171118201906.1"><vh>Introduction modified</vh></v>
<v t="fil.20180527202300.1"><vh>JS encapsulation example.</vh>
<v t="fil.20180114215850.1"><vh>Structure Example</vh></v>
<v t="fil.20180114220144.1"><vh>Structure Example 2</vh></v>
<v t="fil.20180115231750.1"><vh>Structure Example 3</vh></v>
</v>
<v t="fil.20171126152802.1"><vh>app</vh>
<v t="fil.20180212213947.1"><vh>tests maths and physics</vh></v>
<v t="fil.20180212213953.1"><vh>tests canvas</vh></v>
</v>
<v t="fil.20171125220307.1"><vh>maths</vh>
<v t="fil.20180115213517.1"><vh>Vector</vh>
<v t="fil.20180128231824.1"><vh>Constructor</vh></v>
<v t="fil.20180128231835.1"><vh>Add</vh></v>
<v t="fil.20180128231923.1"><vh>Subtract</vh></v>
<v t="fil.20180128231938.1"><vh>Multiply</vh></v>
<v t="fil.20180128231949.1"><vh>Divide</vh></v>
<v t="fil.20180211210915.1"><vh>reverse</vh></v>
<v t="fil.20180128232001.1"><vh>Dot Product</vh></v>
<v t="fil.20180128232012.1"><vh>Cross Product</vh></v>
<v t="fil.20180128232053.1"><vh>Norm</vh></v>
<v t="fil.20180128232319.1"><vh>Normalize</vh></v>
<v t="fil.20180203235459.1"><vh>Triple Scalar Product</vh></v>
<v t="fil.20180203235513.1"><vh>Triple Vector Product</vh></v>
</v>
<v t="fil.20180204145927.1"><vh>Matrix3x3</vh>
<v t="fil.20180204150431.1"><vh>Constructor</vh></v>
<v t="fil.20180204150501.1"><vh>Add</vh></v>
<v t="fil.20180204185738.1"><vh>Subtract</vh></v>
<v t="fil.20180204185742.1"><vh>Multiply</vh></v>
<v t="fil.20180204185745.1"><vh>Divide</vh></v>
<v t="fil.20180206211603.1"><vh>Determinant</vh></v>
<v t="fil.20180206221402.1"><vh>Transpose</vh></v>
<v t="fil.20180206224318.1"><vh>Inverse</vh></v>
<v t="fil.20180211123545.1"><vh>Matrix Multiply</vh></v>
<v t="fil.20180211123557.1"><vh>Vector Multiply</vh></v>
</v>
</v>
<v t="fil.20171126222002.1"><vh>physics</vh>
<v t="fil.20180206210238.1"><vh>Solids</vh>
<v t="fil.20171202212813.1"><vh>PointMass(mass, x, y, z)</vh></v>
<v t="fil.20171202212845.1"><vh>Cuboid(mass, x, y, z, length, width, height)</vh></v>
<v t="fil.20180206203816.1"><vh>Cylinder(mass, x, y, z, radius, length)</vh></v>
<v t="fil.20180206203832.1"><vh>CylinderShell(mass, x, y, z, radius, length</vh></v>
<v t="fil.20180206203919.1"><vh>Sphere(mass, x, y, z, radius)</vh></v>
<v t="fil.20180206203933.1"><vh>SphericalShell(mass, x, y, z, radius)</vh></v>
</v>
<v t="fil.20171202231233.1"><vh>totalMass(elements)</vh></v>
<v t="fil.20171202213029.1"><vh>centerGravity(elements)</vh></v>
<v t="fil.20180204202031.1"><vh>inertiaTensor(elements)</vh></v>
</v>
<v t="fil.20171113165739.1"><vh>Source Files</vh>
<v t="fil.20171118225356.1"><vh>script: create folders</vh></v>
<v t="fil.20171119191756.1"><vh>HTML</vh>
<v t="fil.20171119191851.1"><vh>@clean src/index.html</vh>
<v t="fil.20171119191851.2"><vh>doctype</vh></v>
<v t="fil.20171119191851.3"><vh>html</vh>
<v t="fil.20171119191851.4"><vh>head</vh>
<v t="fil.20171119191851.5"><vh>Meta</vh></v>
<v t="fil.20171119191851.6"><vh>Title</vh></v>
<v t="fil.20171119191851.7"><vh>Styles</vh></v>
</v>
<v t="fil.20171119191851.8"><vh>body</vh>
<v t="fil.20171119191851.12"><vh>Scripts</vh></v>
</v>
</v>
</v>
</v>
<v t="fil.20171119191818.1"><vh>Styles</vh>
<v t="fil.20171119191903.1"><vh>@clean src/styles/style.less</vh></v>
</v>
<v t="fil.20171119191824.1"><vh>Scripts</vh>
<v t="fil.20171113233419.1"><vh>@clean src/scripts/app.js</vh>
<v t="fil.20171126152802.1"></v>
</v>
<v t="fil.20171125220624.1"><vh>@clean src/scripts/libraries.js</vh>
<v t="fil.20171125220307.1"></v>
<v t="fil.20171126222002.1"></v>
</v>
</v>
</v>
<v t="fil.20171125211124.1"><vh>Project Files</vh>
<v t="fil.20171113172110.1"><vh>@clean package.json</vh></v>
<v t="fil.20171113205902.1"><vh>@clean gulpfile.js</vh></v>
<v t="fil.20171118234720.1"><vh>@clean .gitignore</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="fil.20171113165739.1">@lineending crlf
</t>
<t tx="fil.20171113172110.1">{
  &quot;name&quot;: &quot;physics&quot;,
  &quot;description&quot;: &quot;Physics tests&quot;,
  &quot;version&quot;: &quot;1.0.0&quot;,
  &quot;dependencies&quot;: {},
  &quot;devDependencies&quot;: {
    &quot;browser-sync&quot;: &quot;^2.18.13&quot;,
    &quot;del&quot;: &quot;^3.0.0&quot;,
    &quot;gulp&quot;: &quot;^3.9.1&quot;,
    &quot;gulp-clean-css&quot;: &quot;^2.4.0&quot;,
    &quot;gulp-concat&quot;: &quot;^2.5.2&quot;,
    &quot;gulp-htmlmin&quot;: &quot;^3.0.0&quot;,
    &quot;gulp-imagemin&quot;: &quot;^3.4.0&quot;,
    &quot;gulp-less&quot;: &quot;^3.0.5&quot;,
    &quot;gulp-plumber&quot;: &quot;^1.1.0&quot;,
    &quot;gulp-uglify&quot;: &quot;^1.5.3&quot;,
    &quot;gulp-watch&quot;: &quot;^4.1.1&quot;
  }
}
</t>
<t tx="fil.20171113205902.1">@language javascript
@tabwidth -2

var gulp        = require(&apos;gulp&apos;),
    plumber     = require(&apos;gulp-plumber&apos;),
    concat      = require(&apos;gulp-concat&apos;),
    sourcemaps  = require(&apos;gulp-sourcemaps&apos;);
    htmlMin     = require(&apos;gulp-htmlmin&apos;),
    less        = require(&apos;gulp-less&apos;),
    cleanCss    = require(&apos;gulp-clean-css&apos;),
    imageMin    = require(&apos;gulp-imagemin&apos;),
    uglify      = require(&apos;gulp-uglify&apos;),
    browserSync = require(&apos;browser-sync&apos;),
    del         = require(&apos;del&apos;),
    log         = console.log;
    
    // ****************************** Common unused
    //autoprefixer    = require(&apos;gulp-autoprefixer&apos;);
    //useref          = require(&apos;gulp-useref&apos;),
    //rev             = require(&apos;gulp-rev&apos;),
    //revReplace      = require(&apos;gulp-rev-replace&apos;),

var pkg = require(&apos;./package.json&apos;); // from our own product description

var paths = {
  // sources
  html    : &quot;src/*.html&quot;,
  ico     : &quot;src/*.ico&quot;,
  less    : &quot;src/styles/*.less&quot;,
  scripts : &quot;src/scripts/*.js&quot;,
  images  : &quot;src/images/*&quot;,
  // output
  build   : &quot;dist&quot;
};
gulp.task(&apos;default&apos;, function(){
  log(&quot;&quot;); 
  log(&quot;   --------------------------------------&quot;);
  log(&quot;                 gulp tasks              &quot;);
  log(&quot;   --------------------------------------&quot;);
  log(&quot;    Build into dist/ folder from src/&quot; );
  log(&quot;    &gt; gulp build &quot;);
  log(&quot;  &quot;);  
  log(&quot;    Build and live reload in browser&quot; );
  log(&quot;    &gt; gulp browser &quot;);
  log(&quot;\n&quot;); 
});

gulp.task(&apos;build&apos;, [&apos;clean&apos;, &apos;html&apos;, &apos;ico&apos;, &apos;images&apos;, &apos;scripts&apos;, &apos;styles&apos;]);

gulp.task(&apos;clean&apos;, function() {
  return del.sync([paths.build]);
});

gulp.task(&apos;html&apos;, function(){
  return gulp.src(paths.html)
    .pipe(plumber())
    .pipe(htmlMin( {collapseWhitespace: true} ))
    .pipe(gulp.dest(&apos;dist&apos;))
});

gulp.task(&apos;ico&apos;, function(){
  return gulp.src(paths.ico)
    .pipe(plumber())
    .pipe(gulp.dest(&apos;dist&apos;))
});

gulp.task(&apos;images&apos;, function(){
  return gulp.src(paths.images)
    .pipe(plumber())
    .pipe(imageMin())
    .pipe(gulp.dest(paths.build+&apos;/images&apos;))
});

gulp.task(&apos;scripts&apos;, function(){
  return gulp.src(paths.scripts)
    .pipe(plumber())
    .pipe(sourcemaps.init())
      .pipe(uglify())
      .pipe(concat(&apos;scripts.js&apos;))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest(paths.build+&apos;/scripts&apos;))
});

gulp.task(&apos;styles&apos;, function(){
  return gulp.src(paths.less)
    .pipe(plumber())
    .pipe(less())
    .pipe(cleanCss())
    .pipe(concat(&apos;styles.css&apos;))
    .pipe(gulp.dest(paths.build+&apos;/styles&apos;))
    .pipe(browserSync.stream());
});

gulp.task(&apos;browser&apos;, [&apos;build&apos;], function() {
  browserSync({
    server: {
      baseDir: &apos;./dist&apos;
    }
  });
  gulp.watch(&apos;src/**/*.html&apos;, [&apos;html&apos;]);
  gulp.watch(&apos;src/scripts/**/*.js&apos;, [&apos;scripts&apos;]);
  gulp.watch(&apos;src/styles/**/*.less&apos;, [&apos;styles&apos;]);  
  gulp.watch(&apos;src/images/*&apos;, [&apos;images&apos;]);
  gulp.watch([&quot;dist/scripts/*.js&quot;, &quot;dist/images/*&quot;,&quot;dist/*.html&quot; ]).on(&apos;change&apos;, browserSync.reload);
});

gulp.task(&apos;server&apos;, [&apos;build&apos;], function() {
 
});
</t>
<t tx="fil.20171113233419.1">@others
</t>
<t tx="fil.20171118201906.1">Physics tests
</t>
<t tx="fil.20171118225356.1">@language python

# HOW TO USE : press CTRL+B to generate all files
# in case leo complains of unexisting paths.

import os
import errno

try:
  os.mkdir(&quot;src&quot;)
  os.mkdir(&quot;src/scripts&quot;)
  os.mkdir(&quot;src/styles&quot;)
  os.mkdir(&quot;src/images&quot;)
except OSError as e:
  pass

c.fileCommands.writeAtFileNodes()
</t>
<t tx="fil.20171118234720.1">dist
node_modules
</t>
<t tx="fil.20171119191756.1"></t>
<t tx="fil.20171119191818.1"></t>
<t tx="fil.20171119191824.1"></t>
<t tx="fil.20171119191851.1">@language html
@tabwidth -4
@others
</t>
<t tx="fil.20171119191851.12">&lt;script src=&quot;scripts/scripts.js&quot;&gt;&lt;/script&gt;
</t>
<t tx="fil.20171119191851.2">&lt;!DOCTYPE html&gt;
</t>
<t tx="fil.20171119191851.3">&lt;html lang=&quot;en&quot;&gt;
@others
&lt;/html&gt;
</t>
<t tx="fil.20171119191851.4">&lt;head&gt;
  @others
&lt;/head&gt;
</t>
<t tx="fil.20171119191851.5">&lt;meta charset=&quot;UTF-8&quot;&gt;
</t>
<t tx="fil.20171119191851.6">&lt;title&gt;Physics test generated from Leo&lt;/title&gt;
</t>
<t tx="fil.20171119191851.7">&lt;link rel=&quot;stylesheet&quot; href=&quot;styles/styles.css&quot;&gt;
</t>
<t tx="fil.20171119191851.8">&lt;body&gt;
  @others
&lt;/body&gt;
</t>
<t tx="fil.20171119191903.1">@language css

.sample-class {

    color:red;
    
    .inner-class {
        color:blue;
    }
    
}

#main {
    border: solid 1px #888

}

</t>
<t tx="fil.20171125211124.1"></t>
<t tx="fil.20171125220307.1">@language javascript
@tabwidth -2
@others
</t>
<t tx="fil.20171125220624.1">@others
</t>
<t tx="fil.20171126152802.1">@language javascript
@tabwidth -2
@nowrap
window.log = console.log;
window.onload = function () {main();};

function main(){
  @others
}
</t>
<t tx="fil.20171126222002.1">@language javascript
@tabwidth -2
@others
</t>
<t tx="fil.20171202212813.1">function PointMass(p_mass, p_x, p_y, p_z) { // Constructor
  this.mass = p_mass;
  this.pos = new Vector(p_x, p_y, p_z);
}
PointMass.prototype.solidMomentOfInertia = function() {
  return new Vector(0,0,0);
};
</t>
<t tx="fil.20171202212845.1">function Cuboid(p_mass, p_x, p_y, p_z, p_length, p_width, p_height){ // Constructor
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
</t>
<t tx="fil.20171202213029.1">function centerGravity(p_elements){
  var i;
  var w_firstMoment = new Vector(0,0,0);
  for (i = 0; i &lt; p_elements.length; i++){ // m*x,m*y,m*z / Σm
    w_firstMoment.add( Vector.multiply( p_elements[i].pos, p_elements[i].mass) );
  }
  return w_firstMoment.divide(totalMass(p_elements));
}
</t>
<t tx="fil.20171202231233.1">function totalMass(p_elements){
  var i;
  var w_totalMass=0;
  for (i = 0; i &lt; p_elements.length; i++){ // Σm
    w_totalMass += p_elements[i].mass;
  }
  return w_totalMass;
}
</t>
<t tx="fil.20180114215850.1">@language javascript

(function ($, MyObject, undefined) {
  MyObject.publicFunction = function() {
      console.log(&quot;This is a public function!&quot;);
  };
  var privateFunction = function() {
    console.log(&quot;This is a private function!&quot;);
  };
  
  MyObject.sayStuff = function() {
    this.publicFunction();
    privateFunction();
    privateNumber++;
    console.log(privateNumber);
  };
  var privateNumber = 0;
}(jQuery, window.MyObject = window.MyObject || {}));

MyObject.sayStuff();
MyObject.sayStuff();
MyObject.publicFunction();
MyObject.privateFunction(); // Returns error
privateFunction(); // Returns error</t>
<t tx="fil.20180114220144.1">@language javascript

// namespace (our namespace name) and undefined are passed here
// to ensure 1. namespace can be modified locally and isn&apos;t
// overwritten outside of our function context
// 2. the value of undefined is guaranteed as being truly
// undefined. This is to avoid issues with undefined being
// mutable pre-ES5.

;(function ( namespace, undefined ) {
    // private properties
    var foo = &quot;foo&quot;,
        bar = &quot;bar&quot;;

    // public methods and properties
    namespace.foobar = &quot;foobar&quot;;
    namespace.sayHello = function () {
        speak(&quot;hello world&quot;);
    };

    // private method
    function speak(msg) {
        console.log(&quot;You said: &quot; + msg);
    };

    // check to evaluate whether &apos;namespace&apos; exists in the
    // global namespace - if not, assign window.namespace an
    // object literal
})(window.namespace = window.namespace || {});


// we can then test our properties and methods as follows

// public
console.log(namespace.foobar); // foobar
namescpace.sayHello(); // hello world

// assigning new properties
namespace.foobar2 = &quot;foobar&quot;;
console.log(namespace.foobar2);

</t>
<t tx="fil.20180115213517.1">@others

// Make all methods also available directly on &apos;Vector&apos; with an additional first parameter.
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
</t>
<t tx="fil.20180115231750.1">@language javascript

//Example : creating in closure : inside self executing function

;(function ( namespace, undefined ) {
  @others  // library math-&gt;Vector
  namespace.Vector = Vector;
})(window = window || {});</t>
<t tx="fil.20180128231824.1">function Vector(p_x, p_y, p_z) { // Constructor
  this.x = p_x || 0;
  this.y = p_y || 0;
  this.z = p_z || 0;
}
</t>
<t tx="fil.20180128231835.1">Vector.prototype.add=function(p_v) {
  this.x += p_v.x;
  this.y += p_v.y;
  this.z += p_v.z;
  return this;
};
</t>
<t tx="fil.20180128231923.1">Vector.prototype.sub=function(p_v) {
  this.x -= p_v.x;
  this.y -= p_v.y;
  this.z -= p_v.z;
  return this;
};
</t>
<t tx="fil.20180128231938.1">Vector.prototype.multiply=function(p_s) {
  this.x *= p_s;
  this.y *= p_s;
  this.z *= p_s;
  return this;
};
</t>
<t tx="fil.20180128231949.1">Vector.prototype.divide=function(p_s) {
  this.x /= p_s;
  this.y /= p_s;
  this.z /= p_s;
  return this;
};
</t>
<t tx="fil.20180128232001.1">Vector.prototype.dot=function(p_v) {
  return p_v.x*this.x + p_v.y*this.y + p_v.z*this.z;
};
</t>
<t tx="fil.20180128232012.1">Vector.prototype.cross=function(p_v) {
  var w_x = (this.y*p_v.z)-(this.z*p_v.y); // Protect x and y while computing
  var w_y = (this.z*p_v.x)-(this.x*p_v.z);
  this.z = (this.x*p_v.y)-(this.y*p_v.x);
  this.x = w_x;
  this.y = w_y;
  return this;
};
</t>
<t tx="fil.20180128232053.1">Vector.prototype.norm=function() {
  return Math.sqrt(this.dot(this));
};
</t>
<t tx="fil.20180128232319.1">Vector.prototype.normalize=function() {
  var w_length=this.norm();
  this.x /= w_length;
  this.y /= w_length;
  this.z /= w_length;
  return this;
};
</t>
<t tx="fil.20180203235459.1">Vector.prototype.tripleScalarProduct=function(p_b, p_c) {

  // a . (b x c) or (a x b) . c

  // The scalar triple product can also be understood as the
  // determinant of the 3×3 matrix (thus also its inverse)
  // having the three vectors either as its rows or its columns
  // (a matrix has the same determinant as its transpose)
  
  return this.dot( new Vector(p_b.x, p_b.y, p_b.z).cross(p_c) );
};
</t>
<t tx="fil.20180203235513.1">Vector.prototype.tripleVectorProduct=function(p_b, p_c) {

  //              &quot;BAC - CAB&quot; mnemonic
  // a x (b x c) = b(a.c) - c(a.b) 
  
  return this.cross( new Vector(p_b.x, p_b.y, p_b.z).cross(p_c) );
};
</t>
<t tx="fil.20180204145927.1">@others
</t>
<t tx="fil.20180204150431.1">function Matrix3x3( p_e11, p_e12, p_e13,
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
</t>
<t tx="fil.20180204150501.1">Matrix3x3.prototype.add=function(p_m) {
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
</t>
<t tx="fil.20180204185738.1">Matrix3x3.prototype.sub=function(p_m) {
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
</t>
<t tx="fil.20180204185742.1">Matrix3x3.prototype.multiply=function(p_s) {
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
</t>
<t tx="fil.20180204185745.1">Matrix3x3.prototype.divide=function(p_s) {
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
</t>
<t tx="fil.20180204202031.1">function inertiaTensor(p_elements){
  var i;
  var w_centerGravity = centerGravity(p_elements);

  var w_pos=[]; // corrected positions from center of gravity
  for (i = 0; i &lt; p_elements.length; i++){
    w_pos[i] = Vector.sub(p_elements[i].pos, w_centerGravity);
  }

  var w_ixx=0;
  var w_iyy=0;
  var w_izz=0;
  var w_ixy=0;
  var w_ixz=0;
  var w_iyz=0;

  var w_mn; // moment about own neutral axis

  for (i = 0; i &lt; p_elements.length; i++){ // Parallel Axis Theorem
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
</t>
<t tx="fil.20180206203816.1">function Cylinder(p_mass, p_x, p_y, p_z, p_radius, p_length){ // Constructor
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

</t>
<t tx="fil.20180206203832.1">function CylinderShell(p_mass, p_x, p_y, p_z, p_radius, p_length){ // Constructor
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

</t>
<t tx="fil.20180206203919.1">function Sphere(p_mass, p_x, p_y, p_z, p_radius){ // Constructor
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
</t>
<t tx="fil.20180206203933.1">function SphericalShell(p_mass, p_x, p_y, p_z, p_radius){ // Constructor
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
</t>
<t tx="fil.20180206210238.1">@others
</t>
<t tx="fil.20180206211603.1">Matrix3x3.prototype.determinant=function() {
  return this.e11*(this.e22*this.e33-this.e23*this.e32) - this.e12*(this.e21*this.e33-this.e23*this.e31) + this.e13*(this.e21*this.e32-this.e22*this.e31);
};
</t>
<t tx="fil.20180206221402.1">Matrix3x3.prototype.transpose=function() {
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
</t>
<t tx="fil.20180206224318.1">Matrix3x3.prototype.inverse=function() {

  // a b c              A D G
  // d e f  =&gt;  1/det * B E H
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
</t>
<t tx="fil.20180211123545.1">Matrix3x3.prototype.matrixMultiply=function(p_m) {

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
</t>
<t tx="fil.20180211123557.1">Matrix3x3.prototype.vectorMultiply=function(p_v) {
  return new Vector( 
    this.e11*p_v.x + this.e12*p_v.y + this.e13*p_v.z,
    this.e21*p_v.x + this.e22*p_v.y + this.e23*p_v.z,
    this.e31*p_v.x + this.e32*p_v.y + this.e33*p_v.z
  );
};
</t>
<t tx="fil.20180211210915.1">Vector.prototype.reverse=function() {
  this.x = -this.x;
  this.y = -this.y;
  this.z = -this.z;
  return this;
};
</t>
<t tx="fil.20180212213947.1">var elements=[];

elements.push( new PointMass(1, 2,0,0));
elements.push( new PointMass(1, 6,0,0));

log(&quot;inertiaTensor: &quot;,  inertiaTensor(elements));  // 0,0,0  0,8,0  0,0,8

var body   = new Cuboid( 17500/9.81,  30.50, 30.50, 0,  4.70, 1.80, 1.25);
var driver = new Cuboid(   850/9.81,  31.50, 31.00, 0,  0.90, 0.50, 1.10);
var fuel   = new Cuboid(   993/9.81,  28.00, 30.50, 0,  0.50, 0.90, 0.30);

car = [ body, driver, fuel ];

log(&quot;   totalemass car : &quot;, totalMass(car), &quot; kg&quot;); // 1971.76 kg
log(&quot;centerGravity car : &quot;, centerGravity(car)); // x: 30.41, y: 30.52, z: 0
log(&quot;inertiaTensor car : &quot;, inertiaTensor(car)); // 752, 4238, 4508





</t>
<t tx="fil.20180212213953.1">// create dom
var w_canvas = document.createElement(&quot;canvas&quot; );
// w_canvas.style.cssText = &apos;position:absolute;width:100%;height:100%;
w_canvas.setAttribute(&quot;width&quot;,&quot;640&quot;);
w_canvas.setAttribute(&quot;height&quot;,&quot;480&quot;);
w_canvas.setAttribute(&quot;style&quot;, &quot;border: 1px solid #888;&quot;);

document.body.appendChild(w_canvas);

// set context to draw text
var  w_context;
w_context = w_canvas.getContext(&apos;2d&apos;);


//.fillStyle = &apos;cornflowerblue&apos;;
//.strokeStyle = &apos;blue&apos;;
//.strokeText

w_context.font = &quot;46px Arial&quot;;
w_context.fillText(&quot;test text&quot;, 50, 50);

</t>
<t tx="fil.20180527202300.1"></t>
</tnodes>
</leo_file>
