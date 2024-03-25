@ECHO OFF
adb logcat -G 64K
IF %ERRORLEVEL%=0(adb uninstall com.oculus.mobile_mrc_setup
adb shell pm disable-user com.oculus.updater
adb shell pm disable-user android.providers.calendar
adb shell pm disable-user com.oculus.statscollector
adb shell pm disable-user com.oculus.magicislandcastingservice
adb shell pm disable-user com.oculus.captionservice
adb shell pm disable-user com.oculus.cvp
adb shell pm disable-user com.android.providers.tv
adb shell pm disable-user com.oculus.identitymanagement.service
adb shell pm disable-user com.facebook.wearable.system.location.proxy
adb shell pm disable-user com.facebook.wearable.system.location.service
adb shell pm disable-user com.oculus.integrity
adb shell pm disable-user com.android.modulemetadata
adb shell pm disable-user com.meta.automation.pauldron.vr
adb shell pm disable-user com.oculus.extrapermissions
adb shell pm disable-user com.oculus.panelapp.kiosk
adb shell pm disable-user com.android.provision
adb shell pm disable-user com.oculus.bugreportuploader
adb shell pm disable-user com.oculus.qplservice
adb shell pm disable-user com.oculus.vrprivacycheckup
adb shell pm disable-user com.meta.shellavatar
adb shell pm disable-user android.ext.shared
adb shell pm disable-user com.android.onetimeinitializer
adb shell pm disable-user com.android.server.telecom
adb shell pm disable-user com.oculus.systempermissions
adb shell pm disable-user android.ext.services
adb shell pm disable-user com.android.managedprovisioning
adb shell pm disable-user com.meta.federatedcomputing.oculus
adb shell pm disable-user com.meta.mr.awe
adb shell pm disable-user com.android.storagemanager
adb shell pm disable-user com.android.bookmarkprovider
adb shell pm disable-user com.oculus.q4b.mdm
adb shell pm disable-user com.android.providers.blockednumber
adb shell pm disable-user com.android.providers.userdictionary
adb shell pm disable-user com.android.providers.contacts
adb shell pm disable-user com.oculus.environment.prod.bubbles
adb shell pm disable-user com.oculus.environment.prod.adobe
adb shell settings put system accelerometer_rotation 0
adb shell settings put system mode_ringer_streams_affected 0
adb shell settings put system mute_streams_affected 0
adb shell settings put system notification_light_pulse 0
adb shell settings put system notification_vibration_intensity 0
adb shell settings put system screen_brightness 0
adb shell settings put system screen_brightness_for_vr 0
adb shell settings put system screen_off_timeout 2147483647
adb shell settings put system volume_alarm 0
adb shell settings put system volume_bluetooth_sco 0
adb shell settings put system volume_music 0
adb shell settings put system volume_notification 0
adb shell settings put system volume_ring 0
adb shell settings put system volume_system 0
adb shell settings put system volume_voice 0
adb shell settings put global activity_starts_logging_enabled 0
adb shell settings put global airplane_mode_radios wifi
adb shell settings put global airplane_mode_toggleable_radios wifi
adb shell settings put global art_verifier_verify_debuggable 0
adb shell settings put global audio_safe_volume_state 3
adb shell settings put global car_dock_sound ''
adb shell settings put global car_undock_sound ''
adb shell settings put global cdma_cell_broadcast_sms 0
adb shell settings put global data_roaming 0
adb shell settings put global device_config_sync_disabled 1
adb shell settings put global dropbox_quota_kb 0
adb shell settings put global lock_sound ''
adb shell settings put global logcat_for_data_app_anr 0
adb shell settings put global logcat_for_data_app_crash 0
adb shell settings put global logcat_for_system_app_anr 0
adb shell settings put global logcat_for_system_app_crash 0
adb shell settings put global logcat_for_system_server_anr 0
adb shell settings put global logcat_for_system_server_crash 0
adb shell settings put global mobile_data 0
adb shell settings put global netstats_enabled 0
adb shell settings put global network_recommendations_enabled 0
adb shell settings put global network_scoring_ui_enabled 0
adb shell settings put global ota_disable_automatic_update 1
adb shell settings put global power_sounds_enabled 0
adb shell settings put global preferred_network_mode 1
adb shell settings put global send_action_app_error 0
adb shell settings put global tether_offload_disabled 1
adb shell settings put global trusted_sound ''
adb shell settings put global unlock_sound ''
adb shell settings put global verifier_verify_adb_installs 0
adb shell settings put global wifi_sleep_policy 1
adb shell settings put secure accessibility_button_mode 0
adb shell settings put secure accessibility_floating_menu_fade_enabled 0
adb shell settings put secure accessibility_floating_menu_opacity 0
adb shell settings put secure accessibility_display_magnification_scale 1.0
adb shell settings put secure charging_vibration_enabled 0
adb shell settings put secure mount_play_not_snd 0
adb shell settings put secure screensaver_activate_on_dock 0
adb shell settings put secure send_action_app_error 0
adb shell settings put secure stay_on_while_plugged_in 3
adb install DeskClock.apk
adb install ExactCalculator.apk
adb install blackvoid.apk
adb shell pm disable-user com.environment.blackvoid
adb install Passthrough.apk
adb install Files.apk
adb install-multiple Music\base.apk Music\split_config.arm64_v8a.apk Music\split_config.xhdpi.apk)
ElSE IF %ERRORLEVEL%=1(ECHO There is a problem with your ADB communication! Please make sure USB debugging is enabled and connected to your Quest properly.
PAUSE
%0)
ELSE IF %ERRORLEVEL%=9009(IF EXIST "%PROGRAMFILES(X86)%\Minimal ADB and Fastboot\adb.exe"(ECHO Minimal ADB and Fastboot detected but is not in PATH. Auto-updating PATH now.
SET PATH=%PATH%;%PROGRAMFILES(X86)%\Minimal ADB and Fastboot
%0)
ELSE(ECHO ERROR! ADB is not installed. Please install Minimal ADB and Fastboot then run this utility again.
PAUSE))