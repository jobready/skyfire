var requireDir = require('require-dir');
requireDir('node_modules/skyfire/gulp/tasks', {recurse: true});
requireDir('./skyfire/gulp/tasks', {recurse: true});