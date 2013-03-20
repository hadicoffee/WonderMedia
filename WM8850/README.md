WM8850
======

WonderMedia WM8850 ClockworkMod Recovery

repo init -u git://github.com/CyanogenMod/android.git -b cm-10.1

paste these lines inside new file .repo/local_manifest.xml

<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <!-- remote  name="github" fetch="git://github.com/" /-->
  <remove-project name="CyanogenMod/android_system_vold"/>
  <project remote="github" revision="cm-10.1" name="hadicoffee/WonderMedia/WM8850" path="device/WonderMedia/WM8850" />
</manifest>

now type this command

repo sync -j8

finally you're ready to build CWM-Recovery

source build/envsetup.sh

lunch cm_WM8850-userdebug

make -j4 recoveryimage
