<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="fil.20171118201906.1"><vh>Introduction</vh></v>
<v t="fil.20171126150155.1"><vh>old test</vh></v>
<v t="fil.20171126152802.1"><vh>app</vh></v>
<v t="fil.20171125220307.1"><vh>maths</vh></v>
<v t="fil.20171126222002.1"><vh>physics</vh>
<v t="fil.20171202212813.1"><vh>PointMass(mass, x, y, z)</vh></v>
<v t="fil.20171212225812.1"><vh>Solid(mass, x,y,z)</vh></v>
<v t="fil.20171202212845.1"><vh>Cuboid(mass, x, y, z, length, width, height)</vh></v>
<v t="fil.20171202231233.1"><vh>totalMass(elements)</vh></v>
<v t="fil.20171202213029.1"><vh>centerGravity(elements)</vh></v>
<v t="fil.20171202213032.1"><vh>momentOfInertia(elements)</vh></v>
<v t="fil.20171202213112.1"><vh>solidMomentOfInertia(shapeStr, mass, p1, p2, p3)</vh></v>
</v>
<v t="fil.20171113165739.1" a="E"><vh>Source Files</vh>
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
<v t="fil.20171119191851.9"><vh>Header Test</vh></v>
<v t="fil.20171119191851.10"><vh>Some test article</vh></v>
<v t="fil.20171119191851.11"><vh>Some test image</vh></v>
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
<v t="fil.20171125220624.1" a="E"><vh>@clean src/scripts/libraries.js</vh>
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
  "name": "Physics",
  "description": "Physics tests",
  "version": "1.0.0",
  "dependencies": {},
  "devDependencies": {
    "browser-sync": "^2.18.13",
    "del": "^3.0.0",
    "gulp": "^3.9.1",
    "gulp-clean-css": "^2.4.0",
    "gulp-concat": "^2.5.2",
    "gulp-htmlmin": "^3.0.0",
    "gulp-imagemin": "^3.4.0",
    "gulp-less": "^3.0.5",
    "gulp-plumber": "^1.1.0",
    "gulp-uglify": "^1.5.3",
    "gulp-watch": "^4.1.1"
  }
}
</t>
<t tx="fil.20171113205902.1">@language javascript
@tabwidth -2

var gulp        = require('gulp'),
    plumber     = require('gulp-plumber'),
    concat      = require('gulp-concat'),
    sourcemaps  = require('gulp-sourcemaps');
    htmlMin     = require('gulp-htmlmin'),
    less        = require('gulp-less'),
    cleanCss    = require('gulp-clean-css'),
    imageMin    = require('gulp-imagemin'),
    uglify      = require('gulp-uglify'),
    browserSync = require('browser-sync'),
    del         = require('del'),
    log         = console.log;
    
    // ****************************** Common unused
    //autoprefixer    = require('gulp-autoprefixer');
    //useref          = require('gulp-useref'),
    //rev             = require('gulp-rev'),
    //revReplace      = require('gulp-rev-replace'),

var pkg = require('./package.json'); // from our own product description

var paths = {
  // sources
  html    : "src/*.html",
  ico     : "src/*.ico",
  less    : "src/styles/*.less",
  scripts : "src/scripts/*.js",
  images  : "src/images/*",
  // output
  build   : "dist"
};
gulp.task('default', function(){
  log(""); 
  log("   --------------------------------------");
  log("                 gulp tasks              ");
  log("   --------------------------------------");
  log("    Build into dist/ folder from src/" );
  log("    &gt; gulp build ");
  log("  ");  
  log("    Build and live reload in browser" );
  log("    &gt; gulp browser ");
  log("\n"); 
});

gulp.task('build', ['clean', 'html', 'ico', 'images', 'scripts', 'styles']);

gulp.task('clean', function() {
  return del.sync([paths.build]);
});

gulp.task('html', function(){
  return gulp.src(paths.html)
    .pipe(plumber())
    .pipe(htmlMin( {collapseWhitespace: true} ))
    .pipe(gulp.dest('dist'))
});

gulp.task('ico', function(){
  return gulp.src(paths.ico)
    .pipe(plumber())
    .pipe(gulp.dest('dist'))
});

gulp.task('images', function(){
  return gulp.src(paths.images)
    .pipe(plumber())
    .pipe(imageMin())
    .pipe(gulp.dest(paths.build+'/images'))
});

gulp.task('scripts', function(){
  return gulp.src(paths.scripts)
    .pipe(plumber())
    .pipe(sourcemaps.init())
      .pipe(uglify())
      .pipe(concat('scripts.js'))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest(paths.build+'/scripts'))
});

gulp.task('styles', function(){
  return gulp.src(paths.less)
    .pipe(plumber())
    .pipe(less())
    .pipe(cleanCss())
    .pipe(concat('styles.css'))
    .pipe(gulp.dest(paths.build+'/styles'))
    .pipe(browserSync.stream());
});

gulp.task('browser', ['build'], function() {
  browserSync({
    server: {
      baseDir: './dist'
    }
  });
  gulp.watch('src/**/*.html', ['html']);
  gulp.watch('src/scripts/**/*.js', ['scripts']);
  gulp.watch('src/styles/**/*.less', ['styles']);  
  gulp.watch('src/images/*', ['images']);
  gulp.watch(["dist/scripts/*.js", "dist/images/*","dist/*.html" ]).on('change', browserSync.reload);
});

gulp.task('server', ['build'], function() {
 
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
  os.mkdir("src")
  os.mkdir("src/scripts")
  os.mkdir("src/styles")
  os.mkdir("src/images")
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
<t tx="fil.20171119191851.10">&lt;p class="sample-class"&gt;
  Some paragraph &lt;br&gt;
  &lt;span class="inner-class"&gt;with two lines.&lt;/span&gt;
&lt;/p&gt;
&lt;p span class="inner-class"&gt;
  Another paragraph with only one line this time, no color.
&lt;/p&gt;
&lt;p class="sample-class"&gt;
  And a last paragraph with only one line this time.
&lt;/p&gt;
</t>
<t tx="fil.20171119191851.11">&lt;img src="images/testimage.png" alt="test imags" &gt;
</t>
<t tx="fil.20171119191851.12">&lt;script src="scripts/scripts.js"&gt;&lt;/script&gt;
</t>
<t tx="fil.20171119191851.2">&lt;!DOCTYPE html&gt;
</t>
<t tx="fil.20171119191851.3">&lt;html lang="en"&gt;
@others
&lt;/html&gt;
</t>
<t tx="fil.20171119191851.4">&lt;head&gt;
  @others
&lt;/head&gt;
</t>
<t tx="fil.20171119191851.5">&lt;meta charset="UTF-8"&gt;
</t>
<t tx="fil.20171119191851.6">&lt;title&gt;Physics test generated from Le scscso&lt;/title&gt;
</t>
<t tx="fil.20171119191851.7">&lt;link rel="stylesheet" href="styles/styles.css"&gt;
</t>
<t tx="fil.20171119191851.8">&lt;body&gt;
  @others
&lt;/body&gt;
</t>
<t tx="fil.20171119191851.9">&lt;h2&gt;Some Title&lt;/h2&gt;
</t>
<t tx="fil.20171119191903.1">@language css

.sample-class {

    color:red;
    
    .inner-class {
        color:blue;
    }
    
}
</t>
<t tx="fil.20171125211124.1"></t>
<t tx="fil.20171125220307.1">@language javascript
@tabwidth -2

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
</t>
<t tx="fil.20171125220624.1">@others
</t>
<t tx="fil.20171126150155.1">@language javascript
@tabwidth -2

function Vector(p_x, p_y, p_z) { // Constructor
  this.x = p_x || 0;
  this.y = p_y || 0;
  this.z = p_z || 0;
}

Vector.test=function(p1, p2){
  console.log("in general, gonna tripple", p1, p2);
  return p1*3;
};

Vector.prototype.test=function(p1) {
  console.log("in proto one, gonna double ", p1);
  return p1*2;
};

console.log("test app");

v= new Vector(2,3,4);

console.log(v);
console.log("v.test: ",v.test(22,99));
console.log("Vector.test: ", Vector.test(22, 99));
</t>
<t tx="fil.20171126152802.1">@language javascript
@tabwidth -2
@nowrap
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
<t tx="fil.20171202212845.1">function Cuboid(p_m, p_x, p_y, p_z, p_length, p_width, p_height){ // Constructor
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
<t tx="fil.20171202213032.1">function momentOfInertia(p_elements){
  var i;
  var w_centerGravity = centerGravity(p_elements);

  var w_pos=[]; // corrected positions from center of gravity
  for (i = 0; i &lt; p_elements.length; i++){
    w_pos[i] = Vector.sub(p_elements[i].pos, w_centerGravity);
  }
  log("pos", w_pos);
  var w_m = new Vector(0,0,0);
  var w_mn; // moment about own neutral axis
  var d2;
  for (i = 0; i &lt; p_elements.length; i++){ // Parallel Axis Theorem
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
</t>
<t tx="fil.20171202213112.1">function solidMomentOfInertia(p_shapeString, p_mass, p_1, p_2, p_3){
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
      if( (Vector.shapes.indexOf(p_shapeString) &gt; -1)){
        throw "Invalid Strings Definition : Vector.shapes is OUTDATED";
      }else {
        throw "Invalid Geometric Shape String Parameter :  "+p_shapeString;
      }
  }
  return w_m;
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
<t tx="fil.20171212225812.1"></t>
</tnodes>
</leo_file>
