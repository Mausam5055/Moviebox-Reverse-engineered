package com.transsion.transfer.wifi.connect.adapter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Handler;
import android.os.Looper;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.g;
import com.transsion.transfer.wifi.util.i;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.net.InetAddress;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class DirectConnectAdapter extends BaseWifiConnectAdapter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WifiP2PReceive f55861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WifiP2pManager.Channel f55862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WifiP2pDevice f55863h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private InetAddress f55864i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f55865j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f55866k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f55870o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f55860e = LazyKt.b(new Function0() { // from class: com.transsion.transfer.wifi.connect.adapter.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DirectConnectAdapter.z();
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f55867l = 10;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Handler f55868m = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Runnable f55869n = new Runnable() { // from class: com.transsion.transfer.wifi.connect.adapter.c
        @Override // java.lang.Runnable
        public final void run() {
            DirectConnectAdapter.I(this.f55880a);
        }
    };

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JK\u0010\r\u001a\u00020\u000b2<\u0010\f\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004¢\u0006\u0004\b\r\u0010\u000eJ#\u0010\u000f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010RN\u0010\u0012\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Lkotlin/Function2;", "Landroid/content/Context;", "Lkotlin/ParameterName;", "name", "context", "Landroid/content/Intent;", "intent", "", "callback", "a", "(Lkotlin/jvm/functions/Function2;)V", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Lkotlin/jvm/functions/Function2;", "mCallback", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class WifiP2PReceive extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private Function2 mCallback;

        public final void a(Function2 callback) {
            Intrinsics.h(callback, "callback");
            this.mCallback = callback;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Function2 function2 = this.mCallback;
            if (function2 != null) {
            }
        }
    }

    public DirectConnectAdapter() {
        WifiP2pManager wifiP2pManagerY = y();
        this.f55862g = wifiP2pManagerY != null ? wifiP2pManagerY.initialize(Utils.a(), Looper.getMainLooper(), null) : null;
    }

    private final void A(int i11) {
        g.d(g.f55970a, e() + " --> onFail() --> reason = " + i11, false, 2, null);
        this.f55868m.removeCallbacks(this.f55869n);
        com.transsion.transfer.wifi.connect.b bVarH = h();
        if (bVarH != null) {
            bVarH.b(i11);
        }
    }

    private final void B() {
        g.b(g.f55970a, e() + " --> onSuccess() --> mAddress = " + this.f55864i, false, 2, null);
        this.f55870o = true;
        this.f55868m.removeCallbacks(this.f55869n);
        com.transsion.transfer.wifi.connect.b bVarH = h();
        if (bVarH != null) {
            bVarH.c(this.f55864i);
        }
    }

    private final void C(Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (action != null) {
            switch (action.hashCode()) {
                case -1772632330:
                    if (action.equals("android.net.wifi.p2p.CONNECTION_STATE_CHANGE")) {
                        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                        g gVar = g.f55970a;
                        g.b(gVar, e() + " --> registerReceiver() --> onReceive() --> networkInfo = " + networkInfo, false, 2, null);
                        if (networkInfo != null && networkInfo.isConnected()) {
                            g.b(gVar, e() + " --> registerReceiver() --> onReceive() --> 已连接到对等设备 --> requestConnectionInfo()", false, 2, null);
                            WifiP2pGroup wifiP2pGroup = (WifiP2pGroup) intent.getParcelableExtra("p2pGroupInfo");
                            if (wifiP2pGroup != null) {
                                this.f55863h = wifiP2pGroup.getOwner();
                            }
                            WifiP2pInfo wifiP2pInfo = (WifiP2pInfo) intent.getParcelableExtra("wifiP2pInfo");
                            if (wifiP2pInfo != null && wifiP2pInfo.groupFormed) {
                                this.f55864i = wifiP2pInfo.groupOwnerAddress;
                                B();
                            } else {
                                G();
                            }
                        } else if ((networkInfo != null ? networkInfo.getState() : null) == NetworkInfo.State.DISCONNECTED) {
                            this.f55865j = false;
                            F();
                        }
                        break;
                    }
                    break;
                case -1566767901:
                    if (action.equals("android.net.wifi.p2p.THIS_DEVICE_CHANGED")) {
                        WifiP2pDevice wifiP2pDevice = (WifiP2pDevice) intent.getParcelableExtra("wifiP2pDevice");
                        g.b(g.f55970a, e() + " --> registerReceiver() --> onReceive() --> 本设备的 Wi-Fi 状态已更改 --> CONNECTED = 0｜INVITED = 1｜FAILED = 2｜AVAILABLE = 3｜UNAVAILABLE = 4 --> " + (wifiP2pDevice != null ? Integer.valueOf(wifiP2pDevice.status) : null) + " ", false, 2, null);
                        break;
                    }
                    break;
                case -1394739139:
                    action.equals("android.net.wifi.p2p.PEERS_CHANGED");
                    break;
                case 1695662461:
                    if (action.equals("android.net.wifi.p2p.STATE_CHANGED")) {
                        if (intent.getIntExtra("wifi_p2p_state", -1) != 2) {
                            g.b(g.f55970a, e() + " --> registerReceiver() --> onReceive() --> Wi-Fi P2P 未启用 -- Wi-Fi P2P is not enabled.", false, 2, null);
                        } else {
                            g.b(g.f55970a, e() + " --> registerReceiver() --> onReceive() --> Wi-Fi P2P 已启用 -- Wi-Fi P2P is enabled.", false, 2, null);
                        }
                        break;
                    }
                    break;
            }
        }
    }

    private final void D() {
        if (this.f55861f == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.p2p.STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.p2p.PEERS_CHANGED");
            intentFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
            intentFilter.addAction("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
            WifiP2PReceive wifiP2PReceive = new WifiP2PReceive();
            this.f55861f = wifiP2PReceive;
            wifiP2PReceive.a(new Function2() { // from class: com.transsion.transfer.wifi.connect.adapter.d
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DirectConnectAdapter.E(this.f55881a, (Context) obj, (Intent) obj2);
                }
            });
            Utils.a().registerReceiver(this.f55861f, intentFilter);
            g.b(g.f55970a, e() + " --> registerReceiver() --> 广播注册成功", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(DirectConnectAdapter directConnectAdapter, Context context, Intent intent) {
        if (directConnectAdapter.f55870o) {
            g.b(g.f55970a, directConnectAdapter.e() + " --> isSuccess = " + directConnectAdapter.f55870o + " --> 如果已经连接成功了，后续的广播就不再处理了， 这一个操作是为了兼容业务 --> 这里将导致断开重连功能失效", false, 2, null);
        } else {
            directConnectAdapter.C(intent);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        if (this.f55865j) {
            g.d(g.f55970a, e() + " --> requestConnect() --> mConnecting = " + this.f55865j, false, 2, null);
            return;
        }
        int i11 = this.f55866k;
        if (i11 >= this.f55867l) {
            g.b(g.f55970a, e() + " --> requestConnect() --> connectRetry = " + this.f55866k + " --> retryCount = " + this.f55867l + " --> 重试次数用完了,请求失败", false, 2, null);
            A(2020);
            return;
        }
        int i12 = i11 + 1;
        this.f55866k = i12;
        if (i12 == 5) {
            n0 n0VarG = g();
            if (n0VarG != null) {
                k.d(n0VarG, null, null, new DirectConnectAdapter$requestConnect$1(this, null), 3, null);
                return;
            }
            return;
        }
        g.b(g.f55970a, e() + " --> requestConnect() --> connectRetry = " + this.f55866k + " --> retryCount = " + this.f55867l, false, 2, null);
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        Unit unit = null;
        g.b(g.f55970a, e() + " --> requestConnectionInfo() --> start...", false, 2, null);
        WifiP2pManager.Channel channel = this.f55862g;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerY = y();
            if (wifiP2pManagerY != null) {
                wifiP2pManagerY.requestConnectionInfo(channel, new WifiP2pManager.ConnectionInfoListener() { // from class: com.transsion.transfer.wifi.connect.adapter.a
                    @Override // android.net.wifi.p2p.WifiP2pManager.ConnectionInfoListener
                    public final void onConnectionInfoAvailable(WifiP2pInfo wifiP2pInfo) {
                        DirectConnectAdapter.H(this.f55879a, wifiP2pInfo);
                    }
                });
                unit = Unit.f67061a;
            }
            if (unit != null) {
                return;
            }
        }
        A(2023);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(DirectConnectAdapter directConnectAdapter, WifiP2pInfo wifiP2pInfo) {
        g gVar = g.f55970a;
        g.b(gVar, directConnectAdapter.e() + " --> requestConnectionInfo() --> start --> info = " + wifiP2pInfo, false, 2, null);
        if (wifiP2pInfo == null) {
            n0 n0VarG = directConnectAdapter.g();
            if (n0VarG != null) {
                k.d(n0VarG, null, null, new DirectConnectAdapter$requestConnectionInfo$1$1$2(directConnectAdapter, null), 3, null);
                return;
            }
            return;
        }
        if (!wifiP2pInfo.groupFormed) {
            n0 n0VarG2 = directConnectAdapter.g();
            if (n0VarG2 != null) {
                k.d(n0VarG2, null, null, new DirectConnectAdapter$requestConnectionInfo$1$1$1(directConnectAdapter, null), 3, null);
                return;
            }
            return;
        }
        directConnectAdapter.f55864i = wifiP2pInfo.groupOwnerAddress;
        g.b(gVar, directConnectAdapter.e() + " --> requestConnectionInfo() --> start --> 11111", false, 2, null);
        directConnectAdapter.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(DirectConnectAdapter directConnectAdapter) {
        directConnectAdapter.A(2022);
    }

    private final void J() {
        WifiP2PReceive wifiP2PReceive = this.f55861f;
        if (wifiP2PReceive != null) {
            Utils.a().unregisterReceiver(wifiP2PReceive);
            g.b(g.f55970a, e() + " --> unregisterReceiver() --> success", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        this.f55865j = true;
        WifiP2pManager.Channel channel = this.f55862g;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerY = y();
            Unit unit = null;
            if (wifiP2pManagerY != null) {
                wifiP2pManagerY.cancelConnect(channel, null);
            }
            WifiP2pConfig wifiP2pConfigF = WifiUtils.f55960a.f(i(), this.f55863h);
            if (wifiP2pConfigF == null) {
                A(2021);
                return;
            }
            g.b(g.f55970a, e() + " --> connectP2P() --> 开始连接 --> mWifiP2pManager.connect()", false, 2, null);
            WifiP2pManager wifiP2pManagerY2 = y();
            if (wifiP2pManagerY2 != null) {
                wifiP2pManagerY2.connect(channel, wifiP2pConfigF, new WifiP2pManager.ActionListener() { // from class: com.transsion.transfer.wifi.connect.adapter.DirectConnectAdapter$connectP2P$1$1
                    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                    public void onFailure(int i11) {
                        g.d(g.f55970a, this.f55872a.e() + " --> connectP2P() --> onFailure() --> reason = " + i11 + " --> 重试", false, 2, null);
                        this.f55872a.f55865j = false;
                        n0 n0VarG = this.f55872a.g();
                        if (n0VarG != null) {
                            k.d(n0VarG, null, null, new DirectConnectAdapter$connectP2P$1$1$onFailure$1(this.f55872a, null), 3, null);
                        }
                    }

                    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                    public void onSuccess() {
                        g.b(g.f55970a, this.f55872a.e() + " --> connectP2P() --> onSuccess() --> 等待广播通知", false, 2, null);
                    }
                });
                unit = Unit.f67061a;
            }
            if (unit != null) {
                return;
            }
        }
        A(2023);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WifiP2pManager y() {
        return (WifiP2pManager) this.f55860e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WifiP2pManager z() {
        Object systemService = Utils.a().getApplicationContext().getSystemService("wifip2p");
        if (systemService instanceof WifiP2pManager) {
            return (WifiP2pManager) systemService;
        }
        return null;
    }

    @Override // com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter
    public void c() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f55868m.removeCallbacksAndMessages(null);
            this.f55863h = null;
            this.f55864i = null;
            this.f55866k = 0;
            this.f55865j = false;
            i.f55971a.d(y(), this.f55862g, (60 & 4) != 0, (60 & 8) != 0, (60 & 16) != 0, (60 & 32) != 0);
            this.f55862g = null;
            J();
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f55970a, e() + " --> stop() --> p2p stop Exception = " + thM457exceptionOrNullimpl, false, 2, null);
    }

    @Override // com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter
    public void d() {
        g.b(g.f55970a, e() + " --> start() --> 开启直连....", false, 2, null);
        D();
        F();
        this.f55868m.postDelayed(this.f55869n, 90000L);
    }
}
