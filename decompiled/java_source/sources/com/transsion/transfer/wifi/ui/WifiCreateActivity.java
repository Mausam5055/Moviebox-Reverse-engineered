package com.transsion.transfer.wifi.ui;

import android.content.Intent;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.transfer.R$string;
import com.transsion.transfer.impl.TransferStatusActivity;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.wifi.create.WifiCreateManager;
import com.transsion.transfer.wifi.permission.PermissionsActivity;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0014¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004R\u0018\u0010*\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001b\u00100\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u001c\u00108\u001a\b\u0012\u0004\u0012\u000205048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00102R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00102R\u001a\u0010F\u001a\u00020A8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E¨\u0006G"}, d2 = {"Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lgv/d;", "<init>", "()V", "", "T0", "Llv/a;", "wifiInfoModel", "", "duration", "S0", "(Llv/a;J)V", "", "code", "R0", "(IJ)V", "f1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "V0", "()Lgv/d;", "", "i0", "()Ljava/lang/String;", "", "q0", "()Z", "isTranslucent", "isStatusDark", "o0", "p0", "n0", "s0", "t0", "retryLoadData", "onDestroy", "finish", "i", "Llv/a;", "mWifiInfoModel", "Lcom/transsion/transfer/impl/k;", "j", "Lkotlin/Lazy;", "U0", "()Lcom/transsion/transfer/impl/k;", "serverViewModel", CampaignEx.JSON_KEY_AD_K, "Z", "p2pInUseTag", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "l", "Landroidx/activity/result/b;", "permissionResult", "m", "isCanceled", "Lnv/c;", "n", "Lnv/c;", "shareManager", "o", "is5GChannel", "Lhj/b;", TtmlNode.TAG_P, "Lhj/b;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class WifiCreateActivity extends BaseNewActivity<gv.d> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private lv.a mWifiInfoModel;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy serverViewModel;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean p2pInUseTag;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean is5GChannel;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b permissionResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.transfer.wifi.ui.w
        @Override // androidx.activity.result.a
        public final void a(Object obj) {
            WifiCreateActivity.e1(this.f55956a, (ActivityResult) obj);
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isCanceled = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final nv.c shareManager = new nv.c();

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final hj.b logViewConfig = new hj.b("wifi_create_page", false, 2, null);

    public static final class a implements com.transsion.transfer.wifi.create.a {
        a() {
        }

        @Override // com.transsion.transfer.wifi.create.a
        public void a(lv.a aVar, long j11) {
            WifiCreateActivity.this.S0(aVar, j11);
        }

        @Override // com.transsion.transfer.wifi.create.a
        public void b(int i11, long j11) {
            WifiCreateActivity.this.R0(i11, j11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.transsion.transfer.wifi.create.a
        public void onStart() {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, WifiCreateActivity.this.getClassTag() + " --> createWifi() --> start .... --> WifiCreateActivity.hashCode() = " + WifiCreateActivity.this.hashCode(), false, 2, null);
            ((gv.d) WifiCreateActivity.this.getMViewBinding()).f63983h.setVisibility(0);
            ((gv.d) WifiCreateActivity.this.getMViewBinding()).f63980e.setImageBitmap(null);
            ((gv.d) WifiCreateActivity.this.getMViewBinding()).f63977b.setVisibility(8);
            ((gv.d) WifiCreateActivity.this.getMViewBinding()).f63978c.setVisibility(0);
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f55933a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55933a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f55933a;
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
            this.f55933a.invoke(obj);
        }
    }

    public WifiCreateActivity() {
        final Function0 function0 = null;
        this.serverViewModel = new ViewModelLazy(Reflection.b(com.transsion.transfer.impl.k.class), new Function0<x0>() { // from class: com.transsion.transfer.wifi.ui.WifiCreateActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() { // from class: com.transsion.transfer.wifi.ui.WifiCreateActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() { // from class: com.transsion.transfer.wifi.ui.WifiCreateActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void R0(int code, long duration) {
        com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " --> createWifi() --> 热点创建 失败 --> code = " + code, false, 2, null);
        ((gv.d) getMViewBinding()).f63983h.setVisibility(8);
        ((gv.d) getMViewBinding()).f63978c.setVisibility(8);
        ((gv.d) getMViewBinding()).f63977b.setVisibility(0);
        this.isCanceled = false;
        kv.c.f68396a.i(code);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void S0(lv.a wifiInfoModel, long duration) {
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " --> createWifi() --> successFun() --> Wi-Fi创建成功 -- 刷新UI --> 展示二维码等信息", false, 2, null);
        this.mWifiInfoModel = wifiInfoModel;
        U0().A();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new WifiCreateActivity$createSuccess$1(wifiInfoModel, this, duration, null), 3, null);
        ((gv.d) getMViewBinding()).f63992q.setText(wifiInfoModel != null ? wifiInfoModel.p() : null);
    }

    private final void T0() {
        com.transsion.transfer.impl.l.f55769a.b(this.is5GChannel ? "5g" : "2.4g");
        WifiCreateManager.f55882a.g(lv.a.f69037r.c(this.is5GChannel), androidx.p009lifecycle.v.a(this), new a());
    }

    private final com.transsion.transfer.impl.k U0() {
        return (com.transsion.transfer.impl.k) this.serverViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(WifiCreateActivity wifiCreateActivity, View view) {
        ShareMbApkDialog shareMbApkDialog = new ShareMbApkDialog();
        shareMbApkDialog.r0(wifiCreateActivity.mWifiInfoModel);
        FragmentManager supportFragmentManager = wifiCreateActivity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        shareMbApkDialog.show(supportFragmentManager, "ShareMbApkDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(WifiCreateActivity wifiCreateActivity, View view) {
        wifiCreateActivity.shareManager.i(wifiCreateActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(WifiCreateActivity wifiCreateActivity, View view) {
        Object systemService = wifiCreateActivity.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        if (((LocationManager) systemService).isProviderEnabled("gps")) {
            wifiCreateActivity.t0();
        } else {
            Toast.makeText(wifiCreateActivity, wifiCreateActivity.getResources().getString(R$string.transfer_wifi_positioning_tip), 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(WifiCreateActivity wifiCreateActivity, SwitchButton switchButton, boolean z10) {
        wifiCreateActivity.is5GChannel = z10;
        wifiCreateActivity.t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit a1(final WifiCreateActivity wifiCreateActivity) {
        ((gv.d) wifiCreateActivity.getMViewBinding()).getRoot().post(new Runnable() { // from class: com.transsion.transfer.wifi.ui.x
            @Override // java.lang.Runnable
            public final void run() {
                WifiCreateActivity.b1(this.f55957a);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(WifiCreateActivity wifiCreateActivity) {
        wifiCreateActivity.T0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(WifiCreateActivity wifiCreateActivity, Pair pair) {
        if (((Boolean) pair.getSecond()).booleanValue()) {
            kv.b.f68395a.o(wifiCreateActivity.U0().t());
            wifiCreateActivity.f1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(WifiCreateActivity wifiCreateActivity, ActivityResult result) {
        Intrinsics.h(result, "result");
        if (result.getResultCode() == -1) {
            wifiCreateActivity.t0();
        } else {
            wifiCreateActivity.finish();
        }
    }

    private final void f1() {
        if (mv.b.f70015a.i()) {
            com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " -->startServerSendData  没有数据，连接成功关闭页面", false, 2, null);
        } else {
            com.transsion.transfer.wifi.util.g.h(com.transsion.transfer.wifi.util.g.f55970a, getClassTag() + " -->startServerSendData  有数据，发送数据", false, 2, null);
        }
        this.p2pInUseTag = true;
        TransferStatusActivity.INSTANCE.c(this);
        finish();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public gv.d getViewBinding() {
        gv.d dVarC = gv.d.c(getLayoutInflater());
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, android.app.Activity
    public void finish() {
        super.finish();
        if (this.p2pInUseTag) {
            return;
        }
        WifiCreateManager.f55882a.j();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baselib.report.g
    public hj.b getLogViewConfig() {
        return this.logViewConfig;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isStatusDark() {
        return !ak.x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
        ((gv.d) getMViewBinding()).f63990o.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.ui.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiCreateActivity.W0(this.f55951a, view);
            }
        });
        ((gv.d) getMViewBinding()).f63989n.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.ui.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiCreateActivity.X0(this.f55952a, view);
            }
        });
        ((gv.d) getMViewBinding()).f63987l.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.wifi.ui.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiCreateActivity.Y0(this.f55953a, view);
            }
        });
        ((gv.d) getMViewBinding()).f63984i.setChecked(this.is5GChannel);
        ((gv.d) getMViewBinding()).f63984i.setOnCheckedChangeListener(new SwitchButton.d() { // from class: com.transsion.transfer.wifi.ui.t
            @Override // com.tn.lib.view.SwitchButton.d
            public final void a(SwitchButton switchButton, boolean z10) {
                WifiCreateActivity.Z0(this.f55954a, switchButton, z10);
            }
        });
        if (WifiUtils.f55960a.n()) {
            return;
        }
        ((gv.d) getMViewBinding()).f63984i.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        TitleLayout titleLayout = ((gv.d) getMViewBinding()).f63985j;
        String string = getResources().getString(R$string.transfer_wifi_create_connect_device);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        this.shareManager.g(this);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        TransferClient.f55665t.e(new Function0() { // from class: com.transsion.transfer.wifi.ui.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WifiCreateActivity.c1();
            }
        });
        iv.h.f65636s.a();
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        com.transsion.transfer.impl.k kVarU0 = U0();
        Function4 function4R = U0().r();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("loadDefaultData: serverViewModel.getConnectEventSource().observe:");
        sb2.append(kVarU0);
        sb2.append(",");
        sb2.append(function4R);
        U0().x();
        U0().o().j(this, new b(new Function1() { // from class: com.transsion.transfer.wifi.ui.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WifiCreateActivity.d1(this.f55955a, (Pair) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.isCanceled) {
            com.transsion.transfer.wifi.permission.d dVar = com.transsion.transfer.wifi.permission.d.f55906a;
            if (dVar.g(dVar.e())) {
                kv.c.f68396a.h();
            }
        }
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
    public void t0() {
        super.t0();
        com.transsion.transfer.wifi.permission.d dVar = com.transsion.transfer.wifi.permission.d.f55906a;
        if (!dVar.g(dVar.e())) {
            Intent intent = new Intent(this, (Class<?>) PermissionsActivity.class);
            intent.setAction("com.transsion.transfer.wifi.util.send");
            this.permissionResult.a(intent);
        } else {
            if (U0().y() && U0().j()) {
                f1();
                return;
            }
            av.c cVar = av.c.f16147a;
            if (cVar.d() && cVar.b()) {
                cVar.h(new Function0() { // from class: com.transsion.transfer.wifi.ui.p
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return WifiCreateActivity.a1(this.f55950a);
                    }
                });
            } else {
                T0();
            }
        }
    }
}
