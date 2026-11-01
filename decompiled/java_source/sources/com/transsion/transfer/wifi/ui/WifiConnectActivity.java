package com.transsion.transfer.wifi.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Network;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.zxing.BarcodeFormat;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.transfer.R$string;
import com.transsion.transfer.impl.ClientViewModel;
import com.transsion.transfer.impl.TransferStatusActivity;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.wifi.connect.TransferWifiConnectDialog;
import com.transsion.transfer.wifi.connect.WifiConnectionManager;
import com.transsion.transfer.wifi.permission.PermissionsActivity;
import com.transsion.transfer.wifi.qrcode.QrCodeUtil;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.net.InetAddress;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\nJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u001f\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0002H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u001eH\u0016¢\u0006\u0004\b'\u0010 J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0004J\r\u0010.\u001a\u00020\u0005¢\u0006\u0004\b.\u0010\u0004R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00109R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020J0I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u001a\u0010S\u001a\u00020N8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R¨\u0006T"}, d2 = {"Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lgv/c;", "<init>", "()V", "", "d1", "Llv/a;", "wifiInfoModel", "p1", "(Llv/a;)V", "", "scannedText", "j1", "(Ljava/lang/String;)V", "X0", "ip", "Z0", "r1", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "marginTop", "o1", "(Landroid/view/View;I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "", "q0", "()Z", "onPause", "onDestroy", "f1", "()Lgv/c;", "i0", "()Ljava/lang/String;", "setImmersionStatusBar", "o0", "p0", "n0", "s0", "t0", "retryLoadData", "Y0", "Lcom/transsion/transfer/impl/ClientViewModel;", "i", "Lkotlin/Lazy;", "e1", "()Lcom/transsion/transfer/impl/ClientViewModel;", "clientViewModel", "j", "Ljava/lang/String;", "serverIp", CampaignEx.JSON_KEY_AD_K, "Z", "clientReleaseTag", "", "l", "J", "onScanNotSupportTime", "m", "transferLaunched", "Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;", "n", "Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;", "loadingDialog", "Lxe/a;", "o", "Lxe/a;", "callback", "Landroidx/activity/result/b;", "Landroid/content/Intent;", TtmlNode.TAG_P, "Landroidx/activity/result/b;", "permissionResult", "Lhj/b;", CampaignEx.JSON_KEY_AD_Q, "Lhj/b;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WifiConnectActivity extends BaseNewActivity<gv.c> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String serverIp;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean clientReleaseTag;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean transferLaunched;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private TransferWifiConnectDialog loadingDialog;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy clientViewModel = LazyKt.b(new Function0() { // from class: com.transsion.transfer.wifi.ui.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WifiConnectActivity.W0(this.f55939a);
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private long onScanNotSupportTime = System.currentTimeMillis();

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final xe.a callback = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b permissionResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.transfer.wifi.ui.h
        @Override // androidx.activity.result.a
        public final void a(Object obj) {
            WifiConnectActivity.n1(this.f55940a, (ActivityResult) obj);
        }
    });

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final hj.b logViewConfig = new hj.b("wifi_connect_page", false, 2, null);

    public static final class a implements xe.a {
        a() {
        }

        @Override // xe.a
        public void a(List resultPoints) {
            Intrinsics.h(resultPoints, "resultPoints");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // xe.a
        public void b(xe.c result) {
            Intrinsics.h(result, "result");
            if (result.e() != null) {
                ((gv.c) WifiConnectActivity.this.getMViewBinding()).f63975d.pause();
                String strE = result.e();
                WifiConnectActivity wifiConnectActivity = WifiConnectActivity.this;
                Intrinsics.e(strE);
                wifiConnectActivity.j1(strE);
            }
        }
    }

    public static final class b implements com.transsion.transfer.wifi.connect.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ lv.a f55922b;

        b(lv.a aVar) {
            this.f55922b = aVar;
        }

        @Override // com.transsion.transfer.wifi.connect.b
        public void a(Network network) {
            com.transsion.transfer.wifi.connect.b.a.b(this, network);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.transsion.transfer.wifi.connect.b
        public void b(int i11) {
            com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f55970a, WifiConnectActivity.this.getClassTag() + " --> connectWifi() --> onFail() --> code = " + i11, false, 2, null);
            ((gv.c) WifiConnectActivity.this.getMViewBinding()).f63975d.resume();
            WifiConnectActivity.this.Y0();
            uh.b.f76753a.e(WifiConnectActivity.this.getResources().getString(R$string.transfer_wifi_connect_dialog_failed));
        }

        @Override // com.transsion.transfer.wifi.connect.b
        public void c(InetAddress inetAddress) {
            com.transsion.transfer.wifi.connect.b.a.e(this, inetAddress);
        }

        @Override // com.transsion.transfer.wifi.connect.b
        public void d(int i11) {
            com.transsion.transfer.wifi.connect.b.a.a(this, i11);
        }

        @Override // com.transsion.transfer.wifi.connect.b
        public void e(String ip2) {
            Intrinsics.h(ip2, "ip");
            com.transsion.transfer.wifi.connect.b.a.c(this, ip2);
            String strL = WifiUtils.f55960a.l();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onParsingSuccess: ip:");
            sb2.append(ip2);
            sb2.append(", WifiUtils.getLocalIP():");
            sb2.append(strL);
            if (WifiConnectActivity.this.clientReleaseTag) {
                WifiConnectActivity.this.Z0(ip2);
            } else {
                WifiConnectActivity.this.serverIp = ip2;
            }
        }

        @Override // com.transsion.transfer.wifi.connect.b
        public void onStart() {
            com.transsion.transfer.wifi.connect.b.a.d(this);
            WifiConnectActivity.this.p1(this.f55922b);
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f55923a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55923a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f55923a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f55923a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClientViewModel W0(WifiConnectActivity wifiConnectActivity) {
        return (ClientViewModel) new v0(wifiConnectActivity).a(ClientViewModel.class);
    }

    private final void X0(lv.a wifiInfoModel) {
        WifiConnectionManager.f55832a.n(this, wifiInfoModel, androidx.p009lifecycle.v.a(this), new b(wifiInfoModel));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0(String ip2) {
        TransferClient.a aVar = TransferClient.f55665t;
        TransferClient.a.m(aVar, ip2, WifiUtils.f55960a.l(), null, new Function0() { // from class: com.transsion.transfer.wifi.ui.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WifiConnectActivity.a1(this.f55943a);
            }
        }, 4, null);
        kv.b.f68395a.n(aVar.k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(final WifiConnectActivity wifiConnectActivity) {
        wifiConnectActivity.e1().k(new Function2() { // from class: com.transsion.transfer.wifi.ui.n
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return WifiConnectActivity.b1(this.f55947a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(final WifiConnectActivity wifiConnectActivity, boolean z10, String error) {
        Intrinsics.h(error, "error");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connectWifi connect res:");
        sb2.append(z10);
        if (z10) {
            kv.b.f68395a.e(TransferClient.f55665t.k());
        } else {
            wifiConnectActivity.e1().k(new Function2() { // from class: com.transsion.transfer.wifi.ui.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WifiConnectActivity.c1(this.f55938a, ((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(WifiConnectActivity wifiConnectActivity, boolean z10, String autoError) {
        Intrinsics.h(autoError, "autoError");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connectWifi auto retry connect res:");
        sb2.append(z10);
        sb2.append(", autoError:");
        sb2.append(autoError);
        if (z10) {
            kv.b.f68395a.e(TransferClient.f55665t.k());
        } else {
            kv.b.f68395a.d(autoError, TransferClient.f55665t.k());
            wifiConnectActivity.Y0();
            WifiConnectionManager.f55832a.s();
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(wifiConnectActivity), y0.c(), null, new WifiConnectActivity$doConnect$1$1$1$1(wifiConnectActivity, null), 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void d1() {
        ((gv.c) getMViewBinding()).f63975d.setDecoderFactory(new xe.k(CollectionsKt.o(BarcodeFormat.QR_CODE, BarcodeFormat.CODE_39)));
        ((gv.c) getMViewBinding()).f63975d.initializeFromIntent(getIntent());
        ((gv.c) getMViewBinding()).f63975d.decodeContinuous(this.callback);
    }

    private final ClientViewModel e1() {
        return (ClientViewModel) this.clientViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(WifiConnectActivity wifiConnectActivity, View view) {
        wifiConnectActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h1(WifiConnectActivity wifiConnectActivity, Boolean bool) {
        if (bool.booleanValue() && !wifiConnectActivity.transferLaunched) {
            kv.b.f68395a.e(TransferClient.f55665t.k());
            wifiConnectActivity.transferLaunched = true;
            wifiConnectActivity.r1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(WifiConnectActivity wifiConnectActivity) {
        wifiConnectActivity.clientReleaseTag = true;
        String str = wifiConnectActivity.serverIp;
        if (str != null) {
            wifiConnectActivity.Z0(str);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j1(String scannedText) {
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " --> onScanSuccess() --> scannedText = " + scannedText + " --> 扫码成功 开始解析 建立连接", false, 2, null);
        QrCodeUtil.f55907a.e(scannedText, new Function1() { // from class: com.transsion.transfer.wifi.ui.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WifiConnectActivity.k1(this.f55944a, (lv.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit k1(final WifiConnectActivity wifiConnectActivity, final lv.a aVar) {
        if (aVar == null) {
            uh.b.f76753a.e(wifiConnectActivity.getResources().getString(R$string.transfer_wifi_connect_error_tip_no_mb_qr_code, com.blankj.utilcode.util.c.c()));
            ((gv.c) wifiConnectActivity.getMViewBinding()).f63975d.resume();
        } else if (!TextUtils.equals(NetworkUtil.NETWORK_TYPE_5G, aVar.m()) || WifiUtils.f55960a.n()) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, wifiConnectActivity.getClassTag() + " --> onScanSuccess() --> 预期使用" + aVar.m() + "通道，且设备支持 -- 开始连接....", false, 2, null);
            av.c cVar = av.c.f16147a;
            if (cVar.c() && cVar.a()) {
                cVar.g(new Function0() { // from class: com.transsion.transfer.wifi.ui.m
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return WifiConnectActivity.l1(this.f55945a, aVar);
                    }
                });
            } else {
                wifiConnectActivity.X0(aVar);
            }
        } else {
            if (System.currentTimeMillis() - wifiConnectActivity.onScanNotSupportTime > 1000) {
                uh.b.f76753a.e(wifiConnectActivity.getResources().getString(R$string.transfer_wifi_connect_error_tip_no_support));
            }
            ((gv.c) wifiConnectActivity.getMViewBinding()).f63975d.resume();
            com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f55970a, wifiConnectActivity.getClassTag() + " --> onScanSuccess() --> 预期使用5G通道，但是设备不支持", false, 2, null);
            wifiConnectActivity.onScanNotSupportTime = System.currentTimeMillis();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit l1(final WifiConnectActivity wifiConnectActivity, final lv.a aVar) {
        ((gv.c) wifiConnectActivity.getMViewBinding()).getRoot().post(new Runnable() { // from class: com.transsion.transfer.wifi.ui.o
            @Override // java.lang.Runnable
            public final void run() {
                WifiConnectActivity.m1(this.f55948a, aVar);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m1(WifiConnectActivity wifiConnectActivity, lv.a aVar) {
        wifiConnectActivity.X0(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n1(WifiConnectActivity wifiConnectActivity, ActivityResult result) {
        Intrinsics.h(result, "result");
        if (result.getResultCode() != -1) {
            wifiConnectActivity.finish();
        }
    }

    private final void o1(View view, int marginTop) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = marginTop;
        view.setLayoutParams(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1(lv.a wifiInfoModel) {
        TransferWifiConnectDialog transferWifiConnectDialog = new TransferWifiConnectDialog();
        transferWifiConnectDialog.p0(new Function0() { // from class: com.transsion.transfer.wifi.ui.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WifiConnectActivity.q1();
            }
        });
        transferWifiConnectDialog.q0(wifiInfoModel);
        this.loadingDialog = transferWifiConnectDialog;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        transferWifiConnectDialog.show(supportFragmentManager, "TransferWifiConnectDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1() {
        WifiConnectionManager.f55832a.b(2001);
        return Unit.f67061a;
    }

    private final void r1() {
        finish();
        TransferStatusActivity.INSTANCE.b(this);
    }

    public final void Y0() {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            TransferWifiConnectDialog transferWifiConnectDialog = this.loadingDialog;
            if (transferWifiConnectDialog != null) {
                transferWifiConnectDialog.dismissAllowingStateLoss();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        this.loadingDialog = null;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: f1, reason: merged with bridge method [inline-methods] */
    public gv.c getViewBinding() {
        gv.c cVarC = gv.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baselib.report.g
    public hj.b getLogViewConfig() {
        return this.logViewConfig;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
        ((gv.c) getMViewBinding()).f63973b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.ui.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiConnectActivity.g1(this.f55937a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        d1();
        e1().o().j(this, new c(new Function1() { // from class: com.transsion.transfer.wifi.ui.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WifiConnectActivity.h1(this.f55941a, (Boolean) obj);
            }
        }));
        int statusBarHeight = ImmersionBar.getStatusBarHeight((Activity) this);
        AppCompatImageView ivClose = ((gv.c) getMViewBinding()).f63973b;
        Intrinsics.g(ivClose, "ivClose");
        o1(ivClose, statusBarHeight);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        TransferClient.f55665t.e(new Function0() { // from class: com.transsion.transfer.wifi.ui.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WifiConnectActivity.i1(this.f55942a);
            }
        });
        iv.h.f65636s.a();
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        ImmersionBar.with(this).transparentBar().init();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ((gv.c) getMViewBinding()).f63975d.pause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ((gv.c) getMViewBinding()).f63975d.resume();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean setImmersionStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void t0() {
        super.t0();
        com.transsion.transfer.wifi.permission.d dVar = com.transsion.transfer.wifi.permission.d.f55906a;
        if (dVar.g(dVar.c())) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) PermissionsActivity.class);
        intent.setAction("com.transsion.transfer.wifi.util.receive");
        this.permissionResult.a(intent);
    }
}
