package com.transsion.ga;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.miniapp.bridge.PermissionScopeBridge;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.aidl.AthenaTrackService;
import com.transsion.athena.attribution.ReferrerTask;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.enatha.enatha;
import com.transsion.athena.taaneh.aatnhe;
import com.transsion.athena.taaneh.ehatna;
import com.transsion.core.log.ObjectLogUtils;
import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class AthenaAnalytics {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile AthenaAnalytics f44158h;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static List f44164n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static com.transsion.ga.athena f44165o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f44166p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f44167q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static boolean f44168r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.transsion.athena.enatha.athena f44169a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.transsion.athena.athena f44171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f44172d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static b f44156f = new b() { // from class: com.transsion.ga.b
        @Override // com.transsion.ga.AthenaAnalytics.b
        public final String a(String str) {
            return AthenaAnalytics.i(str);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile int f44157g = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static long f44159i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile int f44160j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile long f44161k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f44162l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static Context f44163m = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ExecutorService f44170b = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CopyOnWriteArrayList f44173e = new CopyOnWriteArrayList();

    /* JADX INFO: loaded from: classes5.dex */
    public interface a {
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class aethna implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.transsion.athena.enatha.athena f44174a;

        private aethna(com.transsion.athena.enatha.athena athenaVar) {
            this.f44174a = athenaVar;
        }

        /* synthetic */ aethna(com.transsion.athena.enatha.athena athenaVar, athena athenaVar2) {
            this(athenaVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ehanat.v()) {
                com.transsion.athena.taaneh.anehat.a("Athena is in Test mode，should not release this APK（测试模式）[" + AthenaAnalytics.f44163m.getPackageName() + "]");
                this.f44174a.a(this, 60000L);
                return;
            }
            if (ehanat.t() && ehanat.q()) {
                com.transsion.athena.taaneh.anehat.a("  - Athena is in Release mode with log enabled. Please set AthenaAnalytics.setDebug(false) to release this APK （Debug模式）[" + AthenaAnalytics.f44163m.getPackageName() + "]");
                this.f44174a.a(this, 60000L);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class anehat implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f44175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SimpleDateFormat f44176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f44177c;

        private anehat(Handler handler) {
            this.f44177c = "";
            this.f44175a = handler;
        }

        /* synthetic */ anehat(Handler handler, athena athenaVar) {
            this(handler);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AthenaAnalytics.f44161k > 0) {
                if (com.transsion.athena.config.data.model.anehat.c(AthenaAnalytics.f44163m)) {
                    if (this.f44176b == null) {
                        this.f44176b = new SimpleDateFormat("yyyy/MM/dd", Locale.ENGLISH);
                    }
                    String str = this.f44176b.format(new Date());
                    if (!str.equals(this.f44177c)) {
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.K(num.intValue()).g0("app_heartbeat", null, num.intValue());
                            }
                        }
                        this.f44177c = str;
                    }
                }
                this.f44175a.postDelayed(this, 3600000L);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    class athena implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f44178a;

        athena(boolean z10) {
            this.f44178a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.transsion.athena.taaneh.aethna.f42798a.m().r(this.f44178a);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface b {
        String a(String str);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface c {
    }

    private AthenaAnalytics() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(final String str, final TrackData trackData, final long j11) {
        try {
            if (this.f44171c == null || !this.f44172d) {
                if (V()) {
                    x(str, trackData, j11);
                } else if (this.f44173e.size() < 100) {
                    this.f44173e.add(new TrackDataWrapper(str, trackData, j11));
                }
            } else if (trackData.c() < 524288) {
                this.f44170b.submit(new Runnable() { // from class: com.transsion.ga.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f44181a.p(str, trackData, j11);
                    }
                });
            } else {
                com.transsion.athena.taaneh.aethna.b("TrackByAidl trackData size is too large, ignored !!");
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    private static boolean B() {
        return f44163m.checkCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE") == 0;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002a  */
    private com.transsion.athena.enatha.athena C() {
        com.transsion.athena.enatha.athena athenaVarA;
        if (this.f44169a == null && f44163m != null) {
            if (f44157g == 2 && !com.transsion.athena.taaneh.anehat.c(f44163m)) {
                f44157g = 1;
            }
            Context context = f44163m;
            int i11 = f44157g;
            if (i11 == 1) {
                athenaVarA = enatha.a(context);
            } else if (i11 == 2) {
                athenaVarA = com.transsion.athena.enatha.aethna.a(context);
            } else if (i11 != 3) {
                athenaVarA = null;
            } else {
                athenaVarA = enatha.a(context);
            }
            this.f44169a = athenaVarA;
        }
        return this.f44169a;
    }

    public static void D(boolean z10) {
        com.transsion.athena.enatha.athena athenaVarC;
        ehanat.d(z10);
        if (f44158h == null) {
            com.transsion.athena.taaneh.aethna.a("Init method not called.");
        } else {
            if (f44160j != 0 || (athenaVarC = f44158h.C()) == null || z10) {
                return;
            }
            athenaVarC.a();
        }
    }

    static void E() {
        if ((f44157g == 3 || F()) && f44160j == 0) {
            com.transsion.athena.hatnea.athena.a().b();
        }
    }

    private static boolean F() {
        return (f44163m == null || f44158h == null || !ehanat.r()) ? false : true;
    }

    public static String G(Context context) {
        return ehatna.a();
    }

    public static String H(Context context, boolean z10) {
        return z10 ? ehatna.b(context) : ehatna.a();
    }

    public static a I() {
        return null;
    }

    public static Context J() {
        return f44163m;
    }

    public static AthenaAnalytics K(int i11) {
        return L(i11);
    }

    public static AthenaAnalytics L(long j11) {
        if (f44158h == null) {
            synchronized (AthenaAnalytics.class) {
                try {
                    if (f44158h == null) {
                        f44158h = new AthenaAnalytics();
                        if (f44160j == 0) {
                            com.transsion.athena.enatha.athena athenaVarC = f44158h.C();
                            Handler handler = new Handler(Looper.getMainLooper());
                            w(athenaVarC);
                            athena athenaVar = null;
                            athenaVarC.a(new aethna(athenaVarC, athenaVar), 3000L);
                            z(athenaVarC);
                            m(handler);
                            handler.postDelayed(new anehat(handler, athenaVar), 3600000L);
                            u(athenaVarC);
                        } else {
                            AthenaAnalytics athenaAnalytics = f44158h;
                            Context context = f44163m;
                            athenaAnalytics.getClass();
                            try {
                                com.transsion.athena.taaneh.aethna.c("AthenaAnalytics bindTrackService");
                                Intent intent = new Intent(context, (Class<?>) AthenaTrackService.class);
                                intent.setPackage(context.getApplicationInfo().packageName);
                                context.bindService(intent, new g(athenaAnalytics), 1);
                            } catch (Exception e11) {
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (com.transsion.athena.taaneh.anehat.b(j11)) {
            int i11 = (int) j11;
            if (f44160j == 0 && com.transsion.athena.data.athena.a(i11)) {
                Message message = new Message();
                message.what = 400;
                message.arg1 = i11;
                f44158h.C().a(message, 0L);
            } else if (f44160j == 1 && com.transsion.athena.data.athena.a(i11)) {
                com.transsion.athena.taaneh.aethna.a("multi process appid " + i11 + " register successful");
            }
        }
        return f44158h;
    }

    public static b M() {
        return f44156f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N() {
        aatnhe.e(f44163m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void O() {
        if (f44161k > 0) {
            AthenaAnalytics athenaAnalytics = f44158h;
            athenaAnalytics.getClass();
            if (!F()) {
                com.transsion.athena.taaneh.aethna.a("Athena SDK isAthenaEnable = false");
                return;
            }
            for (Integer num : com.transsion.athena.data.athena.a()) {
                if (num.intValue() != 9999) {
                    athenaAnalytics.g0("app_launch", null, num.intValue());
                }
            }
        }
    }

    public static void P(Context context, String str, int i11, boolean z10) {
        Q(context, str, i11, z10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void Q(Context context, String str, int i11, boolean z10, boolean z11) {
        boolean zEquals;
        String str2;
        if (context == null || i11 < 1000 || i11 > 9999) {
            throw new IllegalArgumentException("The parameter is illegal.");
        }
        if (f44163m == null) {
            f44163m = context.getApplicationContext();
        }
        ehanat.c(z10);
        ehanat.a(str, z11);
        boolean z12 = false;
        if (z11) {
            com.transsion.athena.data.athena.b(i11);
            l(i11, false);
        }
        i.b(f44163m);
        if (f44160j == -1) {
            String str3 = f44162l;
            try {
                try {
                    str2 = context.getApplicationContext().getApplicationInfo().processName;
                } catch (Exception e11) {
                    ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                    str2 = "";
                }
                if (TextUtils.isEmpty(str3)) {
                    str3 = str2;
                }
                zEquals = TextUtils.equals(str3, com.transsion.athena.taaneh.athena.d(context));
            } catch (Exception unused) {
                zEquals = 1;
            }
            f44160j = !zEquals;
            if (f44160j == 0 && f44166p == 0 && ehanat.K) {
                f44166p = new Random().nextInt(PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY) + 300;
            }
        }
        K(9999);
        K(i11);
        ehatna.a(context, i11, f44166p);
        int i12 = com.transsion.athena.taaneh.anehat.f42803e;
        try {
            int i13 = MMKV.f40560j;
            z12 = true;
        } catch (ClassNotFoundException unused2) {
        }
        f44168r = z12;
    }

    public static boolean R() {
        if (Build.VERSION.SDK_INT >= 29) {
            return ehanat.J && B();
        }
        return ehanat.F && y();
    }

    public static boolean S() {
        return f44157g == 3;
    }

    public static boolean T() {
        if (Build.VERSION.SDK_INT >= 29) {
            return ehanat.G && B();
        }
        return ehanat.C && y();
    }

    public static boolean U() {
        if (Build.VERSION.SDK_INT >= 29) {
            return ehanat.H && B();
        }
        return ehanat.D && y();
    }

    public static boolean V() {
        return f44167q && f44168r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ec A[Catch: Exception -> 0x010c, TryCatch #1 {Exception -> 0x010c, blocks: (B:42:0x00cc, B:44:0x00dc, B:46:0x00e2, B:47:0x00e6, B:49:0x00ec, B:51:0x00f8, B:53:0x00fe, B:56:0x010e, B:58:0x0114, B:60:0x011a), top: B:66:0x00cc }] */
    public static void W() throws Throwable {
        FileInputStream fileInputStream;
        String string;
        String strA;
        List<SubscriptionInfo> activeSubscriptionInfoList;
        f44158h.getClass();
        if (!F()) {
            com.transsion.athena.taaneh.aethna.a("Athena SDK isAthenaEnable = false");
            return;
        }
        TrackData trackData = new TrackData();
        if (T()) {
            trackData.add("iid", com.transsion.athena.taaneh.athena.a(f44163m, 0)).add("iid2", com.transsion.athena.taaneh.athena.a(f44163m, 1));
        }
        if (U()) {
            trackData.add("isd", com.transsion.athena.taaneh.athena.b(f44163m, 1)).add("isd2", com.transsion.athena.taaneh.athena.b(f44163m, 2));
        }
        if (R()) {
            trackData.add("aid", com.transsion.athena.taaneh.athena.b(f44163m));
        }
        StringBuilder sb2 = new StringBuilder();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(new File("proc/rid"));
                    try {
                        byte[] bArr = new byte[1];
                        while (fileInputStream.read(bArr) != -1) {
                            sb2.append(com.transsion.athena.config.data.model.anehat.c(bArr));
                        }
                    } catch (Exception unused) {
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            fileInputStream = fileInputStream2;
                        }
                        string = sb2.toString();
                        if (TextUtils.isEmpty(string)) {
                            strA = "";
                        } else {
                            strA = com.transsion.core.utils.c.a(string);
                        }
                        trackData.add("chip", strA).add("sn", com.transsion.athena.taaneh.athena.c());
                        activeSubscriptionInfoList = ((SubscriptionManager) f44163m.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList();
                        if (activeSubscriptionInfoList != null) {
                            while (r1.hasNext()) {
                                if (subscriptionInfo.getSimSlotIndex() != 0) {
                                }
                                if (subscriptionInfo.getSimSlotIndex() != 1) {
                                }
                            }
                        }
                        K(9999).g0("device", trackData, 9999);
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (Exception e11) {
                                com.transsion.athena.taaneh.aethna.b(e11.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                } catch (Throwable th3) {
                    th = th3;
                }
                fileInputStream.close();
            } catch (Exception e12) {
                com.transsion.athena.taaneh.aethna.b(e12.getMessage());
            }
            activeSubscriptionInfoList = ((SubscriptionManager) f44163m.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList != null && activeSubscriptionInfoList.size() > 0) {
                for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                    if (subscriptionInfo.getSimSlotIndex() != 0 && U()) {
                        trackData.add("isd", com.transsion.athena.taaneh.athena.b(f44163m, subscriptionInfo.getSubscriptionId()));
                    } else if (subscriptionInfo.getSimSlotIndex() != 1 && U()) {
                        trackData.add("isd2", com.transsion.athena.taaneh.athena.b(f44163m, subscriptionInfo.getSubscriptionId()));
                    }
                }
            }
        } catch (Exception e13) {
            com.transsion.athena.taaneh.aethna.b(e13.getMessage());
        }
        string = sb2.toString();
        if (TextUtils.isEmpty(string)) {
            strA = "";
        } else {
            strA = com.transsion.core.utils.c.a(string);
        }
        trackData.add("chip", strA).add("sn", com.transsion.athena.taaneh.athena.c());
        K(9999).g0("device", trackData, 9999);
    }

    static void X() {
        if (f44160j != 0 || f44158h == null || f44158h.C() == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 600;
        f44158h.C().a(messageObtain, 100L);
    }

    public static void Y(int i11) {
        if (f44163m == null) {
            throw new RuntimeException("init Athena SDK first!");
        }
        int i12 = com.transsion.athena.taaneh.anehat.f42803e;
        try {
            K(i11).C().a((Runnable) ReferrerTask.class.getConstructor(Context.class, Integer.TYPE).newInstance(f44163m, Integer.valueOf(i11)), 3000L);
        } catch (Exception e11) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    public static void Z(short s11, String str) {
        ehanat.a(s11, str);
    }

    public static void a0(int i11, String str) {
        if (i11 < 1000 || i11 > 9999) {
            com.transsion.athena.taaneh.aethna.b("appId %d is illegal", Integer.valueOf(i11));
        } else if (TextUtils.isEmpty(str)) {
            com.transsion.athena.taaneh.aethna.b("sdkVersion can not be null or empty");
        } else {
            ehanat.a(i11, str);
        }
    }

    public static void b0(boolean z10) {
        ehanat.c(z10);
        if (f44160j == 0) {
            if (f44158h == null) {
                com.transsion.athena.taaneh.aethna.a("Init method not called.");
                return;
            }
            com.transsion.athena.enatha.athena athenaVarC = f44158h.C();
            if (athenaVarC != null) {
                athenaVarC.a(new athena(z10));
            }
        }
    }

    public static void c0(int i11) {
        com.transsion.athena.enatha.athena athenaVarC;
        if (f44160j != 0 || (athenaVarC = f44158h.C()) == null) {
            return;
        }
        athenaVarC.a(i11);
    }

    public static void d0(boolean z10) {
        ehanat.f(z10);
    }

    public static void e0(int i11) {
        f44157g = i11;
    }

    public static void f0() {
        if (f44158h != null) {
            AthenaAnalytics athenaAnalytics = f44158h;
            athenaAnalytics.getClass();
            if ((f44157g == 3 || F()) && f44160j == 0 && athenaAnalytics.C() != null) {
                athenaAnalytics.C().e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String i(String str) {
        return str;
    }

    private static void l(long j11, boolean z10) {
        if (f44163m == null) {
            return;
        }
        if (f44161k == 0 || z10) {
            f44161k = j11;
        }
        com.transsion.ga.athena athenaVar = f44165o;
        if (athenaVar != null) {
            athenaVar.d(f44161k);
            return;
        }
        com.transsion.ga.athena athenaVar2 = new com.transsion.ga.athena();
        f44165o = athenaVar2;
        athenaVar2.d(f44161k);
        ((Application) f44163m).registerActivityLifecycleCallbacks(f44165o);
    }

    private static void m(Handler handler) {
        handler.postDelayed(new Runnable() { // from class: com.transsion.ga.c
            @Override // java.lang.Runnable
            public final void run() {
                AthenaAnalytics.O();
            }
        }, 6000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(com.transsion.athena.enatha.athena athenaVar) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction("android.location.PROVIDERS_CHANGED");
            if (Build.VERSION.SDK_INT >= 33) {
                f44163m.registerReceiver(new h(), intentFilter, null, athenaVar.b(), 4);
            } else {
                f44163m.registerReceiver(new h(), intentFilter, null, athenaVar.b());
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(String str, TrackData trackData, long j11) {
        try {
            this.f44171c.a(str, trackData, j11);
            com.transsion.athena.taaneh.aethna.a(String.format(Locale.getDefault(), "TrackByAidl tid : %d, eventName : %s", Long.valueOf(j11), str));
        } catch (RemoteException e11) {
            com.transsion.athena.taaneh.aethna.b("TrackByAidl " + e11.getMessage());
        }
    }

    static boolean r(Class cls) {
        List list;
        return (cls == null || (list = f44164n) == null || !list.contains(Integer.valueOf(cls.hashCode()))) ? false : true;
    }

    public static void s(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        ehanat.d(str, obj);
    }

    private static void u(com.transsion.athena.enatha.athena athenaVar) {
        athenaVar.a(new Runnable() { // from class: com.transsion.ga.f
            @Override // java.lang.Runnable
            public final void run() {
                AthenaAnalytics.N();
            }
        });
    }

    private void v(String str, TrackData trackData, long j11) {
        if (f44160j == 0 || f44157g == 2) {
            C().a(str, trackData, j11);
            return;
        }
        if (f44163m != null) {
            String str2 = ehanat.f42607h;
            try {
                if (!TextUtils.isEmpty("")) {
                    trackData.a().put("scode", "");
                }
                if (this.f44170b == null) {
                    this.f44170b = Executors.newSingleThreadExecutor();
                }
                A(str, trackData, j11);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    private static void w(final com.transsion.athena.enatha.athena athenaVar) {
        athenaVar.a(new Runnable() { // from class: com.transsion.ga.d
            @Override // java.lang.Runnable
            public final void run() {
                AthenaAnalytics.n(athenaVar);
            }
        });
    }

    private static void x(String str, TrackData trackData, long j11) {
        try {
            if (trackData.c() > 524288) {
                com.transsion.athena.taaneh.aethna.b("TrackData size is too large, ignored !!");
                return;
            }
            MMKV.J("AthenaKV", 2).u(Process.myPid() + "_" + j11 + "_" + str + "_" + System.currentTimeMillis(), new TrackDataWrapper(str, trackData, j11));
            com.transsion.athena.taaneh.aethna.a(String.format(Locale.getDefault(), "SaveToMMKV tid : %d, eventName : %s", Long.valueOf(j11), str));
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    private static boolean y() {
        return f44163m.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0;
    }

    private static void z(com.transsion.athena.enatha.athena athenaVar) {
        athenaVar.a(new Runnable() { // from class: com.transsion.ga.e
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                AthenaAnalytics.W();
            }
        }, 6000L);
    }

    public void g0(String str, TrackData trackData, int i11) {
        h0(str, trackData, i11);
    }

    public void h0(String str, TrackData trackData, long j11) {
        int i11 = com.transsion.athena.taaneh.anehat.f42803e;
        int length = String.valueOf(j11).length();
        if ((length != 8 && length != 12 && length != 4) || TextUtils.isEmpty(str)) {
            com.transsion.athena.taaneh.aethna.a("The parameter tid : " + j11 + " or event name : " + str + " is illegal.");
            return;
        }
        if (!com.transsion.athena.data.athena.a(j11)) {
            com.transsion.athena.taaneh.aethna.a("The tid " + j11 + " is not belong the app");
            return;
        }
        try {
            if (trackData != null) {
                v(str, trackData, j11);
            } else {
                v(str, new TrackData(), j11);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    void k(int i11, long j11) {
        if (F() && f44160j == 0 && C() != null) {
            Message message = new Message();
            message.what = i11;
            C().a(message, j11);
        }
    }
}
