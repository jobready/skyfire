var config = require('../../config');
var gulp = require('gulp');
//var revCollector = require('gulp-rev-collector');
var rev = require('gulp-rev');

// Replace asset references in compiled css and js files
gulp.task('rev', [], function () {
    return gulp.src([config.publicAssets + '/stylesheets/*.css', config.publicAssets + '/javascripts/*.js'])
        .pipe(rev())
        .pipe(gulp.dest(config.publicAssets))  // write rev'd assets to build dir
        .pipe(rev.manifest())
        .pipe(gulp.dest(config.appDir)); // write manifest to build dir
});
