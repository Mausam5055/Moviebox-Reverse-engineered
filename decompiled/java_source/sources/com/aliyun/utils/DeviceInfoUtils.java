package com.aliyun.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import com.cicada.player.utils.NativeUsed;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@NativeUsed
public class DeviceInfoUtils {
    public static File ALIVC_DATA_FILE = null;
    public static final String DATA_DIRECTORY = "AlivcData";
    private static final int MAX_WRITE_COUNT = 10;
    private static final String UUID_FILE = "alivc_data.txt";
    private static final String UUID_PROP = "UUID";
    private static CpuProcessTracker mCpuTracker;
    private static Context sAppContext;
    private static String sCpuProcessorInfo;
    private static String sDeviceUUID;
    private static String sSessionId;
    private static int sWriteUUIDCount;

    static {
        NativeLoader.loadPlayer();
        ALIVC_DATA_FILE = null;
    }

    static /* synthetic */ int access$008() {
        int i11 = sWriteUUIDCount;
        sWriteUUIDCount = i11 + 1;
        return i11;
    }

    private static String canGetContext() {
        return getSDKContext() != null ? "true" : "false";
    }

    public static String generateNewSessionId() {
        String strReplace = UUID.randomUUID().toString().replace("-", "");
        sSessionId = strReplace;
        return strReplace;
    }

    public static String getApplicationName() {
        PackageManager packageManager;
        ApplicationInfo applicationInfo = null;
        try {
            packageManager = getSDKContext().getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(getSDKContext().getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            packageManager = null;
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }

    public static String getApplicationVersion() {
        try {
            return getSDKContext() != null ? getSDKContext().getPackageManager().getPackageInfo(getSDKContext().getPackageName(), 0).versionName : "";
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static String getCPUInfo() {
        String str;
        try {
            str = (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class).invoke(null, "ro.board.platform", "");
        } catch (Exception e11) {
            e11.printStackTrace();
            str = "";
        }
        return str.equals("") ? Build.HARDWARE : str;
    }

    public static String getCPUProcessorInfo() throws Throwable {
        if (!TextUtils.isEmpty(sCpuProcessorInfo)) {
            return sCpuProcessorInfo;
        }
        requestCPUInfo();
        return sCpuProcessorInfo;
    }

    public static String getCPUUsageRatio() {
        if (mCpuTracker == null) {
            mCpuTracker = new CpuProcessTracker();
        }
        return String.valueOf(mCpuTracker.getMyPicCpuPercent());
    }

    private static String getCacheDir() {
        File externalCacheDir;
        return (getSDKContext() == null || (externalCacheDir = getSDKContext().getExternalCacheDir()) == null || !externalCacheDir.exists()) ? "" : externalCacheDir.getAbsolutePath();
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String getCurrentTimestamp() {
        return new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date());
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    private static String getDeviceFeature() {
        JSONObject jSONObject = new JSONObject();
        if (sAppContext != null) {
            try {
                jSONObject.put("UIModeType", getUIModeType());
            } catch (Exception unused) {
            }
            putFeature(jSONObject, "android.hardware.audio.low_latency");
            putFeature(jSONObject, "android.hardware.bluetooth");
            putFeature(jSONObject, "android.hardware.bluetooth_le");
            putFeature(jSONObject, "android.hardware.screen.landscape");
            putFeature(jSONObject, "android.hardware.screen.portrait");
            int i11 = Build.VERSION.SDK_INT;
            putFeature(jSONObject, "android.hardware.type.watch");
            putFeature(jSONObject, "android.hardware.audio.output");
            putFeature(jSONObject, "android.software.live_tv");
            putFeature(jSONObject, "android.hardware.opengles.aep");
            putFeature(jSONObject, "android.hardware.audio.pro");
            putFeature(jSONObject, "android.hardware.type.automotive");
            putFeature(jSONObject, "android.hardware.sensor.hifi_sensors");
            putFeature(jSONObject, "android.software.midi");
            if (i11 >= 24) {
                putFeature(jSONObject, "android.software.picture_in_picture");
                putFeature(jSONObject, "android.hardware.vr.high_performance");
                putFeature(jSONObject, "android.hardware.vulkan.level");
                putFeature(jSONObject, "android.hardware.vulkan.version");
            }
            if (i11 >= 27) {
                putFeature(jSONObject, "android.hardware.ram.low");
                putFeature(jSONObject, "android.hardware.ram.normal");
            }
            if (i11 >= 26) {
                putFeature(jSONObject, "android.software.activities_on_secondary_displays");
                putFeature(jSONObject, "android.hardware.type.embedded");
                putFeature(jSONObject, "android.hardware.vr.headtracking");
                putFeature(jSONObject, "android.hardware.vulkan.compute");
            }
            putFeature(jSONObject, "android.hardware.touchscreen");
            putFeature(jSONObject, "android.hardware.faketouch");
            putFeature(jSONObject, "android.hardware.telephony");
            putFeature(jSONObject, "android.hardware.camera");
            putFeature(jSONObject, "android.hardware.nfc");
            putFeature(jSONObject, "android.hardware.location.gps");
            putFeature(jSONObject, "android.hardware.microphone");
            putFeature(jSONObject, "android.hardware.sensor.compass");
        }
        return jSONObject.toString();
    }

    public static String getDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static synchronized String getDeviceUUID() {
        if (!TextUtils.isEmpty(sDeviceUUID)) {
            return sDeviceUUID;
        }
        if (ALIVC_DATA_FILE == null) {
            ALIVC_DATA_FILE = new File(getSDKContext().getCacheDir(), DATA_DIRECTORY);
        }
        File file = new File(ALIVC_DATA_FILE, UUID_FILE);
        try {
            if (ALIVC_DATA_FILE.exists() || ALIVC_DATA_FILE.mkdir()) {
                Properties properties = new Properties();
                FileReader fileReader = new FileReader(file);
                properties.load(fileReader);
                fileReader.close();
                sDeviceUUID = properties.getProperty(UUID_PROP);
            }
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(sDeviceUUID)) {
            sWriteUUIDCount = 0;
            String strReplace = UUID.randomUUID().toString().replace("-", "");
            sDeviceUUID = strReplace;
            writeUUIDToFile(file, strReplace);
        }
        return sDeviceUUID;
    }

    public static String getElectricUsageRatio() {
        if (sAppContext == null) {
            return "0";
        }
        try {
            Intent intentRegisterReceiver = sAppContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            return String.valueOf((int) (((intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra(PermissionConstant.level, -1) : -1) / (intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : -1)) * 100.0f));
        } catch (Throwable unused) {
            return "0";
        }
    }

    public static String getGPUInfo() {
        return "";
    }

    public static String getMemoryTotal() {
        try {
            Context context = sAppContext;
            if (context == null) {
                return "0";
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return ((int) (memoryInfo.totalMem / 1048576.0f)) + "";
        } catch (Exception unused) {
            return "0";
        }
    }

    public static String getMemoryUsage() {
        Debug.MemoryInfo[] processMemoryInfo = ((ActivityManager) sAppContext.getSystemService("activity")).getProcessMemoryInfo(new int[]{Process.myPid()});
        if (processMemoryInfo.length == 0) {
            return "0";
        }
        return (processMemoryInfo[0].getTotalPss() / 1024.0f) + "";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String getNetworkType() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) sAppContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "NoActive";
            }
            String subtypeName = activeNetworkInfo.getSubtypeName();
            if (activeNetworkInfo.getType() == 1) {
                return NetworkUtil.NETWORK_TYPE_WIFI;
            }
            if (activeNetworkInfo.getType() != 0) {
                return subtypeName;
            }
            switch (activeNetworkInfo.getSubtype()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return NetworkUtil.NETWORK_TYPE_2G;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return NetworkUtil.NETWORK_TYPE_3G;
                case 13:
                    return NetworkUtil.NETWORK_TYPE_4G;
                default:
                    if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                        return "Mobile:" + subtypeName;
                    }
                    return NetworkUtil.NETWORK_TYPE_3G;
            }
        } catch (Exception unused) {
            return "Unknow";
        }
    }

    public static String getOSVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String getOpenGLVersion() {
        ConfigurationInfo deviceConfigurationInfo;
        Context context = sAppContext;
        if (context == null) {
            return null;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null || (deviceConfigurationInfo = activityManager.getDeviceConfigurationInfo()) == null) {
                return null;
            }
            return Integer.toHexString(Integer.parseInt(deviceConfigurationInfo.reqGlEsVersion + ""));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Context getSDKContext() {
        return sAppContext;
    }

    public static String getSDKVersion() {
        return String.valueOf(Build.VERSION.SDK_INT);
    }

    public static String getTerminalType() {
        try {
            Context context = sAppContext;
            return (context == null || context.getResources() == null || sAppContext.getResources().getConfiguration() == null || (sAppContext.getResources().getConfiguration().screenLayout & 15) < 3) ? "phone" : "pad";
        } catch (Throwable unused) {
            return "phone";
        }
    }

    private static String getUIModeType() throws Exception {
        int currentModeType = ((UiModeManager) sAppContext.getSystemService("uimode")).getCurrentModeType();
        if (currentModeType == 1) {
            return "NORMAL";
        }
        if (currentModeType == 2) {
            return "DESK";
        }
        if (currentModeType == 3) {
            return "CAR";
        }
        if (currentModeType == 4) {
            return "TELEVISION";
        }
        if (currentModeType == 6) {
            return "WATCH";
        }
        if (currentModeType != 7) {
            return currentModeType != 15 ? "UNDEFINED" : "MASK";
        }
        return "VR_HEADSET";
    }

    public static void loadClass() {
    }

    @NativeUsed
    private static String native_getDeviceInfo(String str) {
        str.hashCode();
        switch (str) {
            case "device_manufacturer":
                return getDeviceManufacturer();
            case "cpu_usage":
                return getCPUUsageRatio();
            case "terminal_type":
                return getTerminalType();
            case "application_id":
                return getSDKContext().getPackageName();
            case "os_name":
                return "android";
            case "gpu_info":
                return getGPUInfo();
            case "opengl_version":
                return getOpenGLVersion();
            case "application_version":
                return getApplicationVersion();
            case "electric_usage":
                return getElectricUsageRatio();
            case "device_brand":
                return getDeviceBrand();
            case "device_model":
                return getDeviceModel();
            case "cache_dir":
                return getCacheDir();
            case "can_get_context":
                return canGetContext();
            case "network_type":
                return getNetworkType();
            case "application_name":
                return getApplicationName();
            case "uuid":
                return getDeviceUUID();
            case "cpu_processor":
                return getCPUProcessorInfo();
            case "cpu_info":
                return getCPUInfo();
            case "os_version":
                return getOSVersion();
            case "device_feature":
                return getDeviceFeature();
            case "mem_total":
                return getMemoryTotal();
            case "mem_usage":
                return getMemoryUsage();
            default:
                return "";
        }
    }

    private static void putFeature(JSONObject jSONObject, String str) {
        try {
            jSONObject.put(str, sAppContext.getPackageManager().hasSystemFeature(str) ? "1" : "0");
        } catch (Exception unused) {
        }
    }

    private static void requestCPUInfo() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th2;
        FileReader fileReader;
        FileReader fileReader2 = null;
        try {
            fileReader = new FileReader("/proc/cpuinfo");
            try {
                bufferedReader = new BufferedReader(fileReader);
                try {
                    String line = bufferedReader.readLine();
                    int i11 = 0;
                    while (true) {
                        i11++;
                        if (i11 < 30) {
                            String[] strArrSplit = line.split(":\\s+", 2);
                            if (strArrSplit.length > 1 && strArrSplit[0].contains("Processor")) {
                                sCpuProcessorInfo = strArrSplit[1];
                            }
                            if (!TextUtils.isEmpty(sCpuProcessorInfo)) {
                                break;
                            } else {
                                line = bufferedReader.readLine();
                            }
                        } else {
                            break;
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (IOException unused) {
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                    try {
                        fileReader.close();
                    } catch (IOException unused3) {
                    }
                } catch (Exception unused4) {
                    fileReader2 = fileReader;
                    if (fileReader2 != null) {
                        try {
                            fileReader2.close();
                        } catch (IOException unused5) {
                        }
                    }
                    if (bufferedReader == null) {
                        return;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (bufferedReader == null) {
                        throw th2;
                    }
                    try {
                        bufferedReader.close();
                        throw th2;
                    } catch (IOException unused7) {
                        throw th2;
                    }
                }
            } catch (Exception unused8) {
                bufferedReader = null;
            } catch (Throwable th4) {
                bufferedReader = null;
                th2 = th4;
            }
        } catch (Exception unused9) {
            bufferedReader = null;
        } catch (Throwable th5) {
            bufferedReader = null;
            th2 = th5;
            fileReader = null;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused10) {
        }
    }

    public static void setSDKContext(Context context) {
        if (context != null) {
            context = context.getApplicationContext();
        }
        sAppContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeUUIDToFile(final File file, final String str) {
        if (file == null || TextUtils.isEmpty(str)) {
            return;
        }
        new Timer().schedule(new TimerTask() { // from class: com.aliyun.utils.DeviceInfoUtils.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                boolean z10 = false;
                try {
                    boolean z11 = file.exists() || file.createNewFile();
                    Properties properties = new Properties();
                    properties.setProperty(DeviceInfoUtils.UUID_PROP, str);
                    if (z11) {
                        FileWriter fileWriter = new FileWriter(file);
                        properties.store(fileWriter, (String) null);
                        fileWriter.close();
                        z10 = true;
                    }
                } catch (Throwable unused) {
                }
                DeviceInfoUtils.access$008();
                if (z10 || DeviceInfoUtils.sWriteUUIDCount >= 10) {
                    return;
                }
                DeviceInfoUtils.writeUUIDToFile(file, str);
            }
        }, 3000L);
    }
}
