package com.transsion.transfer.wifi.connect.adapter;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.wifi.WifiNetworkSpecifier;
import android.text.TextUtils;
import androidx.p009lifecycle.f;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.bridge.w;
import com.cloud.tmc.integration.bridge.y;
import com.transsion.transfer.wifi.util.g;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class WifiNetworkSpecifierAdapter extends BaseWifiConnectAdapter {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f55875g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f55873e = LazyKt.b(new Function0() { // from class: com.transsion.transfer.wifi.connect.adapter.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WifiNetworkSpecifierAdapter.r();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f55874f = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b f55876h = new b();

    public static final class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            Object objM454constructorimpl;
            Unit unit;
            Intrinsics.h(network, "network");
            super.onAvailable(network);
            g.b(g.f55970a, WifiNetworkSpecifierAdapter.this.e() + " --> connect() --> onAvailable() --> WifiNetworkSpecifier connect success", false, 2, null);
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = WifiNetworkSpecifierAdapter.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                wifiNetworkSpecifierAdapter.q().bindProcessToNetwork(network);
                com.transsion.transfer.wifi.connect.b bVarH = wifiNetworkSpecifierAdapter.h();
                if (bVarH != null) {
                    bVarH.c(null);
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter2 = WifiNetworkSpecifierAdapter.this;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                return;
            }
            g.d(g.f55970a, wifiNetworkSpecifierAdapter2.e() + " --> connect() --> onAvailable() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH2 = wifiNetworkSpecifierAdapter2.h();
            if (bVarH2 != null) {
                bVarH2.b(Sdk$SDKMetric.SDKMetricType.AD_WILL_CLOSE_VALUE);
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Object objM454constructorimpl;
            Intrinsics.h(network, "network");
            super.onLost(network);
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = WifiNetworkSpecifierAdapter.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                wifiNetworkSpecifierAdapter.q().bindProcessToNetwork(null);
                g.b(g.f55970a, wifiNetworkSpecifierAdapter.e() + " --> connect() --> onLost() --> bindProcessToNetwork(null) --> success", false, 2, null);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter2 = WifiNetworkSpecifierAdapter.this;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                g.b(g.f55970a, wifiNetworkSpecifierAdapter2.e() + " --> connect() --> onLost() --> bindProcessToNetwork() --> 发生异常 --> it = " + thM457exceptionOrNullimpl, false, 2, null);
            }
            com.transsion.transfer.wifi.connect.b bVarH = WifiNetworkSpecifierAdapter.this.h();
            if (bVarH != null) {
                bVarH.a(network);
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            super.onUnavailable();
            g.b(g.f55970a, WifiNetworkSpecifierAdapter.this.e() + " --> connect() --> onUnavailable() --> 如果在指定的超时时间内没有找到网络，则调用,用户主动取消也调用这个。", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH = WifiNetworkSpecifierAdapter.this.h();
            if (bVarH != null) {
                bVarH.b(Sdk$SDKMetric.SDKMetricType.APP_TERM_DURING_AD_BEFORE_IMPRESSION_VALUE);
            }
        }
    }

    public static final class b implements f {
        b() {
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onDestroy(u uVar) {
            androidx.p009lifecycle.e.b(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onPause(u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onResume(u owner) {
            com.transsion.transfer.wifi.connect.b bVarH;
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.d(this, owner);
            if (!WifiNetworkSpecifierAdapter.this.f55875g || (bVarH = WifiNetworkSpecifierAdapter.this.h()) == null) {
                return;
            }
            bVarH.b(2012);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onStop(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.f(this, owner);
            WifiNetworkSpecifierAdapter.this.f55875g = true;
            g.h(g.f55970a, WifiNetworkSpecifierAdapter.this.e() + " --> observer --> onStop() -- isStop = " + WifiNetworkSpecifierAdapter.this.f55875g, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConnectivityManager q() {
        return (ConnectivityManager) this.f55873e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConnectivityManager r() {
        Object systemService = Utils.a().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        return (ConnectivityManager) systemService;
    }

    @Override // com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter
    public void c() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            n0 n0VarG = g();
            if (n0VarG != null) {
                k.d(n0VarG, null, null, new WifiNetworkSpecifierAdapter$doClose$1$1(this, null), 3, null);
            }
            q().unregisterNetworkCallback(this.f55874f);
            q().bindProcessToNetwork(null);
            g.h(g.f55970a, e() + " --> close() --> end", false, 2, null);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f55970a, e() + " --> close() --> 发生异常 --> it = " + thM457exceptionOrNullimpl, false, 2, null);
    }

    @Override // com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter
    public void d() {
        String strP;
        String strO;
        g.b(g.f55970a, e() + " --> connect() --> start connect with WifiNetworkSpecifier --> start ....", false, 2, null);
        n0 n0VarG = g();
        if (n0VarG != null) {
            k.d(n0VarG, null, null, new WifiNetworkSpecifierAdapter$doConnect$1(this, null), 3, null);
        }
        WifiNetworkSpecifier.Builder builderA = y.a();
        lv.a aVarI = i();
        String str = "";
        if (aVarI == null || (strP = aVarI.p()) == null) {
            strP = "";
        }
        WifiNetworkSpecifier.Builder ssid = builderA.setSsid(strP);
        Intrinsics.g(ssid, "setSsid(...)");
        lv.a aVarI2 = i();
        if (!TextUtils.isEmpty(aVarI2 != null ? aVarI2.o() : null)) {
            lv.a aVarI3 = i();
            if (aVarI3 != null && (strO = aVarI3.o()) != null) {
                str = strO;
            }
            ssid.setWpa2Passphrase(str);
        }
        q().requestNetwork(new NetworkRequest.Builder().addTransportType(1).removeCapability(12).setNetworkSpecifier(w.a(ssid.build())).build(), this.f55874f);
    }
}
