package com.transsion.transfer.wifi.create.adapter;

import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.transsion.transfer.wifi.util.WifiUtils;
import java.lang.reflect.Method;
import java.net.InetAddress;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class P2PWifiAdapter extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f55887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f55888f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WifiP2pManager.Channel f55890h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f55886d = 10;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f55889g = LazyKt.b(new Function0() { // from class: com.transsion.transfer.wifi.create.adapter.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return P2PWifiAdapter.G();
        }
    });

    public static final class a implements WifiP2pManager.ActionListener {
        a() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i11) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, P2PWifiAdapter.this.b() + " --> setDeviceName() --> 反射创建 --> onFailure() --> reason = " + com.transsion.transfer.wifi.util.i.f55971a.b(i11) + " --> 失败重试", false, 2, null);
            P2PWifiAdapter.this.E();
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            String string = Settings.Global.getString(Utils.a().getApplicationContext().getContentResolver(), "wifi_p2p_device_name");
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, P2PWifiAdapter.this.b() + " --> setDeviceName() --> 反射创建 --> onSuccess() --> deviceName = " + string, false, 2, null);
            P2PWifiAdapter.this.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(P2PWifiAdapter p2PWifiAdapter, WifiP2pGroup wifiP2pGroup, WifiP2pInfo wifiP2pInfo) {
        if (wifiP2pInfo == null) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> 获取可连接信息失败 (p2pInfo == null)", false, 2, null);
            p2PWifiAdapter.D();
            return;
        }
        InetAddress inetAddress = wifiP2pInfo.groupOwnerAddress;
        com.transsion.transfer.wifi.util.g gVar = com.transsion.transfer.wifi.util.g.f55970a;
        com.transsion.transfer.wifi.util.g.b(gVar, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> Group Owner Address = " + inetAddress, false, 2, null);
        String strV = p2PWifiAdapter.v(inetAddress);
        if (TextUtils.isEmpty(strV)) {
            com.transsion.transfer.wifi.util.g.b(gVar, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> 获取可连接Ip失败 --> correctIp 为空", false, 2, null);
            p2PWifiAdapter.D();
            return;
        }
        lv.a aVarE = p2PWifiAdapter.e();
        if (aVarE != null) {
            aVarE.H(wifiP2pGroup.getNetworkName());
        }
        lv.a aVarE2 = p2PWifiAdapter.e();
        if (aVarE2 != null) {
            aVarE2.G(wifiP2pGroup.getPassphrase());
        }
        lv.a aVarE3 = p2PWifiAdapter.e();
        if (aVarE3 != null) {
            aVarE3.F(strV);
        }
        com.transsion.transfer.wifi.util.g.b(gVar, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> 最终ip为 correctIp = " + strV, false, 2, null);
        n0 n0VarC = p2PWifiAdapter.c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$requestConnectionInfo$1$1$1(p2PWifiAdapter, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x008e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:28:0x008e, please report this as an issue */
    public final Object B(Continuation continuation) throws Throwable {
        P2PWifiAdapter$requestGroupInfo$1 p2PWifiAdapter$requestGroupInfo$1;
        Unit unit;
        if (continuation instanceof P2PWifiAdapter$requestGroupInfo$1) {
            p2PWifiAdapter$requestGroupInfo$1 = (P2PWifiAdapter$requestGroupInfo$1) continuation;
            int i11 = p2PWifiAdapter$requestGroupInfo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                p2PWifiAdapter$requestGroupInfo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                p2PWifiAdapter$requestGroupInfo$1 = new P2PWifiAdapter$requestGroupInfo$1(this, continuation);
            }
        } else {
            p2PWifiAdapter$requestGroupInfo$1 = new P2PWifiAdapter$requestGroupInfo$1(this, continuation);
        }
        Object obj = p2PWifiAdapter$requestGroupInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = p2PWifiAdapter$requestGroupInfo$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (this.f55888f >= this.f55886d) {
                x(101);
                return Unit.f67061a;
            }
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> requestGroupInfo() --> Wi-Fi P2P 创建成功之后，将自己添加到群组 --> 第" + this.f55888f + " 次获取热点相关信息", false, 2, null);
            p2PWifiAdapter$requestGroupInfo$1.label = 1;
            if (u0.a(300L, p2PWifiAdapter$requestGroupInfo$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        if (this.f55890h == null) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> requestGroupInfo() --> p2pChannel == null --> 失败重试 --> retryCreate()", false, 2, null);
            E();
        } else {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.requestGroupInfo(this.f55890h, new WifiP2pManager.GroupInfoListener() { // from class: com.transsion.transfer.wifi.create.adapter.k
                    @Override // android.net.wifi.p2p.WifiP2pManager.GroupInfoListener
                    public final void onGroupInfoAvailable(WifiP2pGroup wifiP2pGroup) {
                        P2PWifiAdapter.C(this.f55897a, wifiP2pGroup);
                    }
                });
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit == null) {
                com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> requestGroupInfo() --> p2pChannel == null --> 失败重试 --> retryCreate()", false, 2, null);
                E();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(P2PWifiAdapter p2PWifiAdapter, WifiP2pGroup wifiP2pGroup) {
        if (wifiP2pGroup != null) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter.b() + " --> requestGroupInfo() --> requestGroupInfo() --> 获取Group信息成功,开始获取连接信息", false, 2, null);
            p2PWifiAdapter.z(wifiP2pGroup);
            return;
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, p2PWifiAdapter.b() + " --> requestGroupInfo() --> 获取Group信息失败 --> wifiP2pGroup == null", false, 2, null);
        p2PWifiAdapter.D();
    }

    private final void D() {
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$retry$1(this, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        int i11 = this.f55887e + 1;
        this.f55887e = i11;
        if (i11 > this.f55886d) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> retryCreate() --> 重试次数 = " + this.f55887e + "，判定创建热点失败", false, 2, null);
            x(102);
            return;
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> retryCreate() --> 重新创建热点 -- 失败次数 = " + this.f55887e, false, 2, null);
        int i12 = this.f55887e;
        if (i12 <= 1 || i12 == 5) {
            r();
            return;
        }
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$retryCreate$1(this, null), 3, null);
        }
    }

    private final void F() {
        Object objM454constructorimpl;
        a aVar = new a();
        try {
            Result.Companion companion = Result.INSTANCE;
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                Method declaredMethod = wifiP2pManagerW.getClass().getDeclaredMethod("setDeviceName", WifiP2pManager.Channel.class, String.class, WifiP2pManager.ActionListener.class);
                com.transsion.transfer.wifi.util.g gVar = com.transsion.transfer.wifi.util.g.f55970a;
                String strB = b();
                int i11 = Build.VERSION.SDK_INT;
                lv.a aVarE = e();
                String strP = aVarE != null ? aVarE.p() : null;
                lv.a aVarE2 = e();
                com.transsion.transfer.wifi.util.g.b(gVar, strB + " --> setDeviceName() --> API < 29 -- Android" + i11 + "设备(Q以上下) 创建 --> WIFI名称 = " + strP + " -- WIFI频段 = " + (aVarE2 != null ? aVarE2.m() : null), false, 2, null);
                WifiP2pManager wifiP2pManagerW2 = w();
                WifiP2pManager.Channel channel = this.f55890h;
                lv.a aVarE3 = e();
                declaredMethod.invoke(wifiP2pManagerW2, channel, aVarE3 != null ? aVarE3.p() : null, aVar);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> setDeviceName() --> Build.VERSION.SDK_INT < Q --> 反射创建失败 -->exception = " + thM457exceptionOrNullimpl + " --> 失败重试", false, 2, null);
        E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WifiP2pManager G() {
        Object systemService = Utils.a().getApplicationContext().getSystemService("wifip2p");
        if (systemService instanceof WifiP2pManager) {
            return (WifiP2pManager) systemService;
        }
        return null;
    }

    private final void r() {
        Ref.IntRef intRef = new Ref.IntRef();
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, y0.b(), null, new P2PWifiAdapter$closeWifiAndReCreateHot$1(intRef, this, null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s() {
        Unit unit;
        WifiP2pManager.Channel channel = this.f55890h;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.createGroup(channel, new WifiP2pManager.ActionListener() { // from class: com.transsion.transfer.wifi.create.adapter.P2PWifiAdapter$createGroup$1$1
                    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                    public void onFailure(int i11) {
                        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, this.f55892a.b() + " --> setDeviceName() --> createGroup() --> onFailure() --> reason = " + com.transsion.transfer.wifi.util.i.f55971a.b(i11) + " --> 失败重试", false, 2, null);
                        this.f55892a.E();
                    }

                    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                    public void onSuccess() {
                        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, this.f55892a.b() + " --> setDeviceName() --> createGroup() --> onSuccess()", false, 2, null);
                        n0 n0VarC = this.f55892a.c();
                        if (n0VarC != null) {
                            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$createGroup$1$1$onSuccess$1(this.f55892a, null), 3, null);
                        }
                    }
                });
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> createGroup() --> p2pChannel == null --> 失败重试", false, 2, null);
        E();
    }

    private final void t(WifiP2pConfig.Builder builder) {
        Unit unit;
        WifiP2pManager.Channel channel = this.f55890h;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.createGroup(channel, builder.build(), new WifiP2pManager.ActionListener() { // from class: com.transsion.transfer.wifi.create.adapter.P2PWifiAdapter$createGroupQ$1$1
                    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                    public void onFailure(int i11) {
                        com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f55970a, this.f55893a.b() + " --> createWifiP2pGroup() --> createGroup() --> 创建群组失败 -- reason = " + com.transsion.transfer.wifi.util.i.f55971a.b(i11) + " --> 失败重试", false, 2, null);
                        this.f55893a.E();
                    }

                    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                    public void onSuccess() {
                        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, this.f55893a.b() + " --> createWifiP2pGroup() --> createGroup() --> onSuccess() --> 创建群组成功", false, 2, null);
                        n0 n0VarC = this.f55893a.c();
                        if (n0VarC != null) {
                            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$createGroupQ$1$1$onSuccess$1(this.f55893a, null), 3, null);
                        }
                    }
                });
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> createGroupQ() --> p2pChannel == null --> 失败重试", false, 2, null);
        E();
    }

    private final void u() {
        String strP;
        Object objM454constructorimpl;
        String str;
        lv.a aVarE = e();
        if (aVarE == null || (strP = aVarE.p()) == null) {
            strP = "";
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String strSubstring = com.transsion.transfer.wifi.util.b.f55963a.a(strP).substring(0, 8);
            Intrinsics.g(strSubstring, "substring(...)");
            objM454constructorimpl = Result.m454constructorimpl(strSubstring);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        String str2 = (String) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : "");
        WifiP2pConfig.Builder passphrase = d.a().setNetworkName(strP).setPassphrase(str2);
        Intrinsics.g(passphrase, "setPassphrase(...)");
        lv.a aVarE2 = e();
        if (aVarE2 == null || !aVarE2.a()) {
            passphrase.setGroupOperatingBand(1);
            str = "2.4G";
        } else {
            passphrase.setGroupOperatingBand(2);
            str = NetworkUtil.NETWORK_TYPE_5G;
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> createWifiP2pGroup() --> API >= 29 -- Android" + Build.VERSION.SDK_INT + "设备(Q及其以上) 创建 --> WIFI名称 = " + strP + " -- 密码 = " + str2 + " -- WIFI频段 = " + str, false, 2, null);
        t(passphrase);
    }

    private final String v(InetAddress inetAddress) {
        WifiUtils wifiUtils = WifiUtils.f55960a;
        String strG = wifiUtils.g(inetAddress);
        if (!TextUtils.isEmpty(strG)) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> getCorrectIp() --> ip --> getCorrectOwnerAddress() = " + strG, false, 2, null);
            return strG;
        }
        String strL = wifiUtils.l();
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> getCorrectIp() --> ip --> localIP() = " + strL, false, 2, null);
        return strL;
    }

    private final WifiP2pManager w() {
        return (WifiP2pManager) this.f55889g.getValue();
    }

    private final void x(int i11) {
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$onFail$1(this, i11, null), 3, null);
        }
    }

    private final void z(final WifiP2pGroup wifiP2pGroup) {
        Unit unit;
        WifiP2pManager.Channel channel = this.f55890h;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.requestConnectionInfo(channel, new WifiP2pManager.ConnectionInfoListener() { // from class: com.transsion.transfer.wifi.create.adapter.l
                    @Override // android.net.wifi.p2p.WifiP2pManager.ConnectionInfoListener
                    public final void onConnectionInfoAvailable(WifiP2pInfo wifiP2pInfo) {
                        P2PWifiAdapter.A(this.f55898a, wifiP2pGroup, wifiP2pInfo);
                    }
                });
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> requestConnectionInfo() --> p2pChannel == null --> 失败重试 --> retryCreate()", false, 2, null);
        E();
    }

    @Override // com.transsion.transfer.wifi.create.adapter.b
    public Object a(Continuation continuation) {
        com.transsion.transfer.wifi.util.g gVar = com.transsion.transfer.wifi.util.g.f55970a;
        com.transsion.transfer.wifi.util.g.b(gVar, b() + " --> createWifiHot() --> start", false, 2, null);
        WifiP2pManager wifiP2pManagerW = w();
        this.f55890h = wifiP2pManagerW != null ? wifiP2pManagerW.initialize(Utils.a().getApplicationContext(), Looper.getMainLooper(), null) : null;
        int i11 = Build.VERSION.SDK_INT;
        if (WifiUtils.f55960a.s()) {
            com.transsion.transfer.wifi.util.g.b(gVar, b() + " --> createWifiHot() --> Android" + i11 + "设备(Q以下) 开始创建P2P WIFI热点", false, 2, null);
            F();
        } else {
            com.transsion.transfer.wifi.util.g.b(gVar, b() + " --> createWifiHot() --> Android" + i11 + "设备(Q及其以上) 开始创建P2P WIFI热点", false, 2, null);
            u();
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.transfer.wifi.create.adapter.b
    public void f() {
        y();
        g(null);
        h(null);
        this.f55890h = null;
    }

    public void y() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.transfer.wifi.util.i.f55971a.d(w(), this.f55890h, true, false, false, true);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f55970a, b() + " --> releaseWifiP2P() --> 关闭P2P频段异常 -- it = " + thM457exceptionOrNullimpl, false, 2, null);
    }
}
