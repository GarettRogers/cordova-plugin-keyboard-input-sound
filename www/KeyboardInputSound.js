var exec = require('cordova/exec');

exports.play = function(arg0, success, error) {
    exec(success, error, "KeyboardInputSound", "play", [arg0]);
};
