package com.apm.insight.l;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStreamReader;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final CharSequence f19685a = "amigo";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final CharSequence f19686b = "funtouch";

    public static String a() {
        String str;
        String str2 = "";
        if (d.b()) {
            if (!d.b()) {
                return "";
            }
            return "miui_" + a("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
        }
        if (d.c()) {
            String str3 = Build.DISPLAY;
            return (str3 == null || !str3.toLowerCase(Locale.getDefault()).contains("flyme")) ? "" : str3;
        }
        if (b()) {
            if (!b()) {
                return "";
            }
            return "coloros_" + a("ro.build.version.opporom") + "_" + Build.DISPLAY;
        }
        String strA = d.a();
        if (strA == null || !strA.toLowerCase(Locale.getDefault()).contains("emotionui")) {
            str = "";
        } else {
            str = strA + "_" + Build.DISPLAY;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strA2 = a("ro.vivo.os.build.display.id");
        if (!TextUtils.isEmpty(strA2) && strA2.toLowerCase(Locale.getDefault()).contains(f19686b)) {
            return a("ro.vivo.os.build.display.id") + "_" + a("ro.vivo.product.version");
        }
        String str4 = Build.DISPLAY;
        if (!TextUtils.isEmpty(str4) && str4.toLowerCase(Locale.getDefault()).contains(f19685a)) {
            return str4 + "_" + a("ro.gn.sv.version");
        }
        String str5 = Build.MANUFACTURER + Build.BRAND;
        if (!TextUtils.isEmpty(str5)) {
            String lowerCase = str5.toLowerCase(Locale.getDefault());
            if (lowerCase.contains("360") || lowerCase.contains("qiku")) {
                return a("ro.build.uiversion") + "_" + str4;
            }
        }
        if (!TextUtils.isEmpty(a("ro.letv.release.version"))) {
            str2 = "eui_" + a("ro.letv.release.version") + "_" + str4;
        }
        return !TextUtils.isEmpty(str2) ? str2 : str4;
    }

    private static String a(String str) {
        BufferedReader bufferedReader;
        String line = "";
        try {
            Process processExec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
            bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 1024);
            try {
                line = bufferedReader.readLine();
                processExec.destroy();
                com.apm.insight.a.a((Closeable) bufferedReader);
                return line;
            } catch (Throwable unused) {
                com.apm.insight.a.a((Closeable) bufferedReader);
                return line;
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
    }

    private static boolean b() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase(Locale.getDefault()).contains("oppo");
    }
}
