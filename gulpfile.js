// Script: gulpfile.js
// by: William C. Canin

let gulp = require('gulp');
let uglify = require('gulp-uglify');
let imagemin = require('gulp-imagemin');
let htmlmin = require('gulp-htmlmin');


// function postinstall for copy files statics
function postinstall_statics() {
  return gulp
    .src(['node_modules/jquery/dist/jquery.min.js',
      'node_modules/popper.js/dist/umd/popper.min.js',
      'node_modules/popper.js/dist/umd/popper.min.js.map',
      'node_modules/bootstrap/dist/js/bootstrap.min.js',
      'node_modules/bootstrap/dist/js/bootstrap.min.js.map'])
    .pipe(gulp.dest('assets/vendor/js'))
}

// function minify javascripts
function javascripts() {
  return gulp
    .src('public/assets/js/**/*.js')
    .pipe(uglify())
    .pipe(gulp.dest('public/assets/js'))
}

// function minify html
function html_minify() {
  return gulp
    .src('public/**/*.html')
    .pipe(htmlmin({ collapseWhitespace: true, removeComments: true }))
    .pipe(gulp.dest('public'))
}

// function optimize images
function images_minify() {
  return gulp
    .src('public/assets/images/**/*')
    .pipe(
      imagemin([
        imagemin.gifsicle({ interlaced: true }),
        imagemin.mozjpeg({ progressive: true }),
        imagemin.optipng({ optimizationLevel: 5 }),
        imagemin.svgo({
          plugins: [
            {
              removeViewBox: true,
              collapseGroups: false
            }
          ]
        })
      ])
    )
    .pipe(gulp.dest('public/assets/images'));
}

// task build
const build = gulp.series(gulp.parallel(html_minify,
                                        javascripts,
                                        images_minify));

// export tasks
exports.postinstall = postinstall_statics;
exports.images = images_minify;
exports.js = javascripts;
exports.html = html_minify;
exports.build = build;
exports.default = build;
