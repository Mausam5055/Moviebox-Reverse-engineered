package com.blankj.utilcode.util;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
public abstract class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f20097a = {"huawei"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f20098b = {"vivo"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f20099c = {"xiaomi"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f20100d = {"oppo"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f20101e = {"leeco", "letv"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f20102f = {"360", "qiku"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f20103g = {"zte"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f20104h = {"oneplus"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String[] f20105i = {"nubia"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String[] f20106j = {"coolpad", "yulong"};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String[] f20107k = {"lg", "lge"};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String[] f20108l = {"google"};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f20109m = {"samsung"};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String[] f20110n = {"meizu"};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String[] f20111o = {"lenovo"};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String[] f20112p = {"smartisan", "deltainno"};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String[] f20113q = {"htc"};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String[] f20114r = {"sony"};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String[] f20115s = {"gionee", "amigo"};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String[] f20116t = {"motorola"};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static a f20117u = null;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f20118a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f20119b;

        public String toString() {
            return "RomInfo{name=" + this.f20118a + ", version=" + this.f20119b + "}";
        }
    }

    private static String a() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : TmcConstants.ROUTE_UNKNOWN;
        } catch (Throwable unused) {
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    private static String b() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : TmcConstants.ROUTE_UNKNOWN;
        } catch (Throwable unused) {
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    public static a c() {
        a aVar = f20117u;
        if (aVar != null) {
            return aVar;
        }
        f20117u = new a();
        String strA = a();
        String strB = b();
        String[] strArr = f20097a;
        if (i(strA, strB, strArr)) {
            f20117u.f20118a = strArr[0];
            String strD = d("ro.build.version.emui");
            String[] strArrSplit = strD.split("_");
            if (strArrSplit.length > 1) {
                f20117u.f20119b = strArrSplit[1];
            } else {
                f20117u.f20119b = strD;
            }
            return f20117u;
        }
        String[] strArr2 = f20098b;
        if (i(strA, strB, strArr2)) {
            f20117u.f20118a = strArr2[0];
            f20117u.f20119b = d("ro.vivo.os.build.display.id");
            return f20117u;
        }
        String[] strArr3 = f20099c;
        if (i(strA, strB, strArr3)) {
            f20117u.f20118a = strArr3[0];
            f20117u.f20119b = d("ro.build.version.incremental");
            return f20117u;
        }
        String[] strArr4 = f20100d;
        if (i(strA, strB, strArr4)) {
            f20117u.f20118a = strArr4[0];
            f20117u.f20119b = d("ro.build.version.opporom");
            return f20117u;
        }
        String[] strArr5 = f20101e;
        if (i(strA, strB, strArr5)) {
            f20117u.f20118a = strArr5[0];
            f20117u.f20119b = d("ro.letv.release.version");
            return f20117u;
        }
        String[] strArr6 = f20102f;
        if (i(strA, strB, strArr6)) {
            f20117u.f20118a = strArr6[0];
            f20117u.f20119b = d("ro.build.uiversion");
            return f20117u;
        }
        String[] strArr7 = f20103g;
        if (i(strA, strB, strArr7)) {
            f20117u.f20118a = strArr7[0];
            f20117u.f20119b = d("ro.build.MiFavor_version");
            return f20117u;
        }
        String[] strArr8 = f20104h;
        if (i(strA, strB, strArr8)) {
            f20117u.f20118a = strArr8[0];
            f20117u.f20119b = d("ro.rom.version");
            return f20117u;
        }
        String[] strArr9 = f20105i;
        if (i(strA, strB, strArr9)) {
            f20117u.f20118a = strArr9[0];
            f20117u.f20119b = d("ro.build.rom.id");
            return f20117u;
        }
        String[] strArr10 = f20106j;
        if (i(strA, strB, strArr10)) {
            f20117u.f20118a = strArr10[0];
        } else {
            String[] strArr11 = f20107k;
            if (i(strA, strB, strArr11)) {
                f20117u.f20118a = strArr11[0];
            } else {
                String[] strArr12 = f20108l;
                if (i(strA, strB, strArr12)) {
                    f20117u.f20118a = strArr12[0];
                } else {
                    String[] strArr13 = f20109m;
                    if (i(strA, strB, strArr13)) {
                        f20117u.f20118a = strArr13[0];
                    } else {
                        String[] strArr14 = f20110n;
                        if (i(strA, strB, strArr14)) {
                            f20117u.f20118a = strArr14[0];
                        } else {
                            String[] strArr15 = f20111o;
                            if (i(strA, strB, strArr15)) {
                                f20117u.f20118a = strArr15[0];
                            } else {
                                String[] strArr16 = f20112p;
                                if (i(strA, strB, strArr16)) {
                                    f20117u.f20118a = strArr16[0];
                                } else {
                                    String[] strArr17 = f20113q;
                                    if (i(strA, strB, strArr17)) {
                                        f20117u.f20118a = strArr17[0];
                                    } else {
                                        String[] strArr18 = f20114r;
                                        if (i(strA, strB, strArr18)) {
                                            f20117u.f20118a = strArr18[0];
                                        } else {
                                            String[] strArr19 = f20115s;
                                            if (i(strA, strB, strArr19)) {
                                                f20117u.f20118a = strArr19[0];
                                            } else {
                                                String[] strArr20 = f20116t;
                                                if (i(strA, strB, strArr20)) {
                                                    f20117u.f20118a = strArr20[0];
                                                } else {
                                                    f20117u.f20118a = strB;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f20117u.f20119b = d("");
        return f20117u;
    }

    private static String d(String str) {
        String strE = !TextUtils.isEmpty(str) ? e(str) : "";
        if (TextUtils.isEmpty(strE) || strE.equals(TmcConstants.ROUTE_UNKNOWN)) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    strE = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(strE) ? TmcConstants.ROUTE_UNKNOWN : strE;
    }

    private static String e(String str) throws Throwable {
        String strG = g(str);
        if (!TextUtils.isEmpty(strG)) {
            return strG;
        }
        String strH = h(str);
        return (TextUtils.isEmpty(strH) && Build.VERSION.SDK_INT < 28) ? f(str) : strH;
    }

    private static String f(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static String g(String str) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused) {
                        }
                        return line;
                    }
                    bufferedReader2.close();
                    return "";
                } catch (IOException unused2) {
                    bufferedReader = bufferedReader2;
                    if (bufferedReader == null) {
                        return "";
                    }
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused4) {
                return "";
            }
        } catch (IOException unused5) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static String h(String str) {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean i(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }

    public static boolean j() {
        return f20109m[0].equals(c().f20118a);
    }
}
