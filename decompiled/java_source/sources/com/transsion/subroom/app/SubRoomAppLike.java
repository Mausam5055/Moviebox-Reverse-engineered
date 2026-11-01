package com.transsion.subroom.app;

import ak.a0;
import ak.h;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import android.os.Looper;
import androidx.work.WorkManager;
import androidx.work.b;
import com.blankj.utilcode.util.t;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.tencent.tinker.entry.DefaultApplicationLike;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.baselib.config.CrashHandler;
import com.transsion.baselib.net.AppLifeStatusInterceptor;
import com.transsion.baselib.net.i;
import com.transsion.baselib.report.l;
import com.transsion.baseui.activity.k;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.startup.StartupManager;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.startup.pref.consume.c;
import com.transsion.subroom.app.SubRoomAppLike;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicBoolean;
import ko.l0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lg.a;
import nh.m;
import nh.n;
import sm.f;
import xg.e;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 52\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u00016B9\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u001f\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u0014J\u0019\u0010\u001f\u001a\u00020\u00122\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0012H\u0016¢\u0006\u0004\b!\u0010\u0014J\u0017\u0010#\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082D¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010+\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u0010/\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0014\u00104\u001a\u0002018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103¨\u00067"}, d2 = {"Lcom/transsion/subroom/app/SubRoomAppLike;", "Lcom/tencent/tinker/entry/DefaultApplicationLike;", "Landroid/content/ComponentCallbacks2;", "Landroidx/work/b$c;", "Lnh/n;", "Landroid/app/Application;", "app", "", "tinkerFlags", "", "tinkerLoadVerifyFlag", "", "applicationStartElapsedTime", "applicationStartMillisTime", "Landroid/content/Intent;", "tinkerResultIntent", "<init>", "(Landroid/app/Application;IZJJLandroid/content/Intent;)V", "", "applyHotfixConfig", "()V", "applyHotfixConfigInternal", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "Landroid/content/Context;", "base", "onBaseContextAttached", "(Landroid/content/Context;)V", "onCreate", PermissionConstant.level, "onTrimMemory", "(I)V", "", "TAG", "Ljava/lang/String;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "hotfixConfigApplying", "Ljava/util/concurrent/atomic/AtomicBoolean;", "hotfixConfigApplied", "Z", "isMainProcess$delegate", "Lkotlin/Lazy;", "isMainProcess", "()Z", "Landroidx/work/b;", "getWorkManagerConfiguration", "()Landroidx/work/b;", "workManagerConfiguration", "Companion", "a", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class SubRoomAppLike extends DefaultApplicationLike implements ComponentCallbacks2, b.c, n {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String TAG;
    private volatile boolean hotfixConfigApplied;
    private final AtomicBoolean hotfixConfigApplying;

    /* JADX INFO: renamed from: isMainProcess$delegate, reason: from kotlin metadata */
    private final Lazy isMainProcess;

    /* JADX INFO: renamed from: com.transsion.subroom.app.SubRoomAppLike$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Function0 k() {
            return new Function0() { // from class: zt.i
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(SubRoomAppLike.Companion.l());
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean l() {
            Boolean boolM1;
            ConfigBean configBeanC = f.f75407c.a().c("brandwidth_redundancy_on", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getBrandWidthRedundancyOn API: ");
            sb2.append(value);
            if (value == null || value.length() == 0 || (boolM1 = StringsKt.m1(value)) == null) {
                return false;
            }
            return boolM1.booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Function0 m() {
            return new Function0() { // from class: zt.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Integer.valueOf(SubRoomAppLike.Companion.n());
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int n() {
            Integer numV;
            ConfigBean configBeanC = f.f75407c.a().c("sa_player_max_buffer_time", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getPlayerBufferingTime API: ");
            sb2.append(value);
            if (value == null || value.length() == 0 || (numV = StringsKt.v(value)) == null) {
                return 20000;
            }
            return numV.intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Function0 o() {
            return new Function0() { // from class: zt.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(SubRoomAppLike.Companion.p());
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean p() {
            ConfigBean configBeanC = f.f75407c.a().c("player_async", true);
            return Intrinsics.c(configBeanC != null ? configBeanC.getValue() : null, "false");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Function0 q() {
            return new Function0() { // from class: zt.k
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(SubRoomAppLike.Companion.r());
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean r() {
            return !h.f641a.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Function0 s() {
            return new Function0() { // from class: zt.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Integer.valueOf(SubRoomAppLike.Companion.t());
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int t() {
            ConfigBean configBeanC = f.f75407c.a().c("sb_player_type", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value == null || value.length() == 0) {
                return 1;
            }
            Integer numV = StringsKt.v(value);
            if (numV != null) {
                return numV.intValue();
            }
            return 0;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubRoomAppLike(Application app, int i11, boolean z10, long j11, long j12, Intent intent) {
        super(app, i11, z10, j11, j12, intent);
        Intrinsics.h(app, "app");
        this.TAG = "SubRoomAppLike";
        this.hotfixConfigApplying = new AtomicBoolean(false);
        this.isMainProcess = LazyKt.b(new Function0() { // from class: zt.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(t.e());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _get_workManagerConfiguration_$lambda$3(Throwable throwable) {
        Intrinsics.h(throwable, "throwable");
        a0.f627a.f(throwable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyHotfixConfig() {
        if (!this.hotfixConfigApplying.compareAndSet(false, true)) {
            a.C0828a.f(a.f68839a, this.TAG, "applyHotfixConfig already running, skip", false, 4, null);
            return;
        }
        try {
            applyHotfixConfigInternal();
        } finally {
            this.hotfixConfigApplying.set(false);
        }
    }

    private final void applyHotfixConfigInternal() {
        a.C0828a.f(a.f68839a, this.TAG, "applyHotfixConfig start", false, 4, null);
        qu.b.a();
        if (ou.a.s().I()) {
            nu.h.t(getApplication(), zt.a.f79457a.a());
            this.hotfixConfigApplied = true;
        }
    }

    private final boolean isMainProcess() {
        return ((Boolean) this.isMainProcess.getValue()).booleanValue();
    }

    @Override // androidx.work.b.c
    public b getWorkManagerConfiguration() {
        b.a aVarX = new b.a().x(4);
        String packageName = getApplication().getPackageName();
        Intrinsics.g(packageName, "getPackageName(...)");
        return aVarX.v(packageName).w(new androidx.core.util.a() { // from class: zt.h
            @Override // androidx.core.util.a
            public final void accept(Object obj) {
                SubRoomAppLike._get_workManagerConfiguration_$lambda$3((Throwable) obj);
            }
        }).a();
    }

    @Override // com.tencent.tinker.entry.DefaultApplicationLike, com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onBaseContextAttached(Context base) {
        ou.a.H(ou.a.b.z(ou.a.s()).H("v8").t("ps").s());
        nu.h.k(base, 10000L);
        nu.h.u(this);
        super.onBaseContextAttached(base);
        StartupManager.f54503g.a().A(base);
        c.f54529a.j();
        com.transsion.baselib.net.f.f43327a.c();
    }

    @Override // nh.n
    public void onConnected() {
        n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        if (this.hotfixConfigApplied) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: zt.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f79464a.applyHotfixConfig();
            }
        }, 10000L);
    }

    @Override // com.tencent.tinker.entry.DefaultApplicationLike, com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onCreate() {
        super.onCreate();
        CrashHandler.f43013c.a().h(getApplication());
        CrashGuard.f54666a.b();
        if (isMainProcess()) {
            zt.c cVar = zt.c.f79460a;
            Application application = getApplication();
            Intrinsics.g(application, "getApplication(...)");
            cVar.a(application);
            WorkManager.a aVar = WorkManager.f15399a;
            Application application2 = getApplication();
            Intrinsics.g(application2, "getApplication(...)");
            aVar.b(application2, getWorkManagerConfiguration());
            l0 l0Var = l0.f66968a;
            Companion companion = INSTANCE;
            l0Var.F(companion.q());
            l0Var.C(companion.o());
            l0Var.G(companion.s());
            l0Var.E(companion.m());
            int iJ = l0Var.j();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getPlayerBufferingTimeRequest: ");
            sb2.append(iJ);
            l0Var.D(companion.k());
            boolean zI = l0Var.i();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getBrandWidthRedundancyOnRequest: ");
            sb3.append(zI);
            e eVar = e.f78303a;
            eVar.a(new i());
            eVar.a(new AppLifeStatusInterceptor());
            CacheIpPool.f40825a.o("api6.aoneroom.com");
            StartupManager startupManagerA = StartupManager.f54503g.a();
            Application application3 = getApplication();
            Intrinsics.g(application3, "getApplication(...)");
            startupManagerA.c0(application3);
            AppStartReport appStartReport = AppStartReport.f54517a;
            appStartReport.l("startup_mgr_init");
            m mVar = m.f70474a;
            mVar.l(this);
            Application application4 = getApplication();
            Intrinsics.g(application4, "getApplication(...)");
            if (mVar.j(application4)) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: zt.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f79463a.applyHotfixConfig();
                    }
                }, 10000L);
            }
            if (!com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("dark_mode_follow_sys", false)) {
                androidx.appcompat.app.f.O(2);
            }
            getApplication().registerActivityLifecycleCallbacks(l.f43359a);
            appStartReport.l("app_create_init");
        } else {
            StartupManager startupManagerA2 = StartupManager.f54503g.a();
            Application application5 = getApplication();
            Intrinsics.g(application5, "getApplication(...)");
            startupManagerA2.V(application5);
        }
        AppStartReport.f54517a.f(new AppStartDotState(AppStartDotState.APP_END, 0L, 2, null));
        k.b(null, 1, null);
    }

    @Override // nh.n
    public void onDisconnected() {
    }

    @Override // com.tencent.tinker.entry.DefaultApplicationLike, com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onTrimMemory(int level) {
        StartupManager.f54503g.a().j0(level, isMainProcess());
    }
}
