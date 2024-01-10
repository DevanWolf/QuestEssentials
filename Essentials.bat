@ECHO OFF
adb uninstall com.oculus.mobile_mrc_setup
adb install ExactCalculator.apk
adb install blackvoid.apk
adb install Passthrough.apk
adb install Files_1.5_Apkpure.apk
adb install-multiple Music\base.apk Music\split_config.arm64_v8a.apk Music\split_config.xhdpi.apk