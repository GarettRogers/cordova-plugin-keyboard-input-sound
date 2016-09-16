var exec = require('cordova/exec');

exports.play = function() {
    exec(null, null, "KeyboardInputSound", "play", []);
};
