
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
    del         = require('del');
    
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

gulp.task('default', ['build']);

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
