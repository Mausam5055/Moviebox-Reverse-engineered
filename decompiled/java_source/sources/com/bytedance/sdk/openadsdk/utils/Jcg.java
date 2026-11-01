package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.compose.animation.core.j0;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg {
    private static final AtomicReference<Boolean> Sj = new AtomicReference<>(null);
    private static final AtomicReference<String> sP = new AtomicReference<>(null);

    private static boolean Dq() {
        try {
            return ((Integer) Class.forName("android.os.SystemProperties").getMethod("getInt", String.class, Integer.TYPE).invoke(null, "persist.sys.muiltdisplay_type", 0)).intValue() == 2;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("BED", "isXiaomiFold return false " + th2.getMessage());
            return false;
        }
    }

    private static boolean Dq(Context context) {
        try {
            Class.forName("com.unity3d.player.UnityPlayerActivity");
            return true;
        } catch (ClassNotFoundException unused) {
            if (context == null) {
                return false;
            }
            try {
                return new File(context.getApplicationInfo().nativeLibraryDir + "/libunity.so").exists();
            } catch (Throwable unused2) {
                return false;
            }
        }
    }

    public static int EjP(Context context) {
        try {
            Class.forName("com.google.android.play.core.splitinstall.SplitInstallManager");
            return 1;
        } catch (ClassNotFoundException unused) {
            return 0;
        }
    }

    private static boolean EjP() {
        if (Ym()) {
            return true;
        }
        String[] strArr = {"sm-f9000", "sm-f9160", "sm-f9260", "sm-f9360", "sm-f9460", "sm-f9560", "sm-f7000", "sm-f7070", "sm-f7110", "sm-f7210", "sm-f7310", "sm-f7410"};
        String[] strArr2 = {"winner", "f2q", "q2q", "q4q", "q5q", "q6q", "bloomq", "bloomxq", "b2q", "b4q", "b5q", "b6q"};
        try {
            String lowerCase = Build.DEVICE.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                for (int i11 = 0; i11 < 12; i11++) {
                    if (lowerCase.contains(strArr2[i11])) {
                        return true;
                    }
                }
            }
            String lowerCase2 = Build.MODEL.toLowerCase();
            if (TextUtils.isEmpty(lowerCase2)) {
                return false;
            }
            for (int i12 = 0; i12 < 12; i12++) {
                if (lowerCase2.contains(strArr[i12])) {
                    return true;
                }
            }
            if (sP()) {
                String strSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("fold_config", "fold_samung", "");
                if (TextUtils.isEmpty(strSj)) {
                    return false;
                }
                for (String str : strSj.split(",")) {
                    if (lowerCase2.contains(str)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String HiB(Context context) {
        try {
            AtomicReference<String> atomicReference = sP;
            String str = atomicReference.get();
            if (str != null) {
                return str;
            }
            PackageInfo packageInfoVS = vS(context);
            String str2 = packageInfoVS != null ? packageInfoVS.versionName : "";
            j0.a(atomicReference, null, str2);
            return str2;
        } catch (Throwable unused) {
            j0.a(sP, null, "");
            return "";
        }
    }

    private static boolean HiB() {
        if (Dq()) {
            return true;
        }
        String[] strArr = {"M2011J18C", "22061218C", "2308CPXD0C", "24072PX77C", "2405CPX3DC", "2405CPX3DG"};
        try {
            String lowerCase = Build.MODEL.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                for (int i11 = 0; i11 < 6; i11++) {
                    if (lowerCase.contains(strArr[i11])) {
                        return true;
                    }
                }
                if (sP()) {
                    String strTKC = TKC();
                    if (TextUtils.isEmpty(strTKC)) {
                        return false;
                    }
                    for (String str : strTKC.split(",")) {
                        if (lowerCase.contains(str)) {
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean Jcg() {
        try {
            return "foldable".equals(Class.forName("android.util.FtDeviceInfo").getMethod("getDeviceType", null).invoke(null, null));
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("BED", "isVIVOFoldDevice return false " + th2.getMessage());
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0075  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean Jcg(Context context) {
        boolean zUA;
        boolean z10;
        byte b11;
        try {
            AtomicReference<Boolean> atomicReference = Sj;
            Boolean bool = atomicReference.get();
            if (bool != null) {
                return bool.booleanValue();
            }
            String lowerCase = Build.BRAND;
            if (!TextUtils.isEmpty(lowerCase)) {
                lowerCase = lowerCase.toLowerCase();
            }
            String lowerCase2 = Build.MANUFACTURER;
            if (!TextUtils.isEmpty(lowerCase2)) {
                lowerCase2 = lowerCase2.toLowerCase();
            }
            if (TextUtils.isEmpty(lowerCase) && TextUtils.isEmpty(lowerCase2)) {
                j0.a(atomicReference, null, Boolean.FALSE);
                return false;
            }
            byte b12 = -1;
            if (TextUtils.isEmpty(lowerCase)) {
                zUA = false;
                z10 = false;
            } else {
                switch (lowerCase.hashCode()) {
                    case -759499589:
                        if (!lowerCase.equals("xiaomi")) {
                            b11 = -1;
                        } else {
                            b11 = 2;
                        }
                        break;
                    case 3418016:
                        if (!lowerCase.equals("oppo")) {
                            b11 = -1;
                        } else {
                            b11 = 0;
                        }
                        break;
                    case 3620012:
                        if (!lowerCase.equals("vivo")) {
                            b11 = -1;
                        } else {
                            b11 = 1;
                        }
                        break;
                    case 1864941562:
                        if (!lowerCase.equals("samsung")) {
                            b11 = -1;
                        } else {
                            b11 = 3;
                        }
                        break;
                    default:
                        b11 = -1;
                        break;
                }
                if (b11 == 0) {
                    zUA = uA();
                } else if (b11 == 1) {
                    zUA = vS();
                } else if (b11 == 2) {
                    zUA = HiB();
                } else if (b11 != 3) {
                    zUA = false;
                    z10 = true;
                } else {
                    zUA = EjP();
                }
                z10 = false;
            }
            if (z10 && !TextUtils.isEmpty(lowerCase2)) {
                switch (lowerCase2.hashCode()) {
                    case -759499589:
                        if (lowerCase2.equals("xiaomi")) {
                            b12 = 2;
                        }
                        break;
                    case 3418016:
                        if (lowerCase2.equals("oppo")) {
                            b12 = 0;
                        }
                        break;
                    case 3620012:
                        if (lowerCase2.equals("vivo")) {
                            b12 = 1;
                        }
                        break;
                    case 1864941562:
                        if (lowerCase2.equals("samsung")) {
                            b12 = 3;
                        }
                        break;
                }
                if (b12 == 0) {
                    zUA = uA();
                } else if (b12 == 1) {
                    zUA = vS();
                } else if (b12 != 2) {
                    zUA = b12 != 3 ? false : EjP();
                } else {
                    zUA = HiB();
                }
            }
            j0.a(atomicReference, null, Boolean.valueOf(zUA));
            return zUA;
        } catch (Throwable unused) {
            j0.a(Sj, null, Boolean.FALSE);
            return false;
        }
    }

    public static String Sj() {
        try {
            return Build.SUPPORTED_ABIS[0];
        } catch (Exception unused) {
            return "";
        }
    }

    public static void Sj(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (sP()) {
                com.bytedance.sdk.openadsdk.core.TKC tkcSj = com.bytedance.sdk.openadsdk.core.TKC.Sj(context);
                tkcSj.Sj("w_ver", HiB(context));
                tkcSj.Sj("bp", sP(context));
                tkcSj.Sj("is_fold", Jcg(context) ? 1 : 0);
                tkcSj.Sj("abi", Sj());
                tkcSj.Sj("t_ver", TKC(context));
                tkcSj.Sj(CampaignEx.JSON_KEY_AAB, EjP(context));
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(JSONObject jSONObject, Context context) {
        if (context == null) {
            return;
        }
        try {
            if (sP()) {
                com.bytedance.sdk.openadsdk.core.TKC tkcSj = com.bytedance.sdk.openadsdk.core.TKC.Sj(context);
                String strSP = tkcSj.sP("md", com.bytedance.sdk.openadsdk.core.uA.sP().Jcg());
                if (!TextUtils.isEmpty(strSP)) {
                    jSONObject.put("md", strSP);
                }
                int iSP = tkcSj.sP("bp", sP(context));
                if (iSP != 4) {
                    jSONObject.put("bp", iSP);
                }
                String strSP2 = tkcSj.sP("t_ver", TKC(context));
                if (!TextUtils.isEmpty(strSP2)) {
                    jSONObject.put("t_ver", strSP2);
                }
                jSONObject.put("is_fold", tkcSj.sP("is_fold", Jcg(context) ? 1 : 0));
                jSONObject.put(CampaignEx.JSON_KEY_AAB, tkcSj.sP(CampaignEx.JSON_KEY_AAB, EjP(context)));
                String strSP3 = tkcSj.sP("w_ver", HiB(context));
                if (!TextUtils.isEmpty(strSP3)) {
                    jSONObject.put("w_ver", strSP3);
                }
                String strSP4 = tkcSj.sP("abi", Sj());
                if (TextUtils.isEmpty(strSP4)) {
                    return;
                }
                jSONObject.put("abi", strSP4);
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean TEQ() {
        try {
            Class<?> cls = Class.forName("com.oplus.content.OplusFeatureConfigManager");
            Object objInvoke = cls.getDeclaredMethod("hasFeature", String.class).invoke(cls.getMethod("getInstance", null).invoke(null, null), "oplus.hardware.type.fold");
            if (objInvoke instanceof Boolean) {
                return ((Boolean) objInvoke).booleanValue();
            }
            return false;
        } catch (ClassNotFoundException e11) {
            e = e11;
            com.bytedance.sdk.component.utils.sU.sP("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (IllegalAccessException e12) {
            e = e12;
            com.bytedance.sdk.component.utils.sU.sP("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (NoSuchMethodException e13) {
            e = e13;
            com.bytedance.sdk.component.utils.sU.sP("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (InvocationTargetException e14) {
            e = e14;
            com.bytedance.sdk.component.utils.sU.sP("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean TEQ(Context context) {
        try {
            Class.forName("com.facebook.react.ReactActivity");
            return true;
        } catch (ClassNotFoundException unused) {
            if (context == null) {
                return false;
            }
            try {
                return new File(context.getApplicationInfo().nativeLibraryDir + "/libreactnativejni.so").exists();
            } catch (Throwable unused2) {
                return false;
            }
        }
    }

    public static String TKC() {
        return com.bytedance.sdk.openadsdk.dx.Sj.Sj("fold_config", "fold_default", "");
    }

    public static String TKC(Context context) {
        try {
            return String.valueOf(context.getApplicationInfo().targetSdkVersion);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static PackageInfo Ym(Context context) {
        try {
            String str = Build.VERSION.SDK_INT <= 23 ? (String) Class.forName("android.webkit.WebViewFactory").getMethod("getWebViewPackageName", null).invoke(null, null) : (String) Class.forName("android.webkit.WebViewUpdateService").getMethod("getCurrentWebViewPackageName", null).invoke(null, null);
            if (str == null) {
                return null;
            }
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean Ym() {
        try {
            Class<?> cls = Class.forName("com.samsung.android.feature.SemFloatingFeature");
            Object objInvoke = cls.getMethod("getInstance", null).invoke(null, null);
            Method declaredMethod = cls.getDeclaredMethod("getString", String.class);
            return "TRUE".equalsIgnoreCase((String) declaredMethod.invoke(objInvoke, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD")) || "TRUE".equalsIgnoreCase((String) declaredMethod.invoke(objInvoke, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"));
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e11) {
            com.bytedance.sdk.component.utils.sU.sP("PAG_BANNER", "get ss fold device error: " + e11.getMessage());
            return false;
        }
    }

    public static int sP(Context context) {
        if (Dq(context)) {
            return 1;
        }
        if (uA(context)) {
            return 2;
        }
        return TEQ(context) ? 3 : 4;
    }

    public static boolean sP() {
        return com.bytedance.sdk.openadsdk.dx.Sj.Sj("fold_config", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, 0) == 1;
    }

    private static boolean uA() {
        if (TEQ()) {
            return true;
        }
        String[] strArr = {"CPH2439", "CPH2437", "CPH2499", "CPH2519", "PEUM00", "PGU110", "PGT110", "PHN110", "PHT110"};
        try {
            String lowerCase = Build.MODEL.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                for (int i11 = 0; i11 < 9; i11++) {
                    if (lowerCase.contains(strArr[i11].toLowerCase())) {
                        return true;
                    }
                }
                if (sP()) {
                    String strTKC = TKC();
                    if (TextUtils.isEmpty(strTKC)) {
                        return false;
                    }
                    for (String str : strTKC.split(",")) {
                        if (lowerCase.contains(str.toLowerCase())) {
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean uA(Context context) {
        try {
            Class.forName("io.flutter.embedding.android.FlutterActivity");
            return true;
        } catch (ClassNotFoundException unused) {
            if (context == null) {
                return false;
            }
            try {
                return new File(context.getApplicationInfo().nativeLibraryDir + "/libflutter.so").exists();
            } catch (Throwable unused2) {
                return false;
            }
        }
    }

    public static PackageInfo vS(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                return WebView.getCurrentWebViewPackage();
            }
            PackageInfo packageInfo = (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", null).invoke(null, null);
            return packageInfo != null ? packageInfo : Ym(context);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private static boolean vS() {
        if (Jcg()) {
            return true;
        }
        String[] strArr = {"V2330", "V2178A", "V2229A", "V2303A", "V2337A", "V2256A", "V2266A"};
        try {
            String lowerCase = Build.MODEL.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                for (int i11 = 0; i11 < 7; i11++) {
                    if (lowerCase.contains(strArr[i11].toLowerCase())) {
                        return true;
                    }
                }
                if (sP()) {
                    String strTKC = TKC();
                    if (TextUtils.isEmpty(strTKC)) {
                        return false;
                    }
                    for (String str : strTKC.split(",")) {
                        if (lowerCase.contains(str.toLowerCase())) {
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
