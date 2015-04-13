require('coffee-script').register();

exports.register = require('./lib/index.coffee');
exports.register.attributes = {
    pkg: require('./package.json')
};