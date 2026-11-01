package com.transsion.sunflower;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import androidx.core.app.NotificationCompat;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.WorkManager;
import androidx.work.b0;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class FSNManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f55052f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile FSNManager f55053g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f55054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f55055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f55056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f55057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f55058e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FSNManager a() {
            return FSNManager.f55053g;
        }

        public final FSNManager b(d config) {
            Intrinsics.h(config, "config");
            FSNManager fSNManager = FSNManager.f55053g;
            if (fSNManager == null) {
                synchronized (this) {
                    fSNManager = new FSNManager(config, null);
                    FSNManager.f55053g = fSNManager;
                }
            }
            return fSNManager;
        }
    }

    private FSNManager(d dVar) {
        this.f55054a = dVar;
        this.f55055b = dVar.c();
        this.f55057d = LazyKt.b(new Function0<MMKV>() { // from class: com.transsion.sunflower.FSNManager$mmkv$2
            @Override // kotlin.jvm.functions.Function0
            public final MMKV invoke() {
                return MMKV.I("sunflower_app");
            }
        });
        this.f55058e = LazyKt.b(new Function0<c>() { // from class: com.transsion.sunflower.FSNManager$notificationHelper$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final c invoke() {
                return new c(this.this$0.f55055b, "dauupupup", "dauupupup_name");
            }
        });
    }

    public /* synthetic */ FSNManager(d dVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar);
    }

    private final boolean e() {
        Object systemService = this.f55055b.getSystemService("power");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isScreenOn();
    }

    private final boolean f(FSNConfig fSNConfig) {
        try {
            int i11 = Calendar.getInstance().get(11);
            int[] banTimeScope = fSNConfig.getBanTimeScope();
            List listI0 = ArraysKt.I0(banTimeScope);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("checkBlockTimeWithConfig: hour:");
            sb2.append(i11);
            sb2.append(", banTimeScope:");
            sb2.append(listI0);
            return ArraysKt.M(banTimeScope, i11);
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }

    private final boolean h(FSNConfig fSNConfig) {
        Function0 function0G;
        boolean enable = fSNConfig.getEnable();
        boolean z10 = !fSNConfig.getOnly4SilentUser() || ((function0G = this.f55054a.g()) != null && ((Boolean) function0G.invoke()).booleanValue());
        boolean z11 = (System.currentTimeMillis() / ((long) 1000)) - j() > fSNConfig.getEffectInterval();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("effectBlock: ");
        sb2.append(!enable);
        sb2.append(", ");
        sb2.append(!z11);
        sb2.append(", ");
        sb2.append(!z10);
        return (enable && z11 && z10) ? false : true;
    }

    private final long i() {
        long delayTime;
        if (this.f55054a.j()) {
            FSNConfig fSNConfigB = this.f55054a.b();
            delayTime = fSNConfigB != null ? fSNConfigB.getDelayTime() : 20L;
        } else {
            FSNConfig fSNConfigB2 = this.f55054a.b();
            delayTime = fSNConfigB2 != null ? fSNConfigB2.getDelayTime() : 900L;
        }
        return delayTime * ((long) 1000);
    }

    private final long j() {
        return k().getLong("dauupupup_last_effect_time", 0L);
    }

    private final c l() {
        return (c) this.f55058e.getValue();
    }

    private final List m(FSNConfig fSNConfig) {
        List listU0;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iF = RangesKt.f(fSNConfig.getDayLimit(), 1);
        String string = k().getString("dauupupup_show_time_day", "");
        String str = string == null ? "" : string;
        if (str.length() == 0) {
            listU0 = new ArrayList();
        } else {
            List listR0 = StringsKt.R0(str, new char[]{','}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listR0.iterator();
            while (it.hasNext()) {
                Long lX = StringsKt.x((String) it.next());
                if (lX != null) {
                    arrayList.add(lX);
                }
            }
            listU0 = CollectionsKt.U0(arrayList);
        }
        final long j11 = jCurrentTimeMillis - (((long) iF) * 86400000);
        CollectionsKt.I(listU0, new Function1<Long, Boolean>() { // from class: com.transsion.sunflower.FSNManager$getShowListTime$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final Boolean invoke(long j12) {
                return Boolean.valueOf(j12 < j11);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).longValue());
            }
        });
        return listU0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(FSNManager this$0, String eventSource) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(eventSource, "$eventSource");
        this$0.r(eventSource);
    }

    private final boolean s(FSNConfig fSNConfig) {
        return m(fSNConfig).size() >= RangesKt.f(fSNConfig.getTimesLimit(), 1);
    }

    private final void u(FSNConfig fSNConfig) {
        k().putLong("dauupupup_last_effect_time", System.currentTimeMillis() / ((long) 1000));
        List listM = m(fSNConfig);
        listM.add(Long.valueOf(System.currentTimeMillis()));
        k().putString("dauupupup_show_time_day", CollectionsKt.s0(listM, ",", null, null, 0, null, null, 62, null));
    }

    public final void g() {
        c.f55061d.a(this.f55055b, 10001);
    }

    public final MMKV k() {
        Object value = this.f55057d.getValue();
        Intrinsics.g(value, "<get-mmkv>(...)");
        return (MMKV) value;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void n(String str) {
        if (str != null) {
            switch (str.hashCode()) {
                case -2128145023:
                    if (!str.equals("android.intent.action.SCREEN_OFF")) {
                        return;
                    }
                    break;
                case -1886648615:
                    if (!str.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                        return;
                    }
                    break;
                case -1454123155:
                    if (str.equals("android.intent.action.SCREEN_ON")) {
                        g();
                        return;
                    }
                    return;
                case 823795052:
                    if (str.equals("android.intent.action.USER_PRESENT")) {
                        this.f55056c = false;
                        return;
                    }
                    return;
                case 1019184907:
                    if (!str.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                        return;
                    }
                    break;
                default:
                    return;
            }
            p(false, str);
        }
    }

    public final void o() {
        WorkManager.f(this.f55055b.getApplicationContext()).e("FSIWorker", ExistingPeriodicWorkPolicy.UPDATE, (b0) ((b0.a) new b0.a(FSIWorker.class, this.f55054a.j() ? 1L : 60L, TimeUnit.MINUTES).i(new androidx.work.d.a().a())).b());
    }

    public final void p(boolean z10, final String eventSource) {
        Intrinsics.h(eventSource, "eventSource");
        int i11 = Build.VERSION.SDK_INT;
        if (i11 > 33) {
            return;
        }
        if (i11 < 24 || i11 > 33 || z10) {
            r(eventSource);
            return;
        }
        long jI = i();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onReceive: fsi delay:");
        sb2.append(jI);
        sb2.append(" start");
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = this.f55055b.getApplicationContext().getSystemService(NotificationCompat.CATEGORY_ALARM);
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
            ((AlarmManager) systemService).set(0, System.currentTimeMillis() + i(), "tag", new AlarmManager.OnAlarmListener() { // from class: com.transsion.sunflower.b
                @Override // android.app.AlarmManager.OnAlarmListener
                public final void onAlarm() {
                    FSNManager.q(this.f55059a, eventSource);
                }
            }, new Handler(Looper.getMainLooper()));
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final void r(String eventSource) {
        Intrinsics.h(eventSource, "eventSource");
        if (this.f55056c) {
            Function1 function1E = this.f55054a.e();
            if (function1E != null) {
                function1E.invoke("block by had post");
                return;
            }
            return;
        }
        FSNConfig fSNConfigB = this.f55054a.b();
        if (fSNConfigB == null) {
            Function1 function1E2 = this.f55054a.e();
            if (function1E2 != null) {
                function1E2.invoke(" block by simba config null");
                return;
            }
            return;
        }
        Function0 function0I = this.f55054a.i();
        if (function0I != null && !((Boolean) function0I.invoke()).booleanValue()) {
            Function1 function1E3 = this.f55054a.e();
            if (function1E3 != null) {
                function1E3.invoke(" block by app foreground");
                return;
            }
            return;
        }
        if (h(fSNConfigB)) {
            Function1 function1E4 = this.f55054a.e();
            if (function1E4 != null) {
                function1E4.invoke(" block by remote switcher");
                return;
            }
            return;
        }
        if (s(fSNConfigB)) {
            Function1 function1E5 = this.f55054a.e();
            if (function1E5 != null) {
                function1E5.invoke(" block by remote times limit");
                return;
            }
            return;
        }
        if (f(fSNConfigB)) {
            Function1 function1E6 = this.f55054a.e();
            if (function1E6 != null) {
                function1E6.invoke(" block by time limit");
                return;
            }
            return;
        }
        if (e()) {
            Function1 function1E7 = this.f55054a.e();
            if (function1E7 != null) {
                function1E7.invoke(" block by remote screen state");
                return;
            }
            return;
        }
        Intent intentH = this.f55054a.h();
        if (intentH == null) {
            Function1 function1E8 = this.f55054a.e();
            if (function1E8 != null) {
                function1E8.invoke(" block by intent == null, deeplink:" + fSNConfigB.getDeepLink());
                return;
            }
            return;
        }
        PendingIntent activity = PendingIntent.getActivity(this.f55055b, 1, intentH, 201326592);
        c cVarL = l();
        u(fSNConfigB);
        Function1 function1F = this.f55054a.f();
        if (function1F != null) {
            function1F.invoke(eventSource);
        }
        Context context = this.f55055b;
        NotificationCompat.m mVarL = new NotificationCompat.m(context, "dauupupup").J(this.f55054a.d()).O(-1).l(true);
        Intrinsics.g(mVarL, "Builder(ctx, CHANNEL_ID)…     .setAutoCancel(true)");
        cVarL.a(context, mVarL, activity, 10001);
        this.f55056c = true;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendFSI-");
        sb2.append(eventSource);
        sb2.append(" done");
    }

    public final void t(FSNConfig fSNConfig) {
        this.f55054a.l(fSNConfig);
    }
}
