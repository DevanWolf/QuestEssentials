@ECHO OFF
adb logcat -G 64K
adb uninstall com.oculus.mobile_mrc_setup
adb shell device_config set_sync_disabled_for_tests persistent
adb shell device_config put activity_manager max_phantom_processes 2147483647
adb shell pm disable-user com.oculus.statscollector
adb shell pm disable-user com.oculus.qplservice
adb shell pm disable-user com.oculus.cvp
adb shell pm disable-user com.android.providers.tv
adb shell pm disable-user com.oculus.identitymanagement.service
adb shell pm disable-user com.facebook.wearable.system.location.proxy
adb shell pm disable-user com.facebook.wearable.system.location.service
adb shell pm disable-user com.android.modulemetadata
adb shell pm disable-user com.meta.automation.pauldron.vr
adb shell pm disable-user com.oculus.extrapermissions
adb shell pm disable-user com.oculus.panelapp.kiosk
adb shell pm disable-user com.android.provision
adb shell pm disable-user com.oculus.bugreportuploader
adb shell pm disable-user com.oculus.vrprivacycheckup
adb shell pm disable-user android.ext.shared
adb shell pm disable-user com.android.onetimeinitializer
adb shell pm disable-user com.android.server.telecom
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
adb shell pm disable-user com.oculus.oemconfig
adb shell pm disable-user com.oculus.ovrmonitormetricsservice
adb shell pm disable-user com.oculus.permissioncontroller.rro
adb shell pm disable-user com.oculus.environment.prod.bubbles
adb shell pm disable-user com.oculus.environment.prod.adobe
adb shell pm disable-user com.meta.environment.prod.nuxd
adb shell pm disable-user com.meta.environment.prod.stinson.launchpad
adb shell settings put system dtmf_tone 0
adb shell settings put system mode_ringer_streams_affected 0
adb shell settings put system mute_streams_affected 0
adb shell settings put system notification_light_pulse 0
adb shell settings put system screen_brightness 0
adb shell settings put system screen_brightness_for_vr 0
adb shell settings put system screen_off_timeout 2147483647
adb shell settings put system sound_effects_enabled 0
adb shell settings put system volume_alarm 0
adb shell settings put system volume_bluetooth_sco 0
adb shell settings put system volume_music 0
adb shell settings put system volume_music_bus 15
adb shell settings put system volume_music_usb_headset 15
adb shell settings put system volume_notification 0
adb shell settings put system volume_ring 0
adb shell settings put system volume_system 0
adb shell settings put system volume_voice 0
adb shell settings put global activity_starts_logging_enabled 0
adb shell settings put global airplane_mode_radios wifi
adb shell settings put global airplane_mode_toggleable_radios wifi
adb shell settings put global art_verifier_verify_debuggable 0
adb shell settings put global assisted_gps_enabled 0
adb shell settings put global audio_safe_volume_state 3
adb shell settings put global bluetooth_sanitized_exposure_notification_supported 0
adb shell settings put global car_dock_sound null
adb shell settings put global car_undock_sound null
adb shell settings put global cdma_cell_broadcast_sms 0
adb shell settings put global data_roaming 0
adb shell settings put global desk_dock_sound null
adb shell settings put global desk_undock_sound null
adb shell settings put global development_settings_enabled 1
adb shell settings put global device_config_sync_disabled 1
adb shell settings put global dock_audio_media_enabled 0
adb shell settings put global dropbox_quota_kb 0
adb shell settings put global hdmi_control_auto_device_off_enabled 0
adb shell settings put global heads_up_notifications_enabled 0
adb shell settings put global lock_sound null
adb shell settings put global mobile_data 0
adb shell settings put global netstats_enabled 0
adb shell settings put global network_recommendations_enabled 0
adb shell settings put global network_scoring_ui_enabled 0
adb shell settings put global ota_disable_automatic_update 1
adb shell settings put global power_sounds_enabled 0
adb shell settings put global preferred_network_mode 1
adb shell settings put global private_dns_specifier dns.adguard.com
adb shell settings put global settings_enable_monitor_phantom_procs false
adb shell settings put global stay_on_while_plugged_in 3
adb shell settings put global tether_offload_disabled 1
adb shell settings put global trusted_sound null
adb shell settings put global unlock_sound null
adb shell settings put global verifier_verify_adb_installs 0
adb shell settings put global wireless_charging_started_sound null
adb shell settings put secure accessibility_button_mode 0
adb shell settings put secure accessibility_floating_menu_fade_enabled 0
adb shell settings put secure accessibility_floating_menu_opacity 0
adb shell settings put secure accessibility_display_magnification_scale 1.0
adb shell settings put secure charging_vibration_enabled 0
adb shell settings put secure double_tap_to_wake 0
adb shell settings put secure lock_screen_allow_private_notifications 0
adb shell settings put secure lock_screen_show_notifications 0
adb shell settings put secure lockscreen_show_controls 0
adb shell settings put secure lockscreen_show_wallet 0
adb shell settings put secure mount_play_not_snd 0
adb shell settings put secure notification_bubbles 0
adb shell settings put secure power_menu_locked_show_content 0
adb shell settings put secure screensaver_activate_on_dock 0
adb shell settings put secure screensaver_components ''
adb shell settings put secure screensaver_default_component ''
adb shell settings put secure screensaver_enabled 0
adb shell settings put secure show_zen_settings_suggestion 0
adb shell settings put secure speak_password 0
adb shell settings put secure volume_hush_gesture 0
adb shell settings put secure wake_gesture_enabled 0
adb shell settings put secure wifi_wakeup_enabled 0
adb install DeskClock.apk
adb install ExactCalculator.apk
adb install blackvoid.apk
adb install Files.apk
adb install-multiple Music\base.apk Music\split_config.arm64_v8a.apk Music\split_config.xhdpi.apk
