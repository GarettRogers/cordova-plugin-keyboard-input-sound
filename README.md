# About
This plugin helps cordova applications use the native keyboard sound (in iOS).  A native-feeling keyboard sound is not achievable through the native audio plugin, or through any other means, because it requires a special call to the operating system.  The volume of the keyboard sound should not be tied to the media volume, or the ringer (which is what happens with other plugins)

# Installation
`cordova plugin add https://github.com/GarettRogers/cordova-plugin-keyboard-input-sound`

# Usage
`cordova.plugins.KeyboardInputSound.play()`
