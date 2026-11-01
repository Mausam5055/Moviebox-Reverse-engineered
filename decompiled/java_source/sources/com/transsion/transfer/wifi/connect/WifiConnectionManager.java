package com.transsion.transfer.wifi.connect;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.R$string;
import com.transsion.transfer.wifi.connect.adapter.AddNetWorkConnectAdapter;
import com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter;
import com.transsion.transfer.wifi.connect.adapter.DirectConnectAdapter;
import com.transsion.transfer.wifi.connect.adapter.WifiNetworkSpecifierAdapter;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.f;
import com.transsion.transfer.wifi.util.g;
import java.net.InetAddress;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import kv.c;

/* JADX INFO: loaded from: classes6.dex */
public final class WifiConnectionManager implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WifiConnectionManager f55832a = new WifiConnectionManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AppCompatActivity f55833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static n0 f55834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static lv.a f55835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static b f55836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static DirectConnectAdapter f55837f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static WifiNetworkSpecifierAdapter f55838g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AddNetWorkConnectAdapter f55839h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static long f55840i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile boolean f55841j;

    private WifiConnectionManager() {
    }

    private final void m() {
        g.b(g.f55970a, o() + " --> connect() --> SDK_INT或targetSdkVersion版本 < (Q = 29) Android 10", false, 2, null);
        if (f55839h == null) {
            f55839h = new AddNetWorkConnectAdapter();
        }
        AddNetWorkConnectAdapter addNetWorkConnectAdapter = f55839h;
        if (addNetWorkConnectAdapter != null) {
            BaseWifiConnectAdapter.b(addNetWorkConnectAdapter, null, f55835d, f55834c, this, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String o() {
        String simpleName = WifiConnectionManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object p(Continuation continuation) {
        return i.g(y0.b(), new WifiConnectionManager$getCorrectAddNetAddress$2(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    public final void q() {
        boolean z10;
        String strP;
        g gVar = g.f55970a;
        g.b(gVar, o() + " --> innerConnect() --> 建立 Wi-Fi 连接 --> start ....", false, 2, null);
        lv.a aVar = f55835d;
        if (aVar != null && (strP = aVar.p()) != null) {
            z10 = StringsKt.W(strP, "DIRECT-", false, 2, null) && WifiUtils.f55960a.q();
        }
        lv.a aVar2 = f55835d;
        if (TextUtils.isEmpty(aVar2 != null ? aVar2.p() : null)) {
            g.d(gVar, o() + " --> innerConnect() --> wifiInfoModel.wifiSsid is empty --> return", false, 2, null);
            b(2000);
            return;
        }
        WifiUtils wifiUtils = WifiUtils.f55960a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        boolean zR = wifiUtils.r(applicationA);
        if (z10 && !zR) {
            r();
        } else if (zR) {
            m();
        } else {
            w();
        }
    }

    private final void r() {
        g.b(g.f55970a, o() + " --> connect() --> 支持(Wi-Fi P2P) 且SDK_INT或targetSdkVersion版本 >= (Q = 29) -- Android 10", false, 2, null);
        Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ((ConnectivityManager) systemService).bindProcessToNetwork(null);
        if (f55837f == null) {
            f55837f = new DirectConnectAdapter();
        }
        DirectConnectAdapter directConnectAdapter = f55837f;
        if (directConnectAdapter != null) {
            BaseWifiConnectAdapter.b(directConnectAdapter, null, f55835d, f55834c, this, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        f.f55967a.c();
        WifiUtils.f55960a.x();
        DirectConnectAdapter directConnectAdapter = f55837f;
        if (directConnectAdapter != null) {
            directConnectAdapter.k();
        }
        f55837f = null;
        AddNetWorkConnectAdapter addNetWorkConnectAdapter = f55839h;
        if (addNetWorkConnectAdapter != null) {
            addNetWorkConnectAdapter.k();
        }
        f55839h = null;
        WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = f55838g;
        if (wifiNetworkSpecifierAdapter != null) {
            wifiNetworkSpecifierAdapter.k();
        }
        f55838g = null;
    }

    private final void u(int i11) {
        g.b(g.f55970a, o() + " --> resolveIP(netId: Int) --> 成功建立连接 --> 开始解析IP地址 -- netId = " + i11, false, 2, null);
        n0 n0Var = f55834c;
        if (n0Var != null) {
            k.d(n0Var, y0.c(), null, new WifiConnectionManager$resolveIP$2(null), 2, null);
        }
    }

    private final void v(InetAddress inetAddress) {
        String hostAddress;
        g gVar = g.f55970a;
        g.b(gVar, o() + " --> resolveIP(address: InetAddress?) --> 成功建立连接 --> 开始解析IP地址", false, 2, null);
        if (TextUtils.isEmpty(inetAddress != null ? inetAddress.getHostAddress() : null)) {
            n0 n0Var = f55834c;
            if (n0Var != null) {
                k.d(n0Var, y0.c(), null, new WifiConnectionManager$resolveIP$1(null), 2, null);
                return;
            }
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - f55840i;
        g.b(gVar, o() + " --> resolveIP(address: InetAddress?) --> 非系统级应用P2P连接成功耗时 = " + jCurrentTimeMillis + " -- ip = " + (inetAddress != null ? inetAddress.getHostAddress() : null), false, 2, null);
        if (inetAddress == null || (hostAddress = inetAddress.getHostAddress()) == null) {
            hostAddress = "";
        }
        e(hostAddress);
    }

    private final void w() {
        if (Build.VERSION.SDK_INT >= 29) {
            g.b(g.f55970a, o() + " --> connect() --> 不支持(Wi-Fi P2P) 且SDK_INT或targetSdkVersion版本 >= (Q = 29) -- Android 10", false, 2, null);
            if (f55838g == null) {
                f55838g = new WifiNetworkSpecifierAdapter();
            }
            WifiNetworkSpecifierAdapter wifiNetworkSpecifierAdapter = f55838g;
            if (wifiNetworkSpecifierAdapter != null) {
                wifiNetworkSpecifierAdapter.a(f55833b, f55835d, f55834c, this);
            }
        }
    }

    @Override // com.transsion.transfer.wifi.connect.b
    public void a(Network network) {
        b.a.b(this, network);
    }

    @Override // com.transsion.transfer.wifi.connect.b
    public void b(int i11) {
        g.d(g.f55970a, o() + " --> onFail() --> code = " + i11, false, 2, null);
        if (i11 == 2001 || i11 == 2012) {
            c.f68396a.d();
        } else {
            c.f68396a.e(i11);
        }
        n0 n0Var = f55834c;
        if (n0Var != null) {
            k.d(n0Var, null, null, new WifiConnectionManager$onFail$1(i11, null), 3, null);
        }
    }

    @Override // com.transsion.transfer.wifi.connect.b
    public void c(InetAddress inetAddress) {
        v(inetAddress);
    }

    @Override // com.transsion.transfer.wifi.connect.b
    public void d(int i11) {
        u(i11);
    }

    @Override // com.transsion.transfer.wifi.connect.b
    public void e(String ip2) {
        Intrinsics.h(ip2, "ip");
        b.a.c(this, ip2);
        c.f68396a.f(System.currentTimeMillis() - f55840i);
        f55841j = false;
        b bVar = f55836e;
        if (bVar != null) {
            bVar.e(ip2);
        }
    }

    public final void n(AppCompatActivity appCompatActivity, lv.a aVar, n0 n0Var, b bVar) {
        if (f55841j) {
            ToastUtils.s(Utils.a().getResources().getString(R$string.transfer_wifi_connect_error_tip), new Object[0]);
            g.b(g.f55970a, o() + " --> connectWifi() --> 已经有一个任务在连接了，请稍后", false, 2, null);
            return;
        }
        f55841j = true;
        f55840i = System.currentTimeMillis();
        f55834c = n0Var;
        f55835d = aVar;
        f55833b = appCompatActivity;
        f55836e = bVar;
        onStart();
        n0 n0Var2 = f55834c;
        if (n0Var2 != null) {
            k.d(n0Var2, null, null, new WifiConnectionManager$connect$1(null), 3, null);
        }
    }

    @Override // com.transsion.transfer.wifi.connect.b
    public void onStart() {
        c.f68396a.g();
        b bVar = f55836e;
        if (bVar != null) {
            bVar.onStart();
        }
    }

    public final void s() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            g gVar = g.f55970a;
            WifiConnectionManager wifiConnectionManager = f55832a;
            g.h(gVar, wifiConnectionManager.o() + " --> release() --> 接收端开始释放资源", false, 2, null);
            f55836e = null;
            f55834c = null;
            f55841j = false;
            f55840i = 0L;
            wifiConnectionManager.t();
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f55970a, f55832a.o() + " --> release() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
    }
}
