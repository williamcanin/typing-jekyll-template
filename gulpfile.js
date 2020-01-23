// Script: gulpfile.js
// by: William C. Canin

let gulp = require('gulp');
let uglify = require('gulp-uglify');
let imagemin = require('gulp-imagemin');
let htmlmin = require('gulp-htmlmin');

// Html task
function js() {
  return gulp
    .src('public/assets/js/**/*.js')
    .pipe(uglify())
    .pipe(gulp.dest('public/assets/js'))
}

// Html task
function html() {
  return gulp
    .src('public/**/*.html')
    .pipe(htmlmin({ collapseWhitespace: true, removeComments: true }))
    .pipe(gulp.dest('public'))
}

// Optimize Images
function images() {
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

// define tasks
const build = gulp.series(gulp.parallel(html, js, images));

// export tasks
exports.images = images;
exports.js = js;
exports.html = html;
exports.build = build;
exports.default = build;
