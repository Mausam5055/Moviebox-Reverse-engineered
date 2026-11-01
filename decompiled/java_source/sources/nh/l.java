package nh;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.lib.util.networkinfo.NetworkType;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f70465g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Lazy f70466h = LazyKt.b(new Function0() { // from class: nh.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l.B();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f70467i = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: nh.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l.k();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Boolean f70469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Boolean f70470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private NetworkType f70471d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f70468a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function0 f70472e = new Function0() { // from class: nh.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l.A(this.f70459a);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function0 f70473f = new Function0() { // from class: nh.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l.J(this.f70460a);
        }
    };

    /* JADX INFO: loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final l a() {
            return (l) l.f70467i.getValue();
        }

        public final Handler b() {
            return (Handler) l.f70466h.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(l lVar) {
        m mVar = m.f70474a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        boolean zJ = mVar.j(applicationA);
        Application applicationA2 = Utils.a();
        Intrinsics.g(applicationA2, "getApp(...)");
        lVar.f70470c = Boolean.valueOf(mVar.i(applicationA2));
        int iV = lVar.v();
        if (zJ) {
            lVar.f70469b = Boolean.TRUE;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(lVar.u());
            sb2.append(" --> onLost() --> disposeOnLost --> lostRunnable --> networkConnected = ");
            sb2.append(zJ);
            sb2.append(" netState = ");
            sb2.append(iV);
            sb2.append(" --  网络重新连接了");
            for (n nVar : lVar.f70468a) {
                if (Intrinsics.c(lVar.f70469b, Boolean.TRUE)) {
                    nVar.onConnected();
                }
            }
        } else {
            lVar.G();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(lVar.u());
            sb3.append(" --> onLost() --> disposeOnLost --> lostRunnable --> networkConnected = ");
            sb3.append(zJ);
            sb3.append(" netState = ");
            sb3.append(iV);
            sb3.append(" -- 网络断开了");
            for (n nVar2 : lVar.f70468a) {
                if (Intrinsics.c(lVar.f70469b, Boolean.FALSE)) {
                    nVar2.onDisconnected();
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler B() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(l lVar) {
        Context applicationContext;
        try {
            Application applicationA = Utils.a();
            Object systemService = (applicationA == null || (applicationContext = applicationA.getApplicationContext()) == null) ? null : applicationContext.getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), lVar);
            }
        } catch (SecurityException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(l lVar) {
        Context applicationContext;
        try {
            Application applicationA = Utils.a();
            Object systemService = (applicationA == null || (applicationContext = applicationA.getApplicationContext()) == null) ? null : applicationContext.getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), lVar);
            }
        } catch (Exception unused) {
        }
    }

    private final void G() {
        Boolean bool = Boolean.FALSE;
        this.f70469b = bool;
        this.f70470c = bool;
        this.f70471d = null;
    }

    private final void H() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(u());
        sb2.append(" --> startTimer() --> 开启定时任务");
        Handler handlerB = f70465g.b();
        final Function0 function0 = this.f70473f;
        handlerB.postDelayed(new Runnable() { // from class: nh.j
            @Override // java.lang.Runnable
            public final void run() {
                l.I(function0);
            }
        }, TmcConstants.DEBUG_REQUEST_TIME_INTERVAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J(l lVar) {
        m mVar = m.f70474a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        lVar.f70470c = Boolean.valueOf(mVar.i(applicationA));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(lVar.u());
        sb2.append(" --> timerRunnable --> isValidated = ");
        sb2.append(lVar.f70470c);
        lVar.H();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l k() {
        return new l();
    }

    private final void n(final Network network, final NetworkCapabilities networkCapabilities) {
        if (networkCapabilities.hasCapability(12)) {
            Boolean bool = this.f70469b;
            Boolean bool2 = Boolean.TRUE;
            if (Intrinsics.c(bool, bool2)) {
                return;
            }
            this.f70469b = bool2;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(u());
            sb2.append(" --> onCapabilitiesChanged --> disposeConnect --> 表示是否连接上了互联网（不关心是否可以上网");
            f70465g.b().post(new Runnable() { // from class: nh.c
                @Override // java.lang.Runnable
                public final void run() {
                    l.o(this.f70456a, network, networkCapabilities);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(l lVar, Network network, NetworkCapabilities networkCapabilities) {
        for (n nVar : lVar.f70468a) {
            if (Intrinsics.c(lVar.f70469b, Boolean.TRUE)) {
                nVar.onConnected(network, networkCapabilities);
            }
        }
    }

    private final void p(NetworkCapabilities networkCapabilities) {
        NetworkType networkTypeW;
        if (networkCapabilities.hasTransport(1)) {
            networkTypeW = NetworkType.NETWORK_WIFI;
        } else {
            networkTypeW = networkCapabilities.hasTransport(0) ? w() : NetworkType.NETWORK_UNKNOWN;
        }
        if (this.f70471d == networkTypeW) {
            return;
        }
        this.f70471d = networkTypeW;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("当前网络类型是 mNetworkType = ");
        sb2.append(this.f70471d);
    }

    private final void q() {
        a aVar = f70465g;
        Handler handlerB = aVar.b();
        final Function0 function0 = this.f70472e;
        handlerB.removeCallbacks(new Runnable() { // from class: nh.h
            @Override // java.lang.Runnable
            public final void run() {
                l.s(function0);
            }
        });
        Handler handlerB2 = aVar.b();
        final Function0 function1 = this.f70472e;
        handlerB2.postDelayed(new Runnable() { // from class: nh.i
            @Override // java.lang.Runnable
            public final void run() {
                l.r(function1);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(Function0 function0) {
        function0.invoke();
    }

    private final void t(NetworkCapabilities networkCapabilities) {
        this.f70470c = Boolean.valueOf(networkCapabilities.hasCapability(16));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(u());
        sb2.append(" --> disposeValidated() --> isValidated = ");
        sb2.append(this.f70470c);
        sb2.append(" netState = ");
        sb2.append(v());
    }

    private final String u() {
        String simpleName = l.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final NetworkType w() {
        if (Build.VERSION.SDK_INT >= 24 && androidx.core.content.b.checkSelfPermission(Utils.a(), "android.permission.READ_PHONE_STATE") == 0) {
            TelephonyManager telephonyManager = (TelephonyManager) Utils.a().getSystemService("phone");
            Integer numValueOf = telephonyManager != null ? Integer.valueOf(telephonyManager.getDataNetworkType()) : null;
            if ((numValueOf != null && numValueOf.intValue() == 1) || ((numValueOf != null && numValueOf.intValue() == 2) || ((numValueOf != null && numValueOf.intValue() == 4) || ((numValueOf != null && numValueOf.intValue() == 11) || (numValueOf != null && numValueOf.intValue() == 7))))) {
                return NetworkType.NETWORK_2G;
            }
            if ((numValueOf != null && numValueOf.intValue() == 5) || ((numValueOf != null && numValueOf.intValue() == 6) || ((numValueOf != null && numValueOf.intValue() == 12) || ((numValueOf != null && numValueOf.intValue() == 8) || ((numValueOf != null && numValueOf.intValue() == 9) || ((numValueOf != null && numValueOf.intValue() == 10) || ((numValueOf != null && numValueOf.intValue() == 15) || (numValueOf != null && numValueOf.intValue() == 14)))))))) {
                return NetworkType.NETWORK_3G;
            }
            if ((numValueOf != null && numValueOf.intValue() == 13) || (numValueOf != null && numValueOf.intValue() == 19)) {
                return NetworkType.NETWORK_4G;
            }
            if (numValueOf != null && numValueOf.intValue() == 20) {
                return NetworkType.NETWORK_5G;
            }
            return (numValueOf != null && numValueOf.intValue() == 0) ? NetworkType.NETWORK_UNKNOWN : NetworkType.NETWORK_UNKNOWN;
        }
        return m.f70474a.d();
    }

    private final boolean z() {
        if (this.f70470c != null) {
            return Intrinsics.c(this.f70470c, Boolean.TRUE);
        }
        m mVar = m.f70474a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return mVar.i(applicationA);
    }

    public final void C() {
        Context applicationContext;
        try {
            Application applicationA = Utils.a();
            Object systemService = (applicationA == null || (applicationContext = applicationA.getApplicationContext()) == null) ? null : applicationContext.getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), this);
            }
        } catch (SecurityException unused) {
            f70465g.b().postDelayed(new Runnable() { // from class: nh.k
                @Override // java.lang.Runnable
                public final void run() {
                    l.D(this.f70464a);
                }
            }, 500L);
        } catch (Exception unused2) {
            f70465g.b().postDelayed(new Runnable() { // from class: nh.b
                @Override // java.lang.Runnable
                public final void run() {
                    l.E(this.f70455a);
                }
            }, 2000L);
        }
        H();
    }

    public final void F(n nVar) {
        if (nVar == null || this.f70468a.contains(nVar)) {
            return;
        }
        this.f70468a.add(nVar);
    }

    public final void K(n nVar) {
        if (nVar != null) {
            this.f70468a.remove(nVar);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        Intrinsics.h(network, "network");
        super.onAvailable(network);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onBlockedStatusChanged(Network network, boolean z10) {
        Intrinsics.h(network, "network");
        super.onBlockedStatusChanged(network, z10);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Object objM454constructorimpl;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onCapabilitiesChanged(network, networkCapabilities);
        try {
            Result.Companion companion = Result.INSTANCE;
            n(network, networkCapabilities);
            t(networkCapabilities);
            p(networkCapabilities);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        Log.e("net_log", u() + " --> it = " + thM457exceptionOrNullimpl);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        Intrinsics.h(network, "network");
        Intrinsics.h(linkProperties, "linkProperties");
        super.onLinkPropertiesChanged(network, linkProperties);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLosing(Network network, int i11) {
        Intrinsics.h(network, "network");
        super.onLosing(network, i11);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Intrinsics.h(network, "network");
        super.onLost(network);
        q();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        super.onUnavailable();
    }

    public final int v() {
        if (y() && z()) {
            return 2;
        }
        if (y()) {
            return 1;
        }
        return !y() ? 0 : 3;
    }

    public final NetworkType x() {
        NetworkType networkType = this.f70471d;
        if (networkType != null) {
            return networkType;
        }
        m mVar = m.f70474a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        if (mVar.k(applicationA)) {
            NetworkType networkType2 = NetworkType.NETWORK_WIFI;
            this.f70471d = networkType2;
            return networkType2;
        }
        NetworkType networkTypeW = w();
        this.f70471d = networkTypeW;
        return networkTypeW;
    }

    public final boolean y() {
        if (this.f70469b == null) {
            m mVar = m.f70474a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            return mVar.j(applicationA);
        }
        if (!Intrinsics.c(this.f70469b, Boolean.FALSE)) {
            return Intrinsics.c(this.f70469b, Boolean.TRUE);
        }
        m mVar2 = m.f70474a;
        Application applicationA2 = Utils.a();
        Intrinsics.g(applicationA2, "getApp(...)");
        return mVar2.j(applicationA2);
    }
}
