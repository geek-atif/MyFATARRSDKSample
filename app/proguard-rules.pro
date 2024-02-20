# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


#Model
-keep public class com.whitehax.ironsdn.security.model.GeneralCheckResponse {*;}
-keep public class com.whitehax.ironsdn.security.model.GeneralChecks { *;}

-keep public class com.whitehax.ironsdn.security.model.AppDetail {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.WifiDetail {
  *;
}

-keep public class com.whitehax.ironsdn.security.securityhandlers.WifiManagerHandler {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.DeviceInfo {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.Result {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.WifiVendorName {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.WifiCheck {
  *;
}

-keep public class  com.whitehax.ironsdn.security.enum.ResultStatus {
  *;
}

-keep public class  com.whitehax.ironsdn.security.enum.DeviceStatus {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.FilePasswordScan {
  *;
}


-keep public class com.whitehax.ironsdn.security.model.WifiDeviceScanResult {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.DbWifiDeviceScan {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.DeviceScanIPMacStatus {
  *;
}

-keep public class com.whitehax.ironsdn.security.securityhandlers.WifiManagerHandler {
  *;
}


-keep public class com.whitehax.ironsdn.security.model.DeviceTestsCategories {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.OverAllScoreResult {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.WifiTestsCategories {
  *;
}

#-keep public class com.whitehax.ironsdn.security.util.Utility { *;}

#-keep public class com.whitehax.ironsdn.security.httpRequest.HttpGetRequest { *;}

#-keep public class com.whitehax.ironsdn.security.httpRequest.HttpPostRequest {*;}

#-keep public class com.whitehax.ironsdn.security.httpRequest.DownloadTask { *;}


#-keep public class com.whitehax.ironsdn.security.securityhandlers.NetworkChangeService {*;}




-keep public class com.whitehax.ironsdn.security.model.BonjourServiceDetails {
  *;
}

-keep public class com.whitehax.ironsdn.security.passwordmanager.dto.PasswordDetailDTO {
  *;
}

-keep public class com.whitehax.ironsdn.security.passwordmanager.dto.Response {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.GeneralCheckInput {
  *;
}

-keep public class com.whitehax.ironsdn.security.model.GeneralCheckInputKt { *;}

-keep public class com.whitehax.ironsdn.security.model.NonSystemApp{*;}


#-keep public class com.whitehax.ironsdn.security.passwordmanager.database.PasswordManagerHandler {  *;}
#-keep public class com.whitehax.ironsdn.security.util.Constant {*;}
#-keep public class com.whitehax.ironsdn.security.securityhandlers.GeneralCheckHandler {*;}


-keep public class com.whitehax.ironsdn.security.mySpeedTest.CustomSpeedTestActivity {*;
}

-keep public class  com.whitehax.ironsdn.security.mySpeedTest.SpeedTestDialog {
  *;
}

#-keep public class com.whitehax.ironsdn.security.util.mail.GMailSender {*;}

#-keep public class com.whitehax.ironsdn.security.util.mail.JSSEProvider {*;}


-keep public class  com.whitehax.ironsdn.security.upnp.UPnPDevice {*;}

-keep public class  com.whitehax.ironsdn.security.upnp.UPnPDeviceComparator {
  *;
}

-keep public class  com.whitehax.ironsdn.security.upnp.UPnPDeviceFinder {
  *;
}


-keep public class com.whitehax.ironsdn.security.model.UPNPDevice {
  *;
}


-keep public class com.whitehax.ironsdn.security.securityhandlers.AdminHandler {
*;
}

-keep public class com.whitehax.ironsdn.security.model.IronSDNError {
  *;
}

#-keep public class  com.whitehax.ironsdn.security.myVPN.OpenDnsVPNAssist{*;}

#-keep public class  com.whitehax.ironsdn.security.myVPN.VPNAssist{*;}

-keep public class com.whitehax.ironsdn.security.familyProtect.** {public protected private *;}

-keep public class com.whitehax.ironsdn.security.model.MalwareApp {*;}
-keep public class com.whitehax.ironsdn.security.model.GeneralCheckInput  {*;}
-keep public class com.whitehax.ironsdn.security.model.AppPackageCheckElement  {*;}

-keep public class com.whitehax.ironsdn.security.enum.AppPermission  {*;}
-keep public class com.whitehax.ironsdn.security.model.AppPermissionStatus {*;}
-keep public class  com.whitehax.ironsdn.security.model.simpleloginemail.EmailInbox {*;}
-keep public class  com.whitehax.ironsdn.security.model.simpleloginemail.EmailForward {*;}

#New SDK Change
-keep public class  com.whitehax.ironsdn.security.sdk.IronSDNSDK {*;}
#API
-keep public class  com.whitehax.ironsdn.security.api.IronSDNApiHandler {*;}
#verify
-keep public class  com.whitehax.ironsdn.security.sdk.verifyscan.WifiSecurity {*;}
-keep public class  com.whitehax.ironsdn.security.sdk.verifyscan.DeviceSecurity {*;}
-keep public class  com.whitehax.ironsdn.security.sdk.verifyscan.network.CyberSafeDevices {*;}
-keep public class  com.whitehax.ironsdn.security.sdk.verifyscan.network.NetworkScan {*;}
-keep public class  com.whitehax.ironsdn.security.sdk.verifyscan.network.SmartDeviceScan {*;}
-keep public class  com.whitehax.ironsdn.security.sdk.verifyscan.network.UpnpScan {*;}
#protect
-keep public class com.whitehax.ironsdn.security.sdk.protectscan.VpnManager {*;}
-keep public class com.whitehax.ironsdn.security.sdk.protectscan.PasswordManager {*;}
-keep public class com.whitehax.ironsdn.security.sdk.protectscan.MaliciousActivity {*;}
-keep public class com.whitehax.ironsdn.security.sdk.protectscan.webProtect.AdBlocker {*;}
-keep public class com.whitehax.ironsdn.security.sdk.protectscan.webProtect.FamilyProtect {*;}
-keep public class com.whitehax.ironsdn.security.sdk.protectscan.webProtect.PhishingFilter {*;}
#privacyscan
-keep public class com.whitehax.ironsdn.security.sdk.privacyscan.AppBlocker {*;}
-keep public class com.whitehax.ironsdn.security.sdk.privacyscan.DeleteMe {*;}
-keep public class com.whitehax.ironsdn.security.sdk.privacyscan.EmailForwarding {*;}
-keep public class com.whitehax.ironsdn.security.sdk.privacyscan.IdTheft {*;}
#Learn
-keep public class com.whitehax.ironsdn.security.sdk.learntraining.Learn {*;}

#App Permission
-keep public class  com.whitehax.ironsdn.security.permission.IronSDNPermissionHandlerImpl {*;}

#Expection
-keep public class  com.whitehax.ironsdn.security.sdk.IronSDNException {*;}

#Utitly
-keep public class  com.whitehax.ironsdn.security.sdk.IronSDNUtility {*;}

-keep public class com.whitehax.ironsdn.security.util.AppSharedPreference {*;}



-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable

#NetGuard
-keepnames class eu.faircode.netguard.* { *; }

#JNI
-keepclasseswithmembernames class * {
    native <methods>;
}

#JNI callbacks
-keep class eu.faircode.netguard.Rule { *; }
-keep class eu.faircode.netguard.Allowed { *; }
-keep class eu.faircode.netguard.Packet { *; }
-keep class eu.faircode.netguard.ResourceRecord { *; }
-keep class eu.faircode.netguard.Usage { *; }
-keep class eu.faircode.netguard.ServiceSinkhole {
    void nativeExit(java.lang.String);
    void nativeError(int, java.lang.String);
    void logPacket(eu.faircode.netguard.Packet);
    void dnsResolved(eu.faircode.netguard.ResourceRecord);
    boolean isDomainBlocked(java.lang.String);
    int getUidQ(int, int, java.lang.String, int, java.lang.String, int);
    eu.faircode.netguard.Allowed isAddressAllowed(eu.faircode.netguard.Packet);
    void accountUsage(eu.faircode.netguard.Usage);
}




#AndroidX
-keep class androidx.appcompat.widget.** { *; }
-keep class androidx.appcompat.app.AppCompatViewInflater { <init>(...); }
-keepclassmembers class * implements android.os.Parcelable { static ** CREATOR; }

#Glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep enum com.bumptech.glide.** {*;}
#-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
#    **[] $VALUES;
#    public *;
#}

#AdMob
-dontwarn com.google.android.gms.internal.**

-keepparameternames
-renamesourcefileattribute SourceFile
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,
                SourceFile,LineNumberTable,*Annotation*,EnclosingMethod

-keep class net.measurementlab.ndt7.android.models.* { *; }
-keep class net.measurementlab.ndt7.android.NDTTest.TestType { *; }
-keep class net.measurementlab.ndt7.android.NDTTest {
    void startTest(net.measurementlab.ndt7.android.NDTTest.TestType);
}

-keep class net.measurementlab.ndt7.android.DataPublisher { *; }
-keep class net.measurementlab.ndt7.android.utils.DataConverter {
    java.lang.String convertToMbps(net.measurementlab.ndt7.android.models.ClientResponse);
}


-keep class com.github.mikephil.charting.** { *; }
-dontwarn io.realm.**


-keepnames class de.blinkt.openvpn.activities.*{*;}
-keepnames class de.blinkt.openvpn.api.*{*;}
-keepnames class de.blinkt.openvpn.core.*{*;}
-keepnames class de.blinkt.openvpn.utils.*{*;}
-keepnames class de.blinkt.openvpn.OpenVpnApi { *; }
-keepnames class de.blinkt.openvpn { *; }
-keepnames class de.blinkt.openvpn.VpnProfile { *; }
-keepnames class org.spongycastle.util.encoders.* { *;}
-keepnames class org.spongycastle.util.io.* { *;}
-keep class com.github.mikephil.charting.** { *; }
-dontwarn io.realm.**


-optimizationpasses 5
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

-dontwarn org.slf4j.impl.*
-dontwarn javax.naming.*
-dontwarn javax.servlet.http.*
-dontwarn javax.servlet.*
-dontwarn java.awt.*

-assumenosideeffects class java.io.PrintStream {
     public void println(%);
     public void println(**);
 }

-assumenosideeffects class android.util.Log {
     public static *** d(...);
     public static *** v(...);
}

-assumenosideeffects class com.frostnerd.vpntunnelproxy.Logger {
        public final void finer(...);
        public final void finest(...);
}


-optimizationpasses 5
-dontwarn java.awt.*

-keep class com.whitehax.ironsdn.security.familyProtect.PinActivity{*;}
-keep class com.whitehax.ironsdn.security.familyProtect.util.GenericFileProvider{*;}

# See http://stackoverflow.com/questions/5701126, happens in dnsjava
-keep class android.support.v7.widget.SearchView { *; }
-keep class com.frostnerd.dnschanger.util.GenericFileProvider
-keep class com.frostnerd.dnschanger.activities.PinActivity
-keep class android.support.v7.app.AppCompatViewInflater {
    *;
}
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable

-dontwarn org.slf4j.impl.*
-keep class org.slf4j.** {
    *;
}
-keep class org.pcap4j.** {
    *;
}
-assumenosideeffects class org.slf4j.Logger {
    public void debug(...);
    public void trace(...);
}
