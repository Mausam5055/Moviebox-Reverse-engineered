package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class Mts {
    private static final byte[] Fmk;
    public static Integer Sj;
    private static final HashSet<String> Ym;
    private static String Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private static final byte[] f21125aa;
    private static String sef;
    private static final ExecutorService sP = Executors.newSingleThreadExecutor();
    private static volatile boolean TKC = false;
    private static final AtomicInteger EjP = new AtomicInteger(0);
    private static volatile String HiB = "";
    private static final ReentrantLock vS = new ReentrantLock();
    private static String Jcg = null;
    private static String Dq = null;
    private static String uA = null;
    private static final HashSet<String> TEQ = new HashSet<>(Arrays.asList("Asia/Shanghai", "Asia/Urumqi", "Asia/Chongqing", "Asia/Harbin", "Asia/Kashgar"));

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.utils.Mts$1, reason: invalid class name */
    static class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(Mts.HiB)) {
                    com.bytedance.sdk.component.uA.vS vSVar = new com.bytedance.sdk.component.uA.vS(com.bytedance.sdk.openadsdk.core.dNu.Sj());
                    vSVar.setWebViewClient(new com.bytedance.sdk.component.uA.vS.Sj());
                    String unused = Mts.HiB = vSVar.getUserAgentString();
                }
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "", e11);
            } catch (NoClassDefFoundError e12) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "", e12);
            }
        }
    }

    public static class Sj implements Callable<String> {
        private final int Sj;

        Sj(int i11) {
            this.Sj = i11;
        }

        private synchronized String TKC() {
            final String[] strArr;
            strArr = new String[]{"unKnow"};
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.Mts.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = Mts.LqL();
                    String str = strArr[0];
                    countDownLatch.countDown();
                }
            });
            try {
                countDownLatch.await(2L, TimeUnit.SECONDS);
            } catch (InterruptedException e11) {
                com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", e11.getMessage());
            }
            return strArr[0];
        }

        private String sP() {
            String property;
            Throwable th2;
            try {
                property = System.getProperty("http.agent");
                if (property != null) {
                    try {
                        if (!"unKnow".equals(property)) {
                            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_ua_data", "android_system_ua", property);
                            } else {
                                com.bytedance.sdk.openadsdk.core.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()).Sj("android_system_ua", property);
                            }
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        com.bytedance.sdk.component.utils.sU.sP("getUA", "e:" + th2.getMessage());
                    }
                }
            } catch (Throwable th4) {
                property = "unKnow";
                th2 = th4;
            }
            return property;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public synchronized String call() throws Exception {
            String strSP;
            try {
                strSP = "unKnow";
                int i11 = this.Sj;
                if (i11 == 1) {
                    strSP = TKC();
                } else if (i11 == 2) {
                    strSP = sP();
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return strSP;
        }
    }

    public static class sP {
        public final ComponentName Sj;
        public final int sP;

        public sP(ComponentName componentName, int i11) {
            this.Sj = componentName;
            this.sP = i11;
        }
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        Ym = hashSet;
        hashSet.addAll(Arrays.asList("America/Eirunepe", "America/Rio_Branco", "America/Boa_Vista", "America/Campo_Grande", "America/Cuiaba", "America/Manaus", "America/Porto_Velho", "America/Araguaina", "America/Bahia", "America/Belem", "America/Fortaleza", "America/Maceio", "America/Recife", "America/Santarem", "America/Sao_Paulo", "America/Noronha"));
        Sj = null;
        f21125aa = new byte[]{108, 111, 97, 100, 105, 110, 103};
        Fmk = new byte[]{97, 114, 98, 105, 116, 114, 97, 103, 101};
    }

    public static String Dq() {
        try {
            ActivityManager activityManager = (ActivityManager) com.bytedance.sdk.openadsdk.core.dNu.Sj().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            long j11 = memoryInfo.totalMem;
            if (j11 > 0) {
                return String.valueOf(j11 / 1024);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void Dq(final String str) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("reportMultiLog", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.utils.Mts.2
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                if (Mts.TKC || !com.bytedance.sdk.openadsdk.core.dNu.EjP().qRN()) {
                    return null;
                }
                boolean unused = Mts.TKC = true;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("error", str);
                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("reportMultiLog").sP(jSONObject.toString());
            }
        });
    }

    public static boolean Dq(int i11) {
        if (i11 <= 0) {
            return false;
        }
        return i11 >= 100 || new Random(System.currentTimeMillis()).nextInt(100) + 1 <= i11;
    }

    public static boolean Dq(Context context) {
        return false;
    }

    public static long EjP(Context context) {
        return com.bytedance.sdk.openadsdk.core.TKC.Sj(context).sP("free_internal_storage", 0L).longValue();
    }

    public static String EjP() {
        return ib.Sj();
    }

    public static String EjP(String str) {
        return Sj(str, false, false);
    }

    public static boolean EjP(int i11) {
        return i11 == 4;
    }

    public static boolean EjP(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        return sUVar != null && sUVar.sdp() == 3 && sUVar.IOh() && (sUVar.pfr() == 4 || sUVar.pfr() == 5);
    }

    public static String Fmk() {
        String strYf = com.bytedance.sdk.openadsdk.core.dNu.EjP().Yf();
        return TextUtils.isEmpty(strYf) ? sU.Sj() : strYf;
    }

    public static void Fmk(Context context) {
        try {
            AtomicInteger atomicInteger = EjP;
            if (atomicInteger.get() != 0) {
                return;
            }
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            boolean zIsEnabled = accessibilityManager.isEnabled();
            boolean zIsTouchExplorationEnabled = accessibilityManager.isTouchExplorationEnabled();
            if (!zIsEnabled || !zIsTouchExplorationEnabled) {
                atomicInteger.set(2);
            } else {
                atomicInteger.set(1);
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj().TKC();
            }
        } catch (Exception unused) {
            EjP.set(2);
        }
    }

    public static long HiB(Context context) {
        return com.bytedance.sdk.openadsdk.core.TKC.Sj(context).sP("total_sdcard_storage", 0L).longValue();
    }

    public static synchronized String HiB() {
        Context contextSj;
        try {
            if (TextUtils.isEmpty(Jcg) && (contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj()) != null) {
                try {
                    Jcg = contextSj.getPackageName();
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "ToolUtils getPackageName throws exception :", th2);
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return Jcg;
    }

    public static String HiB(String str) {
        if (TextUtils.isEmpty(str)) {
            str = com.bytedance.sdk.openadsdk.core.dNu.EjP().fF();
        }
        if (TextUtils.isEmpty(str)) {
            return "https://api16-access-ttp.tiktokpangle.us/service/2/app_log/";
        }
        return !str.startsWith("http") ? "https://".concat(str) : str;
    }

    public static boolean HiB(int i11) {
        return i11 == 5;
    }

    public static int Jcg(int i11) {
        if (i11 == 1) {
            return 0;
        }
        if (i11 == 4) {
            return 1;
        }
        if (i11 == 5) {
            return 4;
        }
        if (i11 != 6) {
            return i11;
        }
        return 5;
    }

    public static synchronized String Jcg() {
        try {
            if (TextUtils.isEmpty(uA) && com.bytedance.sdk.openadsdk.core.dNu.Sj() != null) {
                try {
                    PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.dNu.Sj().getPackageManager().getPackageInfo(HiB(), 0);
                    Dq = String.valueOf(packageInfo.versionCode);
                    uA = packageInfo.versionName;
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "ToolUtils getVersionName throws exception :", th2);
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return uA;
    }

    public static String Jcg(@NonNull Context context) {
        try {
            return (Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : Locale.getDefault()).getLanguage();
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", e11.toString());
            return "";
        }
    }

    public static String Jcg(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("KLLK")) {
            return str.replace("KLLK", "OPPO");
        }
        return str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    private static int LD() {
        int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("webview_ua_update_time", 10);
        if (iSj <= 0) {
            return 10;
        }
        return iSj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String LqL() {
        try {
            WebView webView = new WebView(com.bytedance.sdk.openadsdk.core.dNu.Sj());
            webView.setWebViewClient(new com.bytedance.sdk.component.uA.vS.Sj());
            String userAgentString = webView.getSettings().getUserAgentString();
            if (userAgentString != null && !"unKnow".equals(userAgentString)) {
                if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                    com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_ua_data", "webview_ua", userAgentString);
                } else {
                    com.bytedance.sdk.openadsdk.core.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()).Sj("webview_ua", userAgentString);
                }
            }
            return userAgentString;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("getUA", "e:" + th2.getMessage());
            return "unKnow";
        }
    }

    public static int RiZ() {
        try {
            String id2 = TimeZone.getDefault().getID();
            if (TEQ.contains(id2)) {
                return 2;
            }
            if (id2 != null && id2.startsWith("Asia/")) {
                return 2;
            }
            if (id2 == null || !id2.startsWith("Europe/")) {
                return (id2 == null || !id2.startsWith("America/") || Ym.contains(id2)) ? 3 : 5;
            }
            return 4;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", th2.toString());
            return 0;
        }
    }

    public static int Sj(WebView webView) {
        if (webView == null) {
            return -1;
        }
        try {
            WebBackForwardList webBackForwardListCopyBackForwardList = webView.copyBackForwardList();
            int size = webBackForwardListCopyBackForwardList.getSize();
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < size; i11++) {
                WebHistoryItem itemAtIndex = webBackForwardListCopyBackForwardList.getItemAtIndex(i11);
                if (itemAtIndex != null) {
                    String url = itemAtIndex.getUrl();
                    if (!arrayList.contains(url)) {
                        arrayList.add(url);
                    }
                }
            }
            return arrayList.indexOf(webView.getUrl()) + 1;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", th2.toString());
            return -1;
        }
    }

    public static int Sj(String str) {
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return 2;
            case "rewarded_video":
                return 7;
            case "open_ad":
            case "cache_splash_ad":
                return 4;
            case "fullscreen_interstitial_ad":
                return 5;
            case "interaction":
                return 3;
            default:
                return 1;
        }
    }

    public static Intent Sj(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (!launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(ASTNode.DEOP);
        return launchIntentForPackage;
    }

    public static com.bytedance.sdk.openadsdk.common.EjP Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, com.bytedance.sdk.component.uA.vS vSVar, Context context, String str) {
        int iPfr = sUVar.pfr();
        if (!sUVar.IOh() || (iPfr != 1 && iPfr != 3)) {
            return null;
        }
        vSVar.Sj(true, (View) new com.bytedance.sdk.openadsdk.common.TKC(context));
        return new com.bytedance.sdk.openadsdk.common.EjP(sUVar, vSVar, str, false);
    }

    @NonNull
    public static sP Sj(Context context, Intent intent) {
        return new sP(null, 0);
    }

    public static String Sj(int i11) {
        if (i11 == 1) {
            return "embeded_ad";
        }
        if (i11 == 2) {
            return "banner_ad";
        }
        if (i11 == 3) {
            return "interaction";
        }
        if (i11 == 4) {
            return "open_ad";
        }
        if (i11 == 5) {
            return "fullscreen_interstitial_ad";
        }
        if (i11 != 7) {
            return null;
        }
        return "rewarded_video";
    }

    public static String Sj(Context context) {
        String strSP = com.bytedance.sdk.openadsdk.core.TKC.Sj(context).sP("total_memory", (String) null);
        if (strSP == null || sP(strSP) <= 0) {
            strSP = TKC("MemTotal");
            if (sP(strSP) <= 0) {
                strSP = Dq();
            }
            com.bytedance.sdk.openadsdk.core.TKC.Sj(context).Sj("total_memory", strSP);
        }
        return strSP;
    }

    public static String Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null) {
            return null;
        }
        try {
            return TKC(sUVar.DKa());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String Sj(@NonNull String str, boolean z10, boolean z11) {
        if (str != null && !str.startsWith("/")) {
            str = "/".concat(str);
        }
        String strZq = z11 ? Zq() : Fmk();
        if (TextUtils.isEmpty(strZq)) {
            strZq = "api16-access-ttp.tiktokpangle.us";
        }
        String strSj = "https://" + strZq + str;
        if (fF.Sj() && !z10) {
            strSj = fF.Sj(strSj);
        }
        return z10 ? aa(strSj) : strSj;
    }

    public static JSONObject Sj(AdSlot adSlot) {
        JSONObject jSONObject = new JSONObject();
        if (adSlot != null) {
            try {
                jSONObject.put("is_sb", !TextUtils.isEmpty(adSlot.getBidAdm()));
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }

    public static JSONObject Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, long j11, t5.a aVar) {
        if (sUVar == null) {
            return new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, sUVar.aZ());
            jSONObject.put("buffers_time", j11);
            y5.b bVarUHs = sUVar.UHs();
            if (bVarUHs != null) {
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, bVarUHs.g());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, bVarUHs.H());
            }
            Sj(jSONObject, aVar);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "getVideoAction json error", e11);
        }
        return jSONObject;
    }

    public static JSONObject Sj(boolean z10, com.bytedance.sdk.openadsdk.core.model.sU sUVar, long j11, long j12, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, sUVar.aZ());
            jSONObject.put("load_time", j11);
            y5.b bVarUHs = sUVar.UHs();
            if (bVarUHs != null) {
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, bVarUHs.g());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, bVarUHs.H());
            }
            if (!z10) {
                jSONObject.put("error_code", j12);
                if (TextUtils.isEmpty(str)) {
                    str = TmcConstants.ROUTE_UNKNOWN;
                }
                jSONObject.put(TrackingKey.ERROR_MESSAGE, str);
            }
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "getVideoDownload json error", e11);
        }
        return jSONObject;
    }

    public static void Sj(@NonNull com.bytedance.sdk.openadsdk.core.model.sU sUVar, @NonNull View view) {
    }

    public static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, com.bytedance.sdk.component.uA.vS vSVar) {
        Sj(sUVar, vSVar, false);
    }

    public static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, com.bytedance.sdk.component.uA.vS vSVar, boolean z10) {
        com.bytedance.sdk.openadsdk.core.model.vS vSVarZq;
        List<Integer> list;
        if (sUVar == null || vSVar == null) {
            return;
        }
        int iPfr = sUVar.pfr();
        if (sUVar.IOh() && ((iPfr == 2 || iPfr == 3 || iPfr == 5) && (vSVarZq = sUVar.Zq()) != null)) {
            List<Integer> listHiB = vSVarZq.HiB();
            ArrayList arrayList = new ArrayList();
            if (z10) {
                for (int i11 = 0; i11 < listHiB.size(); i11++) {
                    arrayList.add(Integer.valueOf(listHiB.get(i11).intValue() - 1));
                }
                list = arrayList;
            } else {
                list = listHiB;
            }
            vSVar.Sj(true, vSVarZq.TKC(), vSVarZq.EjP(), list, vSVarZq.vS(), vSVarZq.sP());
        }
        int iNw = sUVar.nw();
        long jVP = sUVar.vP();
        if ((iNw == 1 || iNw == 2) && jVP > 0) {
            vSVar.Sj(iNw, jVP);
        }
    }

    public static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str) {
        if (sUVar != null) {
            try {
                String strChv = sUVar.Chv();
                if (TextUtils.isEmpty(strChv) && sUVar.TFd() != null && sUVar.TFd().TKC() == 1 && !TextUtils.isEmpty(sUVar.TFd().sP())) {
                    strChv = sUVar.TFd().sP();
                }
                String str2 = strChv;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.fF.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), str2, sUVar, Sj(str), str, false);
            } catch (Throwable unused) {
            }
        }
    }

    public static void Sj(String str, String str2, Context context) {
        if (TextUtils.isEmpty(str2) || !uA(context)) {
            return;
        }
        int length = str2.length();
        int i11 = 1;
        int i12 = length % 3572 == 0 ? length / 3572 : (length / 3572) + 1;
        int i13 = 3572;
        int i14 = 0;
        while (i11 <= i12) {
            if (i13 >= length) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i12);
                sb2.append("-");
                sb2.append(i11);
                sb2.append(":");
                sb2.append(str2.substring(i14));
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(i12);
            sb3.append("-");
            sb3.append(i11);
            sb3.append(":");
            sb3.append(str2.substring(i14, i13));
            i11++;
            i14 = i13;
            i13 += 3572;
        }
    }

    public static void Sj(StringBuilder sb2, String str, String str2) {
        int iIndexOf;
        if (sb2 == null || TextUtils.isEmpty(str) || (iIndexOf = sb2.indexOf(str)) <= 0) {
            return;
        }
        sb2.replace(iIndexOf, str.length() + iIndexOf, str2);
    }

    public static void Sj(JSONObject jSONObject) {
        int iIntValue;
        try {
            Pair<String, Long> pairEjP = com.bytedance.sdk.openadsdk.core.uA.EjP("oem_store");
            int i11 = -1;
            if (pairEjP != null && ((iIntValue = Integer.valueOf((String) pairEjP.first).intValue()) != -2 || System.currentTimeMillis() - ((Long) pairEjP.second).longValue() < com.bytedance.sdk.openadsdk.dx.Sj.Sj("oem_store_state_time", 259200000))) {
                i11 = iIntValue;
            }
            jSONObject.put("oem_store", i11);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", th2.getMessage());
        }
    }

    private static void Sj(JSONObject jSONObject, t5.a aVar) {
        if (jSONObject.has(CampaignEx.JSON_KEY_VIDEO_RESOLUTION) || aVar == null) {
            return;
        }
        try {
            jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(aVar.EjP()), Integer.valueOf(aVar.HiB())));
        } catch (Throwable unused) {
        }
    }

    public static boolean Sj() {
        return (com.bytedance.sdk.openadsdk.core.Zq.Sj() == null || com.bytedance.sdk.openadsdk.core.Zq.Sj().EjP()) ? false : true;
    }

    public static int TEQ(Context context) {
        try {
            return context.getApplicationInfo().targetSdkVersion;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", th2.getMessage());
            return -1;
        }
    }

    public static long TEQ() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static void TEQ(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return;
        }
        com.bytedance.sdk.component.utils.sU.sP("You should use method '" + str + "' on the asynchronous thread,it may cause anr, please check.", new Object[0]);
    }

    public static long TKC(Context context) {
        return com.bytedance.sdk.openadsdk.core.TKC.Sj(context).sP("total_internal_storage", 0L).longValue();
    }

    public static String TKC() {
        if (!TextUtils.isEmpty(HiB)) {
            return HiB;
        }
        com.bytedance.sdk.openadsdk.multipro.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj());
        String strSj = com.bytedance.sdk.openadsdk.core.uA.Sj("sdk_local_web_ua", ((long) LD()) * 86400000);
        HiB = strSj;
        if (TextUtils.isEmpty(strSj)) {
            ReentrantLock reentrantLock = vS;
            try {
                if (reentrantLock.tryLock()) {
                    try {
                        if (TextUtils.isEmpty(HiB)) {
                            HiB = WebSettings.getDefaultUserAgent(com.bytedance.sdk.openadsdk.core.dNu.Sj());
                        }
                        com.bytedance.sdk.openadsdk.core.uA.Sj("sdk_local_web_ua", HiB);
                        reentrantLock.unlock();
                    } catch (Exception e11) {
                        com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "", e11);
                        vS.unlock();
                    } catch (NoClassDefFoundError e12) {
                        com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "", e12);
                        vS.unlock();
                    }
                }
            } catch (Throwable th2) {
                vS.unlock();
                throw th2;
            }
        }
        return HiB;
    }

    public static String TKC(int i11) {
        if (i11 == 1) {
            return "banner_ad";
        }
        if (i11 == 2) {
            return "interaction";
        }
        if (i11 == 3 || i11 == 4) {
            return "open_ad";
        }
        if (i11 != 7) {
            return i11 != 8 ? "embeded_ad" : "fullscreen_interstitial_ad";
        }
        return "rewarded_video";
    }

    public static String TKC(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String line;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", th.getMessage());
                            return null;
                        } finally {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused2) {
                                }
                            }
                        }
                    }
                } while (!line.contains(str));
                if (line == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception unused4) {
                    }
                    return null;
                }
                String str2 = line.split("\\s+")[1];
                try {
                    bufferedReader.close();
                } catch (Exception unused5) {
                }
                try {
                    fileReader.close();
                } catch (Exception unused6) {
                }
                return str2;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileReader = null;
            bufferedReader = null;
        }
    }

    public static boolean TKC(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null) {
            return true;
        }
        int iSP = com.bytedance.sdk.openadsdk.core.dNu.EjP().sP(sUVar.If());
        int iTKC = com.bytedance.sdk.component.utils.TzV.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj());
        if (iSP == 1) {
            return EjP(iTKC);
        }
        if (iSP == 2) {
            return HiB(iTKC) || EjP(iTKC) || vS(iTKC);
        }
        if (iSP != 3) {
            return iSP != 5 || EjP(iTKC) || vS(iTKC);
        }
        return false;
    }

    public static String TzV() {
        try {
            return TimeZone.getDefault().getID();
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", e11.toString());
            return "";
        }
    }

    private static boolean Yf() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static long Ym() {
        try {
            if (!Yf()) {
                return 0L;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", th2.getMessage());
            return 0L;
        }
    }

    public static long Ym(Context context) {
        int i11 = -1;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                i11 = context.getApplicationInfo().minSdkVersion;
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", th2.getMessage());
        }
        return i11;
    }

    public static String Zq() {
        String strLD = com.bytedance.sdk.openadsdk.core.dNu.EjP().LD();
        return TextUtils.isEmpty(strLD) ? sU.Sj() : strLD;
    }

    public static int aa(Context context) {
        return Jcg(com.bytedance.sdk.component.utils.wE.Sj(context, 0L));
    }

    private static String aa(String str) {
        try {
            return Uri.parse(str).buildUpon().appendQueryParameter("aid", "1371").appendQueryParameter("device_platform", "android").appendQueryParameter("version_code", vS()).toString();
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.ToolUtils", e11.getMessage());
            return str;
        }
    }

    public static boolean aa() {
        try {
            return new File("/system/bin/su").exists() || new File("/system/xbin/su").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String dNu() {
        return "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/renderer/package_tx.json";
    }

    public static String dx() {
        int i11 = -sU();
        return i11 >= 0 ? "Etc/GMT+".concat(String.valueOf(i11)) : "Etc/GMT".concat(String.valueOf(i11));
    }

    public static String ib() {
        String str = sef;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = new String(f21125aa);
        sef = str2;
        return str2;
    }

    public static String kF() {
        String str = Zq;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = new String(Fmk);
        Zq = str2;
        return str2;
    }

    public static int sP(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null) {
            return -1;
        }
        int iDKa = sUVar.DKa();
        int i11 = 1;
        if (iDKa == 1) {
            return 2;
        }
        if (iDKa == 3) {
            return 4;
        }
        if (iDKa != 5) {
            i11 = 7;
            if (iDKa != 7) {
                return iDKa != 8 ? -1 : 5;
            }
        }
        return i11;
    }

    public static long sP(String str) {
        try {
            return Long.parseLong(str);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String sP() {
        String str = "unKnow";
        com.bytedance.sdk.openadsdk.multipro.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj());
        try {
            String strSP = com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("sp_multi_ua_data", "android_system_ua", "unKnow") : com.bytedance.sdk.openadsdk.core.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()).sP("android_system_ua", "unKnow");
            if (strSP != null && !"unKnow".equals(strSP)) {
                return strSP;
            }
            FutureTask futureTask = new FutureTask(new Sj(2));
            sP.execute(futureTask);
            str = (String) futureTask.get(500L, TimeUnit.MILLISECONDS);
        } catch (Exception unused) {
        }
        com.bytedance.sdk.component.utils.sU.sP("getUA", " getAndroidSystemUA userAgent".concat(String.valueOf(str)));
        return str;
    }

    public static String sP(int i11) {
        if (i11 == 1) {
            return "embeded_ad_landingpage";
        }
        if (i11 == 2) {
            return "banner_ad_landingpage";
        }
        if (i11 == 3) {
            return "interaction_landingpage";
        }
        if (i11 == 4) {
            return "splash_ad_landingpage";
        }
        if (i11 != 5) {
            return i11 != 7 ? "unknow" : "rewarded_video_landingpage";
        }
        return "fullscreen_interstitial_ad";
    }

    public static String sP(Context context) {
        return com.bytedance.sdk.openadsdk.core.TKC.Sj(context).sP("total_memory", "0");
    }

    public static boolean sP(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
                if (!(context instanceof Activity)) {
                    intent.setFlags(ASTNode.DEOP);
                }
                com.bytedance.sdk.component.utils.sP.Sj(context, intent, null);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static int sU() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / TimeConstants.HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static int sef(Context context) {
        List<ResolveInfo> listQueryIntentActivities;
        Integer num = Sj;
        if (num != null) {
            return num.intValue();
        }
        if (context == null || (listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("https://www.example.com")), 0)) == null) {
            return 0;
        }
        int size = listQueryIntentActivities.size();
        Sj = Integer.valueOf(size);
        return size;
    }

    public static String sef() {
        String strHS = com.bytedance.sdk.openadsdk.core.dNu.EjP().HS();
        if (!TextUtils.isEmpty(strHS)) {
            return strHS;
        }
        String strSj = sU.Sj();
        if (TextUtils.isEmpty(strSj)) {
            return strHS;
        }
        return "https://" + strSj + "/service/2/dual_events/";
    }

    public static String uA() {
        return TKC("MemTotal");
    }

    public static boolean uA(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
        }
    }

    public static boolean uA(String str) {
        if (com.bytedance.sdk.openadsdk.core.sef.HiB()) {
            return true;
        }
        com.bytedance.sdk.component.utils.sU.sP("You must use method '" + str + "' after initialization, please check.", new Object[0]);
        return false;
    }

    public static String uvD() {
        return String.format("https://%s", "log.byteoversea.com/service/2/app_log_test/");
    }

    public static int vS(Context context) {
        return com.bytedance.sdk.openadsdk.core.TKC.Sj(context).sP("is_root", -1);
    }

    public static synchronized String vS() {
        try {
            if (TextUtils.isEmpty(Dq) && com.bytedance.sdk.openadsdk.core.dNu.Sj() != null) {
                try {
                    PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.dNu.Sj().getPackageManager().getPackageInfo(HiB(), 0);
                    Dq = String.valueOf(packageInfo.versionCode);
                    uA = packageInfo.versionName;
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.Sj("TTAD.ToolUtils", "ToolUtils getVersionCode throws exception :", th2);
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return Dq;
    }

    public static boolean vS(int i11) {
        return i11 == 6;
    }

    public static boolean vS(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean zR() {
        return EjP.get() == 1;
    }
}
