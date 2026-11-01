package com.transsion.transfer.wifi.connect.adapter;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.os.Build;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.R$string;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.g;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class AddNetWorkConnectAdapter extends BaseWifiConnectAdapter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f55844f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f55845g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f55846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Network f55847i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List f55851m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f55843e = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f55848j = 10;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f55849k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f55850l = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f55852n = 1000;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f55853o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f55854p = 5;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f55855q = 15;

    private final int m(int i11, String str, String str2) {
        g.b(g.f55970a, e() + " --> blindConnect() --> Connect Step 4 No Need Scan Result,Force Connect ", false, 2, null);
        if (i11 != -1) {
            return i11;
        }
        String string = Utils.a().getApplicationContext().getString(R$string.wifi_direct_prefix);
        Intrinsics.g(string, "getString(...)");
        if (StringsKt.W(str, string, false, 2, null)) {
            int iV = v(str, str2, "PSK");
            if (iV == -1) {
                iV = v(str, str2, "EAP");
            }
            return iV == -1 ? v(str, str2, "WEP") : iV;
        }
        if (TextUtils.isEmpty(str2)) {
            return v(str, str2, "OPEN");
        }
        int iV2 = v(str, str2, "PSK");
        if (iV2 == -1) {
            iV2 = v(str, str2, "EAP");
        }
        return iV2 == -1 ? v(str, str2, "WEP") : iV2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(Continuation continuation) throws Throwable {
        AddNetWorkConnectAdapter$connectNetWork$1 addNetWorkConnectAdapter$connectNetWork$1;
        Object objM454constructorimpl;
        Object objM454constructorimpl2;
        if (continuation instanceof AddNetWorkConnectAdapter$connectNetWork$1) {
            addNetWorkConnectAdapter$connectNetWork$1 = (AddNetWorkConnectAdapter$connectNetWork$1) continuation;
            int i11 = addNetWorkConnectAdapter$connectNetWork$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                addNetWorkConnectAdapter$connectNetWork$1.label = i11 - Integer.MIN_VALUE;
            } else {
                addNetWorkConnectAdapter$connectNetWork$1 = new AddNetWorkConnectAdapter$connectNetWork$1(this, continuation);
            }
        } else {
            addNetWorkConnectAdapter$connectNetWork$1 = new AddNetWorkConnectAdapter$connectNetWork$1(this, continuation);
        }
        Object obj = addNetWorkConnectAdapter$connectNetWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = addNetWorkConnectAdapter$connectNetWork$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            addNetWorkConnectAdapter$connectNetWork$1.label = 1;
            if (u0.a(500L, addNetWorkConnectAdapter$connectNetWork$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        s();
        try {
            Result.Companion companion = Result.INSTANCE;
            Ref.IntRef intRef = new Ref.IntRef();
            this.f55843e = -1;
            this.f55844f = false;
            g gVar = g.f55970a;
            String strE = e();
            lv.a aVarI = i();
            g.b(gVar, strE + " --> connectNetWork() --> 连接网络 --> Connect Step 1 START_CONNECT --> Target SSID = " + (aVarI != null ? aVarI.p() : null), false, 2, null);
            while (true) {
                WifiUtils wifiUtils = WifiUtils.f55960a;
                if (wifiUtils.m().getWifiState() == 3 || intRef.element >= this.f55848j * 2 || this.f55846h) {
                    break;
                }
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    g.b(g.f55970a, e() + " --> connectNetWork() --> wait wifi open, time = " + intRef.element, false, 2, null);
                    wifiUtils.m().setWifiEnabled(true);
                    Thread.sleep(350L);
                    objM454constructorimpl2 = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th2));
                }
                if (Result.m457exceptionOrNullimpl(objM454constructorimpl2) != null) {
                    return Unit.f67061a;
                }
                intRef.element++;
            }
            t();
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th3));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            g.d(g.f55970a, e() + " --> connectNetWork() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH = h();
            if (bVarH != null) {
                bVarH.b(2030);
            }
        }
        return Unit.f67061a;
    }

    private final int o(String str, String str2, String str3) throws Throwable {
        int i11 = -1;
        try {
            synchronized (this.f55853o) {
                try {
                    WifiUtils wifiUtils = WifiUtils.f55960a;
                    if (wifiUtils.j().equals(str)) {
                        g.b(g.f55970a, "Current MB SSID had Connected. current SSID = " + wifiUtils.j(), false, 2, null);
                        return 0;
                    }
                    this.f55850l = this.f55849k;
                    WifiConfiguration wifiConfiguration = new WifiConfiguration();
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                    String str4 = String.format("\"%s\"", Arrays.copyOf(new Object[]{str}, 1));
                    Intrinsics.g(str4, "format(...)");
                    wifiConfiguration.SSID = str4;
                    wifiConfiguration.priority = 1000000;
                    com.transsion.transfer.wifi.util.a.f55962a.f(wifiConfiguration, str3, str2);
                    int i12 = 0;
                    int iAddNetwork = -1;
                    while (i12 < this.f55854p && !this.f55846h && (iAddNetwork = WifiUtils.f55960a.m().addNetwork(wifiConfiguration)) == -1) {
                        try {
                            i12++;
                            try {
                                Thread.sleep(350L);
                            } catch (InterruptedException e11) {
                                g.d(g.f55970a, e() + " --> connectToWifi() --> addNetwork Interrupt = " + e11, false, 2, null);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    g gVar = g.f55970a;
                    g.h(gVar, e() + " --> connectToWifi() --> new network id:" + iAddNetwork, false, 2, null);
                    try {
                        if (iAddNetwork == -1) {
                            g.h(gVar, e() + " --> connectToWifi() --> add ssid to network failure!", false, 2, null);
                            return iAddNetwork;
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            com.transsion.transfer.wifi.util.a.f55962a.g(WifiUtils.f55960a.m(), wifiConfiguration);
                        }
                        WifiUtils wifiUtils2 = WifiUtils.f55960a;
                        if (wifiUtils2.m() != null) {
                            wifiUtils2.m().disconnect();
                        }
                        this.f55849k = iAddNetwork;
                        int i13 = this.f55850l;
                        if (i13 != -1 && i13 != iAddNetwork) {
                            wifiUtils2.m().disableNetwork(this.f55850l);
                        }
                        if (!(wifiUtils2.m() != null ? wifiUtils2.m().enableNetwork(iAddNetwork, true) : false)) {
                            wifiUtils2.m().reassociate();
                        }
                        x();
                        Unit unit = Unit.f67061a;
                        return iAddNetwork;
                    } catch (Exception e12) {
                        e = e12;
                        i11 = iAddNetwork;
                        e.printStackTrace();
                        return i11;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    private final Method p(int i11) {
        Class<?>[] parameterTypes;
        WifiUtils wifiUtils = WifiUtils.f55960a;
        if (wifiUtils.m() == null) {
            return null;
        }
        Iterator itA = ArrayIteratorKt.a(wifiUtils.m().getClass().getDeclaredMethods());
        Method method = null;
        while (itA.hasNext()) {
            Method method2 = (Method) itA.next();
            if (StringsKt.H("connect", method2.getName(), true) && (parameterTypes = method2.getParameterTypes()) != null && parameterTypes.length > 0 && StringsKt.H("int", parameterTypes[0].getName(), true)) {
                method = method2;
            }
        }
        if (method != null) {
            try {
                method.invoke(WifiUtils.f55960a.m(), Integer.valueOf(i11), null);
            } catch (Exception e11) {
                e11.printStackTrace();
                return null;
            }
        }
        return method;
    }

    private final void q() {
        String strP;
        boolean zC;
        String strO;
        int i11 = this.f55843e;
        lv.a aVarI = i();
        String str = "";
        if (aVarI == null || (strP = aVarI.p()) == null) {
            strP = "";
        }
        lv.a aVarI2 = i();
        if (aVarI2 != null && (strO = aVarI2.o()) != null) {
            str = strO;
        }
        this.f55843e = m(i11, strP, str);
        g gVar = g.f55970a;
        g.b(gVar, e() + " --> doBlindConnect() --> Connect Step 5 No Need Scan Result,Force Connect Result=" + this.f55843e, false, 2, null);
        if (this.f55843e != -1) {
            String strJ = WifiUtils.f55960a.j();
            lv.a aVarI3 = i();
            if (Intrinsics.c(strJ, aVarI3 != null ? aVarI3.p() : null)) {
                String strE = e();
                lv.a aVarI4 = i();
                String strP2 = aVarI4 != null ? aVarI4.p() : null;
                g.b(gVar, strE + " --> doBlindConnect() --> Connect Step 6.0 connected wifi = " + strP2 + " -- netId = " + this.f55843e + "  --  isOkRetryConnect:", false, 2, null);
            } else {
                try {
                    Thread.sleep(350L);
                    String strE2 = e();
                    lv.a aVarI5 = i();
                    String strP3 = aVarI5 != null ? aVarI5.p() : null;
                    g.b(gVar, strE2 + " --> doBlindConnect() --> Connect Step 6.1 didn't connect wifi，reEnableNetWork ssid: " + strP3 + " -- netId = " + this.f55843e + " ", false, 2, null);
                    w(this.f55843e);
                } catch (InterruptedException e11) {
                    e11.printStackTrace();
                    return;
                }
            }
        } else {
            this.f55851m = null;
        }
        NetworkInfo.DetailedState detailedStateR = r();
        boolean z10 = detailedStateR == null || detailedStateR == NetworkInfo.DetailedState.CONNECTING || detailedStateR == NetworkInfo.DetailedState.AUTHENTICATING;
        for (int i12 = 0; z10 && i12 < this.f55855q && !this.f55846h; i12++) {
            try {
                Thread.sleep(350L);
                NetworkInfo.DetailedState detailedStateR2 = r();
                if (detailedStateR2 != null) {
                    z10 = detailedStateR2 == NetworkInfo.DetailedState.CONNECTING || detailedStateR2 == NetworkInfo.DetailedState.AUTHENTICATING;
                }
            } catch (InterruptedException e12) {
                e12.printStackTrace();
            }
        }
        WifiUtils wifiUtils = WifiUtils.f55960a;
        String strJ2 = wifiUtils.j();
        if (TextUtils.isEmpty(strJ2)) {
            zC = false;
        } else {
            lv.a aVarI6 = i();
            zC = Intrinsics.c(strJ2, aVarI6 != null ? aVarI6.p() : null);
        }
        if (zC) {
            if (this.f55843e != -1) {
                g.b(g.f55970a, e() + " --> doBlindConnect() --> Connect Step 9 addNetSucceed", false, 2, null);
                com.transsion.transfer.wifi.connect.b bVarH = h();
                if (bVarH != null) {
                    bVarH.d(this.f55843e);
                    return;
                }
                return;
            }
            g.b(g.f55970a, e() + " --> doBlindConnect() --> Connect Step 9 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH2 = h();
            if (bVarH2 != null) {
                bVarH2.b(2033);
                return;
            }
            return;
        }
        g gVar2 = g.f55970a;
        g.b(gVar2, e() + " --> doBlindConnect() --> Connect Step 9.1 blindConnectCounts：" + this.f55845g, false, 2, null);
        if (this.f55845g >= this.f55854p) {
            g.d(gVar2, e() + " --> doBlindConnect() --> Connect Step 9.1 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH3 = h();
            if (bVarH3 != null) {
                bVarH3.b(2033);
                return;
            }
            return;
        }
        wifiUtils.m().startScan();
        try {
            Thread.sleep(this.f55852n);
        } catch (InterruptedException e13) {
            g.b(g.f55970a, e() + " --> doBlindConnect() --> blindConnectCounts InterruptedException: " + e13, false, 2, null);
        }
        this.f55843e = -1;
        this.f55844f = false;
        this.f55845g++;
        t();
    }

    private final void s() {
        com.transsion.transfer.wifi.util.c cVar = com.transsion.transfer.wifi.util.c.f55964a;
        if (cVar.e()) {
            Context applicationContext = Utils.a().getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            if (cVar.d(applicationContext) < 2097152) {
                g.b(g.f55970a, e() + " --> initParameter() --> Transsion Phone lowMemLimit", false, 2, null);
                this.f55852n = 1500L;
                this.f55855q = 30;
                this.f55848j = 20;
                this.f55854p = 8;
            }
        }
    }

    private final void t() {
        Object objM454constructorimpl;
        g gVar = g.f55970a;
        String strE = e();
        lv.a aVarI = i();
        g.b(gVar, strE + " --> processWifiConnect() --> Connect Step 2 CONNECTION_INITIALIZED --> ssid = " + (aVarI != null ? aVarI.p() : null) + " --> startScan()", false, 2, null);
        WifiUtils wifiUtils = WifiUtils.f55960a;
        wifiUtils.m().startScan();
        int networkId = wifiUtils.m().getConnectionInfo().getNetworkId();
        List<WifiConfiguration> configuredNetworks = wifiUtils.m().getConfiguredNetworks();
        Intrinsics.g(configuredNetworks, "getConfiguredNetworks(...)");
        g.b(gVar, e() + " --> processWifiConnect() --> Connect Step 2.1  --> currentConnectId = " + networkId + " --> existingConfigs.size = " + configuredNetworks.size(), false, 2, null);
        for (WifiConfiguration wifiConfiguration : configuredNetworks) {
            String SSID = wifiConfiguration.SSID;
            Intrinsics.g(SSID, "SSID");
            String strQ = StringsKt.Q(SSID, "\"", "", false, 4, null);
            String str = wifiConfiguration.preSharedKey;
            if (!TextUtils.isEmpty(strQ)) {
                lv.a aVarI2 = i();
                if (StringsKt.I(aVarI2 != null ? aVarI2.p() : null, strQ, false, 2, null)) {
                    this.f55843e = wifiConfiguration.networkId;
                    g gVar2 = g.f55970a;
                    g.b(gVar2, e() + " --> processWifiConnect() --> Connect Step 2.2  currentConnectId = " + networkId + " -- netId = " + this.f55843e + " -- pwd = " + str, false, 2, null);
                    String string = Utils.a().getApplicationContext().getString(R$string.wifi_direct_prefix);
                    Intrinsics.g(string, "getString(...)");
                    if (!StringsKt.W(strQ, string, false, 2, null) || !TextUtils.isEmpty(str)) {
                        g.b(gVar2, e() + " --> processWifiConnect() --> Connect Step 2.4  reEnableNetWork WifiConfiguration SSID = " + strQ + ", netId = " + this.f55843e, false, 2, null);
                        this.f55850l = networkId;
                        WifiUtils.f55960a.m().disconnect();
                        w(this.f55843e);
                        this.f55844f = true;
                        break;
                    }
                    g.b(gVar2, e() + " --> processWifiConnect() --> Connect Step 2.3  error pwd type save WifiConfiguration SSID = " + strQ + ", netId = " + this.f55843e, false, 2, null);
                    this.f55843e = -1;
                    this.f55844f = false;
                    break;
                }
            }
        }
        g.b(g.f55970a, e() + " --> processWifiConnect() --> Connect Step 2.4-1  列表遍历结束 --> netId = " + this.f55843e + " -- findOldConfig = " + this.f55844f, false, 2, null);
        if (!this.f55844f) {
            int i11 = this.f55848j;
            for (int i12 = 0; i12 < i11; i12++) {
                List<ScanResult> scanResults = WifiUtils.f55960a.m().getScanResults();
                this.f55851m = scanResults;
                if (scanResults != null) {
                    g gVar3 = g.f55970a;
                    String strE2 = e();
                    List list = this.f55851m;
                    g.b(gVar3, strE2 + " --> processWifiConnect() --> Connect Step 2.5  Start WifiScan Retry counts:+ i +, ScanResultList Size: " + (list != null ? Integer.valueOf(list.size()) : null), false, 2, null);
                    for (ScanResult scanResult : scanResults) {
                        lv.a aVarI3 = i();
                        if (StringsKt.I(aVarI3 != null ? aVarI3.p() : null, scanResult.SSID, false, 2, null)) {
                            g gVar4 = g.f55970a;
                            g.b(gVar4, e() + " --> processWifiConnect() --> Connect Step 3 Find XShare HotSpot , Start Connect to Target WIFI , SSID = " + scanResult.SSID + " +  capabilities =  " + scanResult.capabilities, false, 2, null);
                            lv.a aVarI4 = i();
                            String strP = aVarI4 != null ? aVarI4.p() : null;
                            lv.a aVarI5 = i();
                            this.f55843e = o(strP, aVarI5 != null ? aVarI5.o() : null, scanResult.capabilities);
                            g.d(gVar4, e() + " --> processWifiConnect() --> Connect Step 3.1 Connect to Target WIFI Finished -- netId = " + this.f55843e, false, 2, null);
                            if (this.f55843e != -1) {
                                break;
                            }
                        }
                    }
                }
                if (this.f55843e != -1) {
                    break;
                }
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Thread.sleep(this.f55852n);
                    if (i12 % 3 == 0) {
                        WifiUtils.f55960a.m().startScan();
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    g.d(g.f55970a, e() + " --> processWifiConnect() --> CONFIGURED_WIFI InterruptedException --> it = " + thM457exceptionOrNullimpl, false, 2, null);
                    com.transsion.transfer.wifi.connect.b bVarH = h();
                    if (bVarH != null) {
                        bVarH.b(2031);
                        return;
                    }
                    return;
                }
            }
        }
        u();
    }

    private final void u() {
        boolean zC;
        g.b(g.f55970a, e() + " --> processWifiScanResult() --> Connect Step 4 processWifiScanResult findOldConfig = " + this.f55844f, false, 2, null);
        if (!this.f55844f) {
            q();
            return;
        }
        NetworkInfo.DetailedState detailedStateR = r();
        boolean z10 = detailedStateR == null || detailedStateR == NetworkInfo.DetailedState.CONNECTING || detailedStateR == NetworkInfo.DetailedState.AUTHENTICATING;
        for (int i11 = 0; z10 && i11 < this.f55855q && !this.f55846h; i11++) {
            try {
                Thread.sleep(350L);
                NetworkInfo.DetailedState detailedStateR2 = r();
                if (detailedStateR2 != null) {
                    z10 = detailedStateR2 == NetworkInfo.DetailedState.CONNECTING || detailedStateR2 == NetworkInfo.DetailedState.AUTHENTICATING;
                }
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
        }
        WifiUtils wifiUtils = WifiUtils.f55960a;
        String strJ = wifiUtils.j();
        if (TextUtils.isEmpty(strJ)) {
            zC = false;
        } else {
            lv.a aVarI = i();
            zC = Intrinsics.c(strJ, aVarI != null ? aVarI.p() : null);
        }
        if (zC) {
            if (this.f55843e != -1) {
                g.b(g.f55970a, e() + " --> processWifiScanResult() --> Connect Step 7 addNetSucceed", false, 2, null);
                com.transsion.transfer.wifi.connect.b bVarH = h();
                if (bVarH != null) {
                    bVarH.d(this.f55843e);
                    return;
                }
                return;
            }
            g.b(g.f55970a, e() + " --> processWifiScanResult() --> Connect Step 7 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH2 = h();
            if (bVarH2 != null) {
                bVarH2.b(2032);
                return;
            }
            return;
        }
        g gVar = g.f55970a;
        g.b(gVar, e() + " --> processWifiScanResult() --> Connect Step 7.1 blindConnectCounts = " + this.f55845g, false, 2, null);
        if (this.f55845g >= this.f55854p) {
            g.d(gVar, e() + " --> processWifiScanResult() --> Connect Step 7.1 SHOW_RETRY", false, 2, null);
            com.transsion.transfer.wifi.connect.b bVarH3 = h();
            if (bVarH3 != null) {
                bVarH3.b(2032);
                return;
            }
            return;
        }
        wifiUtils.m().startScan();
        try {
            Thread.sleep(this.f55852n);
        } catch (InterruptedException e12) {
            g.d(g.f55970a, e() + " --> processWifiScanResult() --> blindConnectCounts InterruptedException: " + e12, false, 2, null);
        }
        this.f55843e = -1;
        this.f55844f = false;
        this.f55845g++;
        q();
    }

    private final int v(String str, String str2, String str3) {
        try {
            g.b(g.f55970a, e() + " --> reConnect() --> ssid:" + str + ", pass:" + str2 + ", type:" + str3, false, 2, null);
            Thread.sleep(300L);
            return o(str, str2, str3);
        } catch (InterruptedException e11) {
            g.d(g.f55970a, e() + " --> reConnect() --> reConnect InterruptedException: " + e11, false, 2, null);
            return -1;
        }
    }

    private final void w(int i11) {
        try {
            this.f55849k = i11;
            j("reEnableNetWork() --> set network id = " + i11);
            int i12 = this.f55850l;
            if (i12 != -1 && i12 != this.f55849k) {
                WifiUtils.f55960a.m().disableNetwork(this.f55850l);
            }
            boolean zEnableNetwork = (Build.VERSION.SDK_INT > 23 || p(i11) == null) ? WifiUtils.f55960a.m().enableNetwork(i11, true) : false;
            if (!zEnableNetwork) {
                WifiUtils.f55960a.m().reassociate();
            }
            x();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private final void x() {
        synchronized (this.f55853o) {
            j("removeOldNetwork() --> removeOldNetwork mLastNetworkId = " + this.f55850l + " --> mCurrentNetworkId = " + this.f55849k);
            int i11 = this.f55850l;
            if (i11 != -1 && i11 != this.f55849k) {
                j("removeOldNetwork() --> remove network id:" + i11);
                boolean zRemoveNetwork = false;
                for (int i12 = 0; i12 < 10 && !zRemoveNetwork; i12++) {
                    try {
                        zRemoveNetwork = WifiUtils.f55960a.m().removeNetwork(this.f55850l);
                        j("removeOldNetwork() --> removeNetwork Result = " + zRemoveNetwork);
                    } catch (Exception unused) {
                    }
                }
                WifiUtils.f55960a.m().saveConfiguration();
            }
            Unit unit = Unit.f67061a;
        }
    }

    @Override // com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter
    public void c() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (this.f55847i != null) {
                this.f55847i = null;
            }
            Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ((ConnectivityManager) systemService).bindProcessToNetwork(null);
            g.b(g.f55970a, e() + " --> releaseDefaultNetwork() --> end", false, 2, null);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f55970a, e() + " --> releaseDefaultNetwork() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
    }

    @Override // com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter
    public void d() {
        this.f55845g = 0;
        this.f55846h = false;
        g.b(g.f55970a, e() + " --> connect() --> 系统级接入方开始添加网络 = " + i(), false, 2, null);
        n0 n0VarG = g();
        if (n0VarG != null) {
            k.d(n0VarG, null, null, new AddNetWorkConnectAdapter$doConnect$1(this, null), 3, null);
        }
    }

    public final NetworkInfo.DetailedState r() {
        Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.getDetailedState();
        }
        return null;
    }
}
