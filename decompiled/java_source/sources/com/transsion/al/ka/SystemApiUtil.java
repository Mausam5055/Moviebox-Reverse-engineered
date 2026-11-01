package com.transsion.al.ka;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class SystemApiUtil {
    private static final String GET_AUTO_METHOD = "get_auto_method";
    private static final String GET_LINK_METHOD = "get_Link_method";
    private static final String GET_TYPE = "get";
    private static final String KEY_EMUI_API_LEVEL = "ro.build.hw_emui_api_level";
    private static final String KEY_EMUI_CONFIG_HW_SYS_VERSION = "ro.confg.hw_systemversion";
    private static final String KEY_EMUI_VERSION = "ro.build.version.emui";
    private static final String KEY_MIUI_INTERNAL_STORAGE = "ro.miui.internal.storage";
    private static final String KEY_MIUI_VERSION_CODE = "ro.miui.ui.version.code";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    private static final String SET_AUTO_METHOD = "set_auto_method";
    private static final String SET_LINK_METHOD = "set_Link_method";
    private static final String SET_TYPE = "set";
    private static final String SP_AUTO_START = "auto_start";
    private static final String SP_LINK_START = "link_start";
    public static final String SYS_EMUI = "sys_emui";
    public static final String SYS_FLYME = "sys_flyme";
    public static final String SYS_MIUI = "sys_miui";
    private static String sysName;

    public static List<String> getAutoStartList(ActivityManager activityManager) {
        List<String> list = null;
        try {
            list = (List) activityManager.getClass().getMethod("getAutoStartList", null).invoke(activityManager, null);
        } catch (Throwable unused) {
        }
        return list == null ? new ArrayList() : list;
    }

    public static List<String> getForbiddenAutoRunPackages(Context context) {
        ArrayList arrayList = new ArrayList();
        Method forceStopMethod = getForceStopMethod(context, GET_AUTO_METHOD, GET_TYPE);
        if (forceStopMethod != null) {
            try {
                return (ArrayList) forceStopMethod.invoke((ActivityManager) context.getSystemService("activity"), null);
            } catch (Throwable unused) {
                return arrayList;
            }
        }
        Map<String, ?> all = context.getSharedPreferences(SP_AUTO_START, 0).getAll();
        if (all == null || all.isEmpty()) {
            return arrayList;
        }
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            if (entry != null && ((Boolean) entry.getValue()).booleanValue()) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    public static List<String> getForbiddenLinkRunPackages(Context context) {
        ArrayList arrayList = new ArrayList();
        Method forceStopMethod = getForceStopMethod(context, GET_LINK_METHOD, GET_TYPE);
        if (forceStopMethod != null) {
            try {
                return (ArrayList) forceStopMethod.invoke((ActivityManager) context.getSystemService("activity"), null);
            } catch (Throwable unused) {
                return arrayList;
            }
        }
        Map<String, ?> all = context.getSharedPreferences(SP_LINK_START, 0).getAll();
        if (all == null || all.isEmpty()) {
            return arrayList;
        }
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            if (entry != null && ((Boolean) entry.getValue()).booleanValue()) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static Method getForceStopMethod(Context context, String str, String str2) {
        byte b11;
        String str3;
        synchronized (SystemApiUtil.class) {
            try {
                try {
                    ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                    if (activityManager == null) {
                        return null;
                    }
                    switch (str.hashCode()) {
                        case -584672760:
                            if (!str.equals(GET_AUTO_METHOD)) {
                                b11 = -1;
                            } else {
                                b11 = 1;
                            }
                            break;
                        case 326079764:
                            if (!str.equals(SET_AUTO_METHOD)) {
                                b11 = -1;
                            } else {
                                b11 = 0;
                            }
                            break;
                        case 433280317:
                            if (!str.equals(GET_LINK_METHOD)) {
                                b11 = -1;
                            } else {
                                b11 = 3;
                            }
                            break;
                        case 1344032841:
                            if (!str.equals(SET_LINK_METHOD)) {
                                b11 = -1;
                            } else {
                                b11 = 2;
                            }
                            break;
                        default:
                            b11 = -1;
                            break;
                    }
                    if (b11 == 0) {
                        str3 = "setForbiddenAutoRunPackages";
                    } else if (b11 == 1) {
                        str3 = "getForbiddenAutoRunPackages";
                    } else if (b11 != 2) {
                        str3 = b11 != 3 ? null : "getForbiddenLinkRunPackages";
                    } else {
                        str3 = "setForbiddenLinkRunPackages";
                    }
                    if (str3 != null) {
                        if (SET_TYPE.equals(str2)) {
                            return activityManager.getClass().getMethod(str3, String.class, Boolean.TYPE);
                        }
                        return activityManager.getClass().getMethod(str3, null);
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static String getMeizuFlymeOSFlag() {
        return getSystemProperty("ro.build.display.id", "");
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0036  */
    /* JADX WARN: Code duplicated, block: B:17:0x003c  */
    /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
    public static String getMiuiVersionName() {
        String property;
        FileInputStream fileInputStream;
        Properties properties = new Properties();
        try {
            if (Build.VERSION.SDK_INT < 26) {
                try {
                    fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                    try {
                        properties.load(fileInputStream);
                        fileInputStream.close();
                    } catch (Throwable unused) {
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        property = properties.getProperty(KEY_MIUI_VERSION_NAME, null);
                        if (property == null) {
                            property = getSystemProperty(KEY_MIUI_VERSION_NAME, null);
                        }
                        if (property != null) {
                            return property.toLowerCase();
                        }
                        return property;
                    }
                } catch (Throwable unused2) {
                    fileInputStream = null;
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        property = properties.getProperty(KEY_MIUI_VERSION_NAME, null);
        if (property == null) {
            property = getSystemProperty(KEY_MIUI_VERSION_NAME, null);
        }
        if (property != null) {
            return property.toLowerCase();
        }
        return property;
    }

    public static String getSystem() {
        String str = sysName;
        if (str != null) {
            return str;
        }
        FileInputStream fileInputStream = null;
        try {
            if (!"".equals(getSystemProperty(KEY_MIUI_VERSION_NAME, ""))) {
                return SYS_MIUI;
            }
            Properties properties = new Properties();
            FileInputStream fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            try {
                properties.load(fileInputStream2);
                if (properties.getProperty(KEY_MIUI_VERSION_CODE, null) != null || properties.getProperty(KEY_MIUI_VERSION_NAME, null) != null || properties.getProperty(KEY_MIUI_INTERNAL_STORAGE, null) != null) {
                    sysName = SYS_MIUI;
                } else if (properties.getProperty(KEY_EMUI_API_LEVEL, null) != null || properties.getProperty(KEY_EMUI_VERSION, null) != null || properties.getProperty(KEY_EMUI_CONFIG_HW_SYS_VERSION, null) != null) {
                    sysName = SYS_EMUI;
                } else if (getMeizuFlymeOSFlag() != null && getMeizuFlymeOSFlag().toLowerCase() != null && getMeizuFlymeOSFlag().toLowerCase().contains("flyme")) {
                    sysName = SYS_FLYME;
                }
                try {
                    fileInputStream2.close();
                } catch (Throwable unused) {
                }
                return sysName;
            } catch (Throwable unused2) {
                fileInputStream = fileInputStream2;
            }
        } catch (Throwable unused3) {
        }
        try {
            return sysName;
        } finally {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused4) {
                }
            }
        }
    }

    private static String getSystemProperty(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod(GET_TYPE, String.class, String.class).invoke(cls, str, str2);
        } catch (Throwable th2) {
            c.c(KaManager.TAG, th2, "");
            return str2;
        }
    }

    public static boolean isItel() {
        return "itel".equalsIgnoreCase(Build.MANUFACTURER) || "itel".equalsIgnoreCase(getSystemProperty("ro.tranos.type", ""));
    }

    public static List<String> resetAutoStartList(ActivityManager activityManager) {
        List<String> list = null;
        try {
            list = (List) activityManager.getClass().getMethod("resetAutoStartList", null).invoke(activityManager, null);
        } catch (Throwable unused) {
        }
        return list == null ? new ArrayList() : list;
    }

    public static boolean setAutoStartEnable(ActivityManager activityManager, String str, boolean z10) {
        try {
            activityManager.getClass().getMethod("setAutoStartEnable", String.class, Boolean.TYPE).invoke(activityManager, str, Boolean.valueOf(z10));
            c.a(KaManager.TAG, "hook setAutoStartEnable live success");
            return true;
        } catch (Throwable th2) {
            c.c(KaManager.TAG, th2, "setAutoStartEnable");
            return false;
        }
    }

    public static boolean setCleanProtect(ActivityManager activityManager, String str, boolean z10) {
        try {
            activityManager.getClass().getMethod("setCleanProtect", String.class, Boolean.TYPE).invoke(activityManager, str, Boolean.valueOf(z10));
            c.a(KaManager.TAG, "hook setCleanProtect live success");
            return true;
        } catch (Throwable th2) {
            c.c(KaManager.TAG, th2, "setCleanProtect");
            return false;
        }
    }

    public static void setForbiddenAutoRunPackages(Context context, String str, boolean z10) {
        Method forceStopMethod = getForceStopMethod(context, SET_AUTO_METHOD, SET_TYPE);
        if (forceStopMethod == null) {
            context.getSharedPreferences(SP_AUTO_START, 0).edit().putBoolean(str, z10).apply();
            return;
        }
        try {
            forceStopMethod.invoke((ActivityManager) context.getSystemService("activity"), str, Boolean.valueOf(z10));
            c.a(KaManager.TAG, "hook setForbiddenAutoRunPackages live success");
        } catch (Throwable th2) {
            c.c(KaManager.TAG, th2, "setForbiddenAutoRunPackages");
        }
    }

    public static void setForbiddenLinkRunPackages(Context context, String str, boolean z10) {
        Method forceStopMethod = getForceStopMethod(context, SET_LINK_METHOD, SET_TYPE);
        if (forceStopMethod == null) {
            context.getSharedPreferences(SP_LINK_START, 0).edit().putBoolean(str, z10).apply();
            return;
        }
        try {
            forceStopMethod.invoke((ActivityManager) context.getSystemService("activity"), str, Boolean.valueOf(z10));
        } catch (Throwable th2) {
            c.c(KaManager.TAG, th2, "setForbiddenLinkRunPackages");
        }
    }
}
