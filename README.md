# glbstpl

This project is based on project below. Check it's readme, please:

https://github.com/calabash/x-platform-example/blob/master/README.md

After reading file above and configure calabash for both OS, check it out .pdf files inside project 'exercises' folder. It's a must read.

Now you are read to start. 

After clone this project, generate (build) .APK and .APP/.IPA files and copy inside correct product tested folders. They are /prebuilt/vsp and /prebuilt/gsatplay.

Then, just run the tests on the preferred platform filtering tests with tags or features. Ex.:

Running all Android tests from VSP:

    bundle exec calabash-android run prebuilt/vsp/presentation-debug.apk -p android-vsp --tags @vsp

Running all iOS tests from GsatPlay:

    bundle exec cucumber -p ios-gsatplay --tags @gsatplay


If more projects are included, like Gloob, remember to add cucumber configuration and use tags on scenarios. 
