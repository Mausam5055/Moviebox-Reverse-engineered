package com.bytedance.sdk.openadsdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class DeviceUtils {
    private static int Dq = 0;
    private static int Fmk = 0;
    public static String Sj = "";
    private static int Zq;
    private static int sef;
    private static int uA;
    private static int uvD;
    private static volatile long sP = System.currentTimeMillis();
    private static volatile boolean TKC = false;
    private static volatile boolean EjP = false;
    private static volatile boolean HiB = false;
    private static volatile boolean vS = true;
    private static long Jcg = 0;
    private static String TEQ = "";
    private static int Ym = 0;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private static final AtomicBoolean f21123aa = new AtomicBoolean(false);
    private static AtomicBoolean dNu = new AtomicBoolean(false);

    public static class AudioInfoReceiver extends BroadcastReceiver {
        static final CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.aa.uA> Sj = new CopyOnWriteArrayList<>();

        public static void Sj(com.bytedance.sdk.openadsdk.aa.uA uAVar) {
            if (uAVar != null) {
                CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.aa.uA> copyOnWriteArrayList = Sj;
                if (copyOnWriteArrayList.contains(uAVar)) {
                    return;
                }
                copyOnWriteArrayList.add(uAVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void sP(Context context) {
            if (DeviceUtils.EjP || context == null) {
                return;
            }
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                context.registerReceiver(new AudioInfoReceiver(), intentFilter, null, com.bytedance.sdk.component.utils.uA.Sj());
                boolean unused = DeviceUtils.EjP = true;
            } catch (Throwable unused2) {
            }
        }

        public static void sP(com.bytedance.sdk.openadsdk.aa.uA uAVar) {
            if (uAVar == null) {
                return;
            }
            Sj.remove(uAVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if (!"android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction())) {
                    if ("android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
                        int unused = DeviceUtils.Zq = intent.getIntExtra("state", 0);
                    }
                } else if (intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                    int unused2 = DeviceUtils.Fmk = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", 0);
                    if (!Sj.isEmpty()) {
                        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.AudioInfoReceiver.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Iterator<com.bytedance.sdk.openadsdk.aa.uA> it = AudioInfoReceiver.Sj.iterator();
                                while (it.hasNext()) {
                                    it.next().sP(DeviceUtils.Fmk);
                                }
                            }
                        });
                    }
                    if (DeviceUtils.uA != 0) {
                        int unused3 = DeviceUtils.sef = (int) ((((double) DeviceUtils.Fmk) / ((double) DeviceUtils.uA)) * 100.0d);
                    }
                }
            } catch (Exception unused4) {
            }
        }
    }

    private static class Sj extends BroadcastReceiver {
        private Sj() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void sP(Context context) {
            int i11 = Build.VERSION.SDK_INT;
            if (context != null) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                intentFilter.addAction("huawei.intent.action.POWER_MODE_CHANGED_ACTION");
                if (i11 >= 33) {
                    context.registerReceiver(new Sj(), intentFilter, 2);
                } else {
                    context.registerReceiver(new Sj(), intentFilter);
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || context == null) {
                return;
            }
            if ("android.os.action.POWER_SAVE_MODE_CHANGED".equals(intent.getAction())) {
                DeviceUtils.zR(context);
            } else if ("huawei.intent.action.POWER_MODE_CHANGED_ACTION".equals(intent.getAction())) {
                int unused = DeviceUtils.uvD = intent.getIntExtra("state", 0) == 1 ? 1 : 0;
            }
        }
    }

    public static class TKC extends com.bytedance.sdk.component.Dq.Dq {
        public TKC() {
            super("gaid_task");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v6, types: [com.bytedance.sdk.openadsdk.core.TKC] */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [int] */
        /* JADX WARN: Type inference failed for: r3v3 */
        @Override // java.lang.Runnable
        public void run() {
            ?? r11;
            boolean zIsLimitAdTrackingEnabled;
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(com.bytedance.sdk.openadsdk.core.dNu.Sj());
                if (advertisingIdInfo != null) {
                    zIsLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                    DeviceUtils.sP(advertisingIdInfo, zIsLimitAdTrackingEnabled);
                } else {
                    r11 = -1;
                }
                if (r11 == -1) {
                    r11 = zIsLimitAdTrackingEnabled;
                    return;
                } else {
                    r11 = zIsLimitAdTrackingEnabled;
                    com.bytedance.sdk.openadsdk.core.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()).Sj("limit_ad_track", r11);
                }
            } catch (IOException e11) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.DeviceUtils", "getLmtTask error : signaling connection to Google Play Services failed.", e11);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("TTAD.DeviceUtils", th2.getMessage());
            }
        }
    }

    static class sP extends BroadcastReceiver {
        sP() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = DeviceUtils.vS = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                boolean unused2 = DeviceUtils.vS = false;
            } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                long unused3 = DeviceUtils.sP = System.currentTimeMillis();
            }
        }
    }

    public static int Dq() {
        return sef;
    }

    public static int Dq(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", -1);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.DeviceUtils", th2.getMessage());
            return -1;
        }
    }

    public static int EjP(Context context) {
        if (TKC(context)) {
            return 3;
        }
        return sP(context) ? 2 : 1;
    }

    public static String EjP() {
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    public static void Fmk(Context context) {
        Context applicationContext;
        if (HiB || context == null || (applicationContext = context.getApplicationContext()) == null) {
            return;
        }
        try {
            if (Build.MANUFACTURER.equalsIgnoreCase("XIAOMI")) {
                uP(applicationContext);
            } else {
                Sj.sP(applicationContext);
            }
            HiB = true;
        } catch (Throwable unused) {
        }
    }

    public static float HiB() {
        int i11 = -1;
        try {
            Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
            if (contextSj != null) {
                i11 = Settings.System.getInt(contextSj.getContentResolver(), "screen_brightness", -1);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.DeviceUtils", th2.getMessage());
        }
        if (i11 < 0) {
            return -1.0f;
        }
        return Math.round((i11 / 255.0f) * 10.0f) / 10.0f;
    }

    public static String HiB(Context context) {
        if (!f21123aa.get()) {
            uvD(context);
        }
        return TEQ;
    }

    public static int Jcg() {
        return Fmk;
    }

    public static JSONObject Jcg(Context context) {
        return Sj(context, false);
    }

    private static float RiZ(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static long Sj() {
        return sP;
    }

    public static JSONObject Sj(Context context, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sys_adb_status", Dq(context));
            Sj(jSONObject);
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, EjP(context));
            jSONObject.put("os", 1);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("conn_type", Mts.aa(context));
            jSONObject.put("app_set_id", com.bytedance.sdk.openadsdk.core.settings.EjP.TKC());
            jSONObject.put("app_set_id_scope", com.bytedance.sdk.openadsdk.core.settings.EjP.sP());
            jSONObject.put("installed_source", com.bytedance.sdk.openadsdk.core.settings.EjP.EjP());
            jSONObject.put("screen_width", FPG.TKC(context));
            jSONObject.put("screen_height", FPG.HiB(context));
            jSONObject.put("sec_did", com.bytedance.sdk.openadsdk.core.uA.TKC.vS());
            com.bytedance.sdk.openadsdk.core.settings.vS vSVarEjP = com.bytedance.sdk.openadsdk.core.dNu.EjP();
            if (vSVarEjP.LqL("boot")) {
                jSONObject.put("boot", String.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
                jSONObject.put("power_on_time", String.valueOf(SystemClock.elapsedRealtime()));
            }
            jSONObject.put("uuid", com.bytedance.sdk.openadsdk.core.aa.TKC(context));
            jSONObject.put("rom_version", uP.Sj());
            jSONObject.put("sys_compiling_time", com.bytedance.sdk.openadsdk.core.aa.sP(context));
            jSONObject.put("timezone", Mts.dx());
            jSONObject.put(TmcConstants.KEY_LANGUAGE, com.bytedance.sdk.openadsdk.core.aa.sP());
            jSONObject.put("carrier_name", ley.Sj());
            jSONObject.put("total_mem", String.valueOf(Long.parseLong(z10 ? Mts.Sj(context) : Mts.sP(context)) * 1024));
            jSONObject.put("locale_language", EjP());
            jSONObject.put("screen_bright", Math.ceil(HiB() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", 1 ^ (sP() ? 1 : 0));
            jSONObject.put("cpu_num", uA.Sj(context));
            jSONObject.put("cpu_max_freq", uA.sP(context));
            jSONObject.put("cpu_min_freq", uA.TKC(context));
            vS.Sj Sj2 = vS.Sj();
            jSONObject.put("battery_remaining_pct", (int) Sj2.sP);
            jSONObject.put("is_charging", Sj2.Sj);
            jSONObject.put("total_space", String.valueOf(Mts.TKC(context)));
            jSONObject.put("free_space_in", String.valueOf(Mts.EjP(context)));
            jSONObject.put("sdcard_size", String.valueOf(Mts.HiB(context)));
            jSONObject.put("rooted", Mts.vS(context));
            jSONObject.put("enable_assisted_clicking", vS());
            jSONObject.put("force_language", com.bytedance.sdk.component.utils.ib.Sj(context, "tt_choose_language"));
            jSONObject.put("airplane", uA(context));
            jSONObject.put("darkmode", dNu(context));
            jSONObject.put("headset", TzV(context));
            jSONObject.put("ringmute", TEQ(context));
            jSONObject.put("screenscale", RiZ(context));
            jSONObject.put("volume", Dq());
            jSONObject.put("low_power_mode", sU(context));
            if (z10) {
                Jcg.Sj(jSONObject, context);
                jSONObject.put("gp_v_name", HiB(context));
                jSONObject.put("gp_v_code", vS(context));
            }
            if (vSVarEjP.LqL("mnc")) {
                jSONObject.put("mnc", ley.TKC());
            }
            if (vSVarEjP.LqL("mcc")) {
                jSONObject.put("mcc", ley.sP());
            }
            jSONObject.put("act", com.bytedance.sdk.openadsdk.core.act.Sj.sP(context));
            jSONObject.put("act_event", com.bytedance.sdk.openadsdk.core.act.Sj.Sj());
            String strTKC = com.bytedance.sdk.openadsdk.core.uA.TKC.TKC();
            com.bytedance.sdk.openadsdk.core.uA.TKC.EjP();
            if (!TextUtils.isEmpty(strTKC)) {
                jSONObject.put("sof_chara", strTKC);
            }
            String strSP = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
            if (!strSP.isEmpty()) {
                jSONObject.put("ipv6", strSP);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void Sj(Context context) {
        if (TKC) {
            return;
        }
        try {
            sP sPVar = new sP();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            context.getApplicationContext().registerReceiver(sPVar, intentFilter);
            TKC = true;
        } catch (Throwable unused) {
        }
    }

    private static void Sj(JSONObject jSONObject) throws JSONException {
        sP(jSONObject);
    }

    public static int TEQ(Context context) {
        return Dq;
    }

    public static void TEQ() {
        JcM.Sj((com.bytedance.sdk.component.Dq.Dq) new TKC());
        com.bytedance.sdk.openadsdk.core.settings.Fmk.Sj(new com.bytedance.sdk.openadsdk.core.settings.aa.Sj() { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.1
            @Override // com.bytedance.sdk.openadsdk.core.settings.aa.Sj
            public void Sj() {
                JcM.Sj((com.bytedance.sdk.component.Dq.Dq) new TKC());
            }

            @Override // com.bytedance.sdk.openadsdk.core.settings.aa.Sj
            public void sP() {
                JcM.Sj((com.bytedance.sdk.component.Dq.Dq) new TKC());
            }
        });
        Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        if (contextSj != null) {
            com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("cpu_count", uA.Sj());
            com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("cpu_max_frequency", uA.Sj(uA.Sj()));
            com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("cpu_min_frequency", uA.sP(uA.Sj()));
            String strUA = Mts.uA();
            if (strUA != null) {
                com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("total_memory", strUA);
            }
            com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("total_internal_storage", Mts.TEQ());
            com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("free_internal_storage", com.bytedance.sdk.component.utils.dNu.Sj());
            com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("total_sdcard_storage", Mts.Ym());
            com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("is_root", Mts.aa() ? 1 : 0);
            if (TextUtils.isEmpty(Ym(contextSj))) {
                try {
                    Class.forName("com.unity3d.player.UnityPlayer");
                    Sj = "unity";
                } catch (ClassNotFoundException unused) {
                    Sj = "native";
                }
                com.bytedance.sdk.openadsdk.core.TKC.Sj(contextSj).Sj("framework_name", Sj);
            }
            Ym();
            dx(contextSj);
            uvD = ib(contextSj);
            Jcg.Sj(contextSj);
        }
    }

    public static int TKC() {
        return com.bytedance.sdk.openadsdk.core.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()).sP("limit_ad_track", -1);
    }

    public static boolean TKC(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 15) == 4;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static int TzV(Context context) {
        return Zq;
    }

    public static String Ym(Context context) {
        if (TextUtils.isEmpty(Sj)) {
            Sj = com.bytedance.sdk.openadsdk.core.TKC.Sj(context).sP("framework_name", "");
        }
        return Sj;
    }

    public static void Ym() {
        try {
            int ringerMode = ((AudioManager) com.bytedance.sdk.openadsdk.core.dNu.Sj().getSystemService(MimeTypes.BASE_TYPE_AUDIO)).getRingerMode();
            if (ringerMode == 2) {
                Dq = 1;
            } else if (ringerMode == 1) {
                Dq = 2;
            } else {
                Dq = 0;
            }
        } catch (Throwable unused) {
        }
    }

    public static void aa(Context context) {
        AudioInfoReceiver.sP(context);
    }

    private static int dNu(Context context) {
        try {
            int i11 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
            if (i11 == 32) {
                return 1;
            }
            return i11 == 16 ? 0 : -1;
        } catch (Throwable unused) {
        }
    }

    private static void dx(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            uA = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            Fmk = streamVolume;
            sef = (int) ((((double) streamVolume) / ((double) uA)) * 100.0d);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int ib(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            String str = Build.MANUFACTURER;
            if (!str.equalsIgnoreCase("XIAOMI") && !str.equalsIgnoreCase("HUAWEI")) {
                return ((PowerManager) context.getSystemService("power")).isPowerSaveMode() ? 1 : 0;
            }
            return kF(context);
        } catch (Throwable unused) {
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    private static int kF(Context context) {
        try {
            String str = Build.MANUFACTURER;
            int i11 = 1;
            if (str.equalsIgnoreCase("XIAOMI")) {
                if (Settings.System.getInt(context.getContentResolver(), "POWER_SAVE_MODE_OPEN") != 1) {
                    i11 = 0;
                }
            } else {
                if (!str.equalsIgnoreCase("HUAWEI")) {
                    return 0;
                }
                if (Settings.System.getInt(context.getContentResolver(), "SmartModeStatus") != 4) {
                    i11 = 0;
                }
            }
            return i11;
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sP(AdvertisingIdClient.Info info, boolean z10) {
        if (z10 || !com.bytedance.sdk.openadsdk.core.dNu.EjP().LqL(UrlKt.KEY_MINI_GAID)) {
            return;
        }
        String id2 = info.getId();
        String strSP = com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP();
        if (!TextUtils.isEmpty(id2)) {
            com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().Sj(id2);
            com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(id2);
        }
        if (strSP.equals(id2)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.aa.Sj();
    }

    private static void sP(JSONObject jSONObject) throws JSONException {
        jSONObject.put("model", Build.MODEL);
        if (com.bytedance.sdk.openadsdk.core.dNu.EjP().LqL(UrlKt.KEY_MINI_GAID)) {
            jSONObject.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
        }
    }

    public static boolean sP() {
        if (SystemClock.elapsedRealtime() - Jcg >= DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT) {
            Jcg = SystemClock.elapsedRealtime();
            try {
                PowerManager powerManager = (PowerManager) com.bytedance.sdk.openadsdk.core.dNu.Sj().getSystemService("power");
                if (powerManager != null) {
                    vS = powerManager.isInteractive();
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("TTAD.DeviceUtils", th2.getMessage());
            }
        }
        return vS;
    }

    public static boolean sP(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static int sU(Context context) {
        return uvD;
    }

    public static int uA() {
        return uA;
    }

    public static int uA(Context context) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0 ? 1 : 0;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static void uP(Context context) {
        final Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return;
        }
        context.getContentResolver().registerContentObserver(Uri.parse("content://settings/system/POWER_SAVE_MODE_OPEN"), false, new ContentObserver(null) { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.3
            @Override // android.database.ContentObserver
            public void onChange(boolean z10) {
                super.onChange(z10);
                DeviceUtils.zR(applicationContext);
            }
        });
    }

    private static void uvD(Context context) {
        if (context == null || !f21123aa.compareAndSet(false, true)) {
            return;
        }
        try {
            if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("gp_v_enable", 0) == 1) {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.android.vending", 0);
                TEQ = packageInfo.versionName;
                Ym = packageInfo.versionCode;
            }
        } catch (Throwable unused) {
        }
    }

    public static int vS() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) com.bytedance.sdk.openadsdk.core.dNu.Sj().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        return accessibilityManager.isEnabled() ? 1 : 0;
    }

    public static int vS(Context context) {
        if (!f21123aa.get()) {
            uvD(context);
        }
        return Ym;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zR(Context context) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        JcM.sP(new com.bytedance.sdk.component.Dq.Dq("DeviceUtils_get_low_power_mode") { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.2
            @Override // java.lang.Runnable
            public void run() {
                int unused = DeviceUtils.uvD = DeviceUtils.ib(applicationContext);
            }
        });
    }
}
