package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class uP {
    private static String HiB = null;
    public static boolean Sj = false;
    public static boolean sP = false;
    private static int vS = Integer.MAX_VALUE;
    private static final CharSequence TKC = "amigo";
    private static final CharSequence EjP = "funtouch";
    private static final ConcurrentHashMap<String, String> Jcg = new ConcurrentHashMap<>();

    public static class Sj implements Callable<String> {
        private final String Sj;

        public Sj(String str) {
            this.Sj = str;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            String str = (String) uP.Jcg.get(this.Sj);
            if (str != null) {
                return str;
            }
            System.currentTimeMillis();
            String strTKC = uP.TKC(this.Sj);
            System.currentTimeMillis();
            if (strTKC != null) {
                uP.Jcg.put(this.Sj, strTKC);
            }
            return strTKC;
        }
    }

    public static boolean Dq() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(TKC);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static String EjP(String str) {
        String str2;
        String str3 = Jcg.get(str);
        if (str3 != null) {
            return str3;
        }
        try {
            if (TextUtils.isEmpty("")) {
                final com.bytedance.sdk.component.Dq.Jcg jcg = new com.bytedance.sdk.component.Dq.Jcg(new Sj(str), 5, 2);
                JcM.sP(new com.bytedance.sdk.component.Dq.Dq("_getSystemPropertyTask") { // from class: com.bytedance.sdk.openadsdk.utils.uP.1
                    @Override // java.lang.Runnable
                    public void run() {
                        jcg.run();
                    }
                });
                str2 = (String) jcg.get(1L, TimeUnit.SECONDS);
            } else {
                str2 = "";
            }
        } catch (Throwable unused) {
        }
        return str2 == null ? "" : str2;
    }

    public static boolean EjP() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String Fmk() {
        String strSef = sef();
        if (strSef == null || !strSef.toLowerCase().contains("emotionui")) {
            return "";
        }
        return strSef + "_" + Build.DISPLAY;
    }

    public static boolean HiB() {
        if (!sP) {
            try {
                Class.forName("miui.os.Build");
                Sj = true;
                sP = true;
                return true;
            } catch (Exception unused) {
                sP = true;
            }
        }
        return Sj;
    }

    public static boolean Jcg() {
        String strEjP = EjP("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(strEjP) && strEjP.toLowerCase().contains(EjP);
    }

    public static String RiZ() {
        if (!TzV()) {
            return "";
        }
        return "coloros_" + EjP(Mts.Jcg("ro.build.version.kllkrom")) + "_" + Build.DISPLAY;
    }

    public static String Sj() {
        if (!TextUtils.isEmpty(HiB)) {
            return HiB;
        }
        String strSj = com.bytedance.sdk.openadsdk.core.uA.Sj("sdk_local_rom_info", 604800000L);
        HiB = strSj;
        if (TextUtils.isEmpty(strSj)) {
            String strZR = zR();
            HiB = strZR;
            com.bytedance.sdk.openadsdk.core.uA.Sj("sdk_local_rom_info", strZR);
        }
        return HiB;
    }

    public static boolean Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            str = sef();
        }
        return (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || sU();
    }

    public static String TEQ() {
        if (!Ym()) {
            return "";
        }
        return "eui_" + EjP("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static String TKC() {
        return EjP("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String TKC(String str) {
        BufferedReader bufferedReader;
        Throwable th2;
        String line = "";
        Process process = null;
        try {
            try {
                try {
                    Process processExec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 1024);
                        try {
                            line = bufferedReader.readLine();
                            processExec.exitValue();
                            bufferedReader.close();
                        } catch (IllegalThreadStateException unused) {
                            process = processExec;
                            try {
                                process.destroy();
                            } catch (Throwable unused2) {
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return line;
                        } catch (Throwable th3) {
                            th2 = th3;
                            try {
                                com.bytedance.sdk.component.utils.sU.Sj("ToolUtils", "Unable to read sysprop ".concat(String.valueOf(str)), th2);
                                return line;
                            } finally {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e11) {
                                        com.bytedance.sdk.component.utils.sU.Sj("ToolUtils", "Exception while closing InputStream", e11);
                                    }
                                }
                            }
                        }
                    } catch (IllegalThreadStateException unused3) {
                        bufferedReader = null;
                    }
                } catch (IOException e12) {
                    com.bytedance.sdk.component.utils.sU.Sj("ToolUtils", "Exception while closing InputStream", e12);
                }
            } catch (Throwable th4) {
                bufferedReader = null;
                th2 = th4;
            }
        } catch (IllegalThreadStateException unused4) {
            bufferedReader = null;
        }
        return line;
    }

    public static boolean TzV() {
        if (vS == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String strJcg = Mts.Jcg("kllk");
            if (TextUtils.isEmpty(str) || !str.toLowerCase().contains(strJcg)) {
                vS = 0;
            } else {
                vS = 1;
            }
        }
        return vS == 1;
    }

    public static boolean Ym() {
        return !TextUtils.isEmpty(EjP("ro.letv.release.version"));
    }

    public static boolean Zq() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static String aa() {
        if (!HiB()) {
            return "";
        }
        return "miui_" + EjP("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static String dNu() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static boolean sP() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static boolean sU() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase().startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2) || !str2.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String sef() {
        return EjP("ro.build.version.emui");
    }

    public static String uA() {
        return Build.DISPLAY + "_" + EjP("ro.gn.sv.version");
    }

    public static String uvD() {
        if (Zq()) {
            try {
                return "smartisan_".concat(String.valueOf(EjP("ro.smartisan.version")));
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static String vS() {
        return EjP("ro.vivo.os.build.display.id") + "_" + EjP("ro.vivo.product.version");
    }

    private static String zR() {
        if (Zq()) {
            return uvD();
        }
        if (HiB()) {
            return aa();
        }
        if (sP()) {
            return dNu();
        }
        if (TzV()) {
            return RiZ();
        }
        String strFmk = Fmk();
        if (!TextUtils.isEmpty(strFmk)) {
            return strFmk;
        }
        if (Jcg()) {
            return vS();
        }
        if (Dq()) {
            return uA();
        }
        if (EjP()) {
            return TKC();
        }
        String strTEQ = TEQ();
        return !TextUtils.isEmpty(strTEQ) ? strTEQ : Build.DISPLAY;
    }
}
