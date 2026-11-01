package com.transsion.transfer.wifi.create;

import android.provider.Settings;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.wifi.create.adapter.P2PWifiAdapter;
import com.transsion.transfer.wifi.create.adapter.b;
import com.transsion.transfer.wifi.create.adapter.c;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.f;
import com.transsion.transfer.wifi.util.g;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class WifiCreateManager implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WifiCreateManager f55882a = new WifiCreateManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f55883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f55884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f55885d;

    private WifiCreateManager() {
    }

    private final String h() {
        String simpleName = WifiCreateManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b i() {
        if (WifiUtils.f55960a.q()) {
            g.b(g.f55970a, h() + " --> initWifiAdapterWithAndroidVersion() --> wifiManager.isP2pSupported -> P2pWifiAdapter()", false, 2, null);
            return new P2PWifiAdapter();
        }
        if (Settings.System.canWrite(Utils.a().getApplicationContext())) {
            g.b(g.f55970a, h() + " --> initWifiAdapterWithAndroidVersion() --> checkCanWriteSetting(TransBaseApplication.CONTEXT) -> ApWifiAdapter()", false, 2, null);
            return new com.transsion.transfer.wifi.create.adapter.a();
        }
        g.b(g.f55970a, h() + " --> initWifiAdapterWithAndroidVersion() --> else -> LocalHostWifiAdapter()", false, 2, null);
        return new c();
    }

    @Override // com.transsion.transfer.wifi.create.a
    public void a(lv.a aVar, long j11) {
        a aVar2 = f55883b;
        if (aVar2 != null) {
            aVar2.a(aVar, System.currentTimeMillis() - f55885d);
        }
    }

    @Override // com.transsion.transfer.wifi.create.a
    public void b(int i11, long j11) {
        a aVar = f55883b;
        if (aVar != null) {
            aVar.b(i11, System.currentTimeMillis() - f55885d);
        }
        j();
    }

    public final void g(lv.a wifiInfoModel, n0 scope, a listener) {
        Intrinsics.h(wifiInfoModel, "wifiInfoModel");
        Intrinsics.h(scope, "scope");
        Intrinsics.h(listener, "listener");
        k.d(scope, null, null, new WifiCreateManager$createWifi$1(listener, wifiInfoModel, scope, null), 3, null);
    }

    public final void j() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            f55883b = null;
            g gVar = g.f55970a;
            WifiCreateManager wifiCreateManager = f55882a;
            g.h(gVar, wifiCreateManager.h() + " --> releaseWifi() --> 发送端开始释放资源", false, 2, null);
            WifiUtils.f55960a.x();
            kv.a.f68393a.b();
            f.f55967a.c();
            b bVar = f55884c;
            if (bVar != null) {
                bVar.f();
            } else {
                g.b(gVar, wifiCreateManager.h() + " --> releaseWifi() --> wifiAdapter == null", false, 2, null);
            }
            f55884c = null;
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f55970a, f55882a.h() + " --> releaseWifi() --> exception = " + thM457exceptionOrNullimpl, false, 2, null);
    }

    @Override // com.transsion.transfer.wifi.create.a
    public void onStart() {
        f55885d = System.currentTimeMillis();
        kv.c.f68396a.k();
        a aVar = f55883b;
        if (aVar != null) {
            aVar.onStart();
        }
    }
}
