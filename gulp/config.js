require('shelljs/global');
var rootDir = exec('git rev-parse --show-toplevel', {silent:true}).output.replace(/\n$/, '');
var publicAssets = rootDir+"/public/assets";
var sourceFiles  = rootDir+"/app/assets";

module.exports = {
    publicAssets: publicAssets,
    sass: {
        src: sourceFiles + "/stylesheets/**/*.{css,sass,scss}",
        dest: publicAssets + "/stylesheets",
        settings: {
            sourceComments: true,
            indentedSyntax: true, // Enable .sass syntax!
            imagePath: '/assets/images' // Used by the image-url helper
        }
    },
    images: {
        src: sourceFiles + "/images/**",
        dest: publicAssets + "/images"
    },
    browserify: {
        bundleConfigs: [{
            entries: sourceFiles + '/javascripts/application.js',
            dest: publicAssets + '/javascripts',
            outputName: 'bundle.js',
            extensions: ['.js','.jsx']
        }]
    }
};