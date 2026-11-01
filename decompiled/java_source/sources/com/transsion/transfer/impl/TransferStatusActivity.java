package com.transsion.transfer.impl;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.v0;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.downloadapi.IDownloadApiProvider;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$mipmap;
import com.transsion.transfer.R$string;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.impl.view.TabTitleView;
import com.transsion.transfer.wifi.connect.WifiConnectionManager;
import com.transsion.transfer.wifi.create.WifiCreateManager;
import com.transsion.transfer.wifi.ui.TransferDisconnectTipsDialog;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005*\u00014\u0018\u0000 K2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u001f\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0006\u0010\u0018R\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010.\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010+R\u001d\u00103\u001a\u0004\u0018\u00010&8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00100\u001a\u0004\b;\u0010<R\u001b\u0010B\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u00100\u001a\u0004\b@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020C0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010I¨\u0006L"}, d2 = {"Lcom/transsion/transfer/impl/TransferStatusActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lgv/b;", "<init>", "()V", "", "initView", "q1", "m1", "N0", "initData", "a1", "W0", "", "connected", "", "deviceName", "P0", "(ZLjava/lang/String;)V", "s1", "V0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "isTranslucent", "()Z", "isStatusDark", "U0", "()Lgv/b;", "Lcom/transsion/transfer/impl/TransferReceivedFragment;", "a", "Lcom/transsion/transfer/impl/TransferReceivedFragment;", "receivedFragment", "Lcom/transsion/transfer/impl/TransferSentFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/transfer/impl/TransferSentFragment;", "sentFragment", "Lhv/a;", "c", "Lhv/a;", "selectFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isSelectFragmentShown", "e", "needServerAsClientFetchList", "f", "Lkotlin/Lazy;", "T0", "()Lhv/a;", "transferSelectFragment", "com/transsion/transfer/impl/TransferStatusActivity$g", "g", "R0", "()Lcom/transsion/transfer/impl/TransferStatusActivity$g;", "serverFileHandler", "Lcom/transsion/transfer/impl/k;", "h", "S0", "()Lcom/transsion/transfer/impl/k;", "serverViewModel", "Lcom/transsion/transfer/impl/ClientViewModel;", "i", "Q0", "()Lcom/transsion/transfer/impl/ClientViewModel;", "clientViewModel", "", "j", "I", "selectTabIndex", "", CampaignEx.JSON_KEY_AD_K, "[Ljava/lang/Integer;", "tabs", "l", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TransferStatusActivity extends BaseActivity<gv.b> {

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f55635m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f55636n;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TransferReceivedFragment receivedFragment;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TransferSentFragment sentFragment;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private hv.a selectFragment;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isSelectFragmentShown;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean needServerAsClientFetchList;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int selectTabIndex;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy transferSelectFragment = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.l0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferStatusActivity.t1();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy serverFileHandler = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.m0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferStatusActivity.o1(this.f55772a);
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy serverViewModel = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.n0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferStatusActivity.p1(this.f55774a);
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy clientViewModel = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.o0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferStatusActivity.O0(this.f55776a);
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Integer[] tabs = {Integer.valueOf(R$string.transfer_tab_received), Integer.valueOf(R$string.transfer_tab_sent)};

    /* JADX INFO: renamed from: com.transsion.transfer.impl.TransferStatusActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return TransferStatusActivity.f55635m;
        }

        public final void b(Context context) {
            Intrinsics.h(context, "context");
            TransferStatusActivity.f55636n = false;
            context.startActivity(new Intent(context, (Class<?>) TransferStatusActivity.class));
        }

        public final void c(Context context) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) TransferStatusActivity.class);
            TransferStatusActivity.f55636n = true;
            context.startActivity(intent);
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
            ((gv.b) TransferStatusActivity.this.getMViewBinding()).f63964f.onPageScrollStateChanged(i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
            ((gv.b) TransferStatusActivity.this.getMViewBinding()).f63964f.onPageScrolled(i11, f11, i12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            ((gv.b) TransferStatusActivity.this.getMViewBinding()).f63964f.onPageSelected(i11);
            TransferStatusActivity.this.selectTabIndex = i11;
            if (i11 == 0) {
                TransferReceivedFragment transferReceivedFragment = TransferStatusActivity.this.receivedFragment;
                if (transferReceivedFragment != null) {
                    transferReceivedFragment.u0();
                    return;
                }
                return;
            }
            TransferSentFragment transferSentFragment = TransferStatusActivity.this.sentFragment;
            if (transferSentFragment != null) {
                transferSentFragment.p0();
            }
        }
    }

    public static final class c extends j00.a {

        public static final class a extends com.transsion.baseui.util.f {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ TransferStatusActivity f55650e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f55651f;

            a(TransferStatusActivity transferStatusActivity, int i11) {
                this.f55650e = transferStatusActivity;
                this.f55651f = i11;
            }

            @Override // com.transsion.baseui.util.f
            public void c(View view) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.transsion.baseui.util.f
            public void d(View view) {
                ((gv.b) this.f55650e.getMViewBinding()).f63971m.setCurrentItem(this.f55651f, true);
            }
        }

        c() {
        }

        @Override // j00.a
        public int a() {
            return TransferStatusActivity.this.tabs.length;
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(context);
            gradientLinePagerIndicator.setMode(2);
            gradientLinePagerIndicator.setLineHeight(com.blankj.utilcode.util.i.e(3.0f));
            gradientLinePagerIndicator.setLineWidth(com.blankj.utilcode.util.i.e(24.0f));
            gradientLinePagerIndicator.setRoundRadius(com.blankj.utilcode.util.i.e(2.0f));
            gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            gradientLinePagerIndicator.setColors(androidx.core.content.b.getColor(context, R$color.main_gradient_start), androidx.core.content.b.getColor(context, R$color.main_gradient_center), androidx.core.content.b.getColor(context, R$color.main_gradient_end));
            return gradientLinePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, int i11) {
            Intrinsics.h(context, "context");
            TabTitleView tabTitleView = new TabTitleView(context);
            TransferStatusActivity transferStatusActivity = TransferStatusActivity.this;
            tabTitleView.setTextById(transferStatusActivity.tabs[i11].intValue());
            tabTitleView.setOnClickListener(new a(transferStatusActivity, i11));
            return tabTitleView;
        }
    }

    public static final class d extends FragmentStateAdapter {
        d() {
            super(TransferStatusActivity.this);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            if (i11 == 0) {
                TransferReceivedFragment transferReceivedFragmentA = TransferReceivedFragment.INSTANCE.a();
                TransferStatusActivity.this.receivedFragment = transferReceivedFragmentA;
                return transferReceivedFragmentA;
            }
            if (i11 != 1) {
                TransferSentFragment transferSentFragmentA = TransferSentFragment.INSTANCE.a();
                TransferStatusActivity.this.sentFragment = transferSentFragmentA;
                return transferSentFragmentA;
            }
            TransferSentFragment transferSentFragmentA2 = TransferSentFragment.INSTANCE.a();
            TransferStatusActivity.this.sentFragment = transferSentFragmentA2;
            return transferSentFragmentA2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return TransferStatusActivity.this.tabs.length;
        }
    }

    public static final class e extends androidx.activity.u {
        e() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            if (TransferStatusActivity.this.isSelectFragmentShown) {
                TransferStatusActivity.this.V0();
            } else if (TransferStatusActivity.this.S0().j() || TransferStatusActivity.this.Q0().x()) {
                TransferStatusActivity.this.q1();
            } else {
                TransferStatusActivity.this.m1();
                TransferStatusActivity.this.finish();
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f55654a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55654a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f55654a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f55654a.invoke(obj);
        }
    }

    public static final class g implements com.transsion.transfer.impl.g {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(TransferStatusActivity transferStatusActivity, String str) {
            TransferStatusActivity.INSTANCE.a();
            transferStatusActivity.P0(true, str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.transsion.transfer.impl.g
        public void a(String clientIp, final String clientDeviceName) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(clientDeviceName, "clientDeviceName");
            ConstraintLayout root = ((gv.b) TransferStatusActivity.this.getMViewBinding()).getRoot();
            final TransferStatusActivity transferStatusActivity = TransferStatusActivity.this;
            root.post(new Runnable() { // from class: com.transsion.transfer.impl.t0
                @Override // java.lang.Runnable
                public final void run() {
                    TransferStatusActivity.g.d(transferStatusActivity, clientDeviceName);
                }
            });
        }

        @Override // com.transsion.transfer.impl.g
        public String b() {
            String MODEL = Build.MODEL;
            Intrinsics.g(MODEL, "MODEL");
            return MODEL;
        }
    }

    public static final class h implements hv.b {
        h() {
        }

        @Override // hv.b
        public void a() {
            TransferStatusActivity.this.V0();
            TransferSentFragment transferSentFragment = TransferStatusActivity.this.sentFragment;
            if (transferSentFragment != null) {
                transferSentFragment.p0();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // hv.b
        public void b() {
            TransferStatusActivity.this.V0();
            TransferStatusActivity.this.S0().z(1);
            ((gv.b) TransferStatusActivity.this.getMViewBinding()).f63971m.setCurrentItem(1, true);
            TransferSentFragment transferSentFragment = TransferStatusActivity.this.sentFragment;
            if (transferSentFragment != null) {
                transferSentFragment.p0();
            }
        }

        @Override // hv.b
        public void c() {
            TransferStatusActivity.this.q1();
        }
    }

    static {
        String name = TransferStatusActivity.class.getName();
        Intrinsics.g(name, "getName(...)");
        f55635m = name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void N0() {
        CommonNavigator commonNavigator = new CommonNavigator(this);
        commonNavigator.setFollowTouch(true);
        commonNavigator.setAdapter(new c());
        ((gv.b) getMViewBinding()).f63964f.setNavigator(commonNavigator);
        ((gv.b) getMViewBinding()).f63971m.registerOnPageChangeCallback(new b());
        ((gv.b) getMViewBinding()).f63971m.setCurrentItem(this.selectTabIndex, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClientViewModel O0(TransferStatusActivity transferStatusActivity) {
        return (ClientViewModel) new v0(transferStatusActivity).a(ClientViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void P0(boolean connected, String deviceName) {
        if (connected) {
            hv.a aVar = this.selectFragment;
            if (aVar != null) {
                aVar.L();
            }
            ((gv.b) getMViewBinding()).f63969k.setImageResource(R$mipmap.transfer_ic_link);
            ((gv.b) getMViewBinding()).f63967i.setText(getString(R$string.transfer_disconnect));
            ((gv.b) getMViewBinding()).f63968j.setText(getString(R$string.transfer_state_connect_tips, ((gv.b) getMViewBinding()).f63968j.getTag() == null ? deviceName : ((gv.b) getMViewBinding()).f63968j.getTag().toString()));
            if (deviceName.length() > 0) {
                ((gv.b) getMViewBinding()).f63968j.setTag(deviceName);
                return;
            }
            return;
        }
        hv.a aVar2 = this.selectFragment;
        if (aVar2 != null) {
            aVar2.c();
        }
        ((gv.b) getMViewBinding()).f63969k.setImageResource(R$mipmap.transfer_ic_unlink);
        ((gv.b) getMViewBinding()).f63967i.setText("");
        ((gv.b) getMViewBinding()).f63968j.setText(getString(R$string.transfer_state_disconnect_tips, ((gv.b) getMViewBinding()).f63968j.getTag() == null ? deviceName : ((gv.b) getMViewBinding()).f63968j.getTag().toString()));
        if (deviceName.length() > 0) {
            ((gv.b) getMViewBinding()).f63968j.setTag(deviceName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClientViewModel Q0() {
        return (ClientViewModel) this.clientViewModel.getValue();
    }

    private final g R0() {
        return (g) this.serverFileHandler.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final k S0() {
        return (k) this.serverViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V0() {
        Object obj = this.selectFragment;
        if (obj != null) {
            this.isSelectFragmentShown = false;
            getSupportFragmentManager().p().p((Fragment) obj).l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void W0() {
        if (!Q0().x() || Q0().p() == null) {
            if (!f55636n) {
                String strP = Q0().p();
                P0(false, strP != null ? strP : "");
            }
            Q0().q().j(this, new f(new Function1() { // from class: com.transsion.transfer.impl.r0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TransferStatusActivity.X0(this.f55780a, (String) obj);
                }
            }));
        } else {
            ((gv.b) getMViewBinding()).f63968j.setText(Q0().p());
            hv.a aVar = this.selectFragment;
            if (aVar != null) {
                String strP2 = Q0().p();
                if (strP2 == null) {
                    strP2 = "";
                }
                aVar.C(strP2);
            }
            String strP3 = Q0().p();
            P0(true, strP3 != null ? strP3 : "");
        }
        Q0().o().j(this, new f(new Function1() { // from class: com.transsion.transfer.impl.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferStatusActivity.Y0(this.f55782a, (Boolean) obj);
            }
        }));
        Q0().n().j(this, new f(new Function1() { // from class: com.transsion.transfer.impl.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferStatusActivity.Z0(this.f55657a, (Integer) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit X0(TransferStatusActivity transferStatusActivity, String str) {
        if (str == null) {
            return Unit.f67061a;
        }
        ((gv.b) transferStatusActivity.getMViewBinding()).f63968j.setText(str);
        hv.a aVar = transferStatusActivity.selectFragment;
        if (aVar != null) {
            String strP = transferStatusActivity.Q0().p();
            if (strP == null) {
                strP = "";
            }
            aVar.C(strP);
        }
        String strP2 = transferStatusActivity.Q0().p();
        transferStatusActivity.P0(true, strP2 != null ? strP2 : "");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y0(TransferStatusActivity transferStatusActivity, Boolean bool) {
        boolean z10 = bool.booleanValue() || transferStatusActivity.S0().j();
        String strP = transferStatusActivity.Q0().p();
        if (strP == null) {
            strP = "";
        }
        transferStatusActivity.P0(z10, strP);
        if (bool.booleanValue()) {
            transferStatusActivity.Q0().s(true);
        } else {
            TransferReceivedFragment transferReceivedFragment = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment != null) {
                transferReceivedFragment.t0();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Z0(TransferStatusActivity transferStatusActivity, Integer num) {
        if (num != null && num.intValue() == 1) {
            ((gv.b) transferStatusActivity.getMViewBinding()).f63971m.setCurrentItem(0, true);
            kv.b.f68395a.k(TransferClient.f55665t.k());
            TransferReceivedFragment transferReceivedFragment = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment != null) {
                transferReceivedFragment.m0();
            }
        }
        return Unit.f67061a;
    }

    private final void a1() {
        if (f55636n) {
            String strP = S0().p();
            boolean z10 = !(strP == null || strP.length() == 0);
            hv.a aVar = this.selectFragment;
            if (aVar != null) {
                String strP2 = S0().p();
                if (strP2 == null) {
                    strP2 = "";
                }
                aVar.C(strP2);
            }
            String strP3 = S0().p();
            P0(z10, strP3 != null ? strP3 : "");
        }
        S0().k().j(this, new f(new Function1() { // from class: com.transsion.transfer.impl.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferStatusActivity.b1(this.f55661a, (String) obj);
            }
        }));
        S0().o().j(this, new f(new Function1() { // from class: com.transsion.transfer.impl.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferStatusActivity.c1(this.f55664a, (Pair) obj);
            }
        }));
        S0().n().j(this, new f(new Function1() { // from class: com.transsion.transfer.impl.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferStatusActivity.d1(this.f55748a, (String) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit b1(TransferStatusActivity transferStatusActivity, String str) {
        ((gv.b) transferStatusActivity.getMViewBinding()).f63968j.setText(str);
        hv.a aVar = transferStatusActivity.selectFragment;
        if (aVar != null) {
            aVar.C(str == null ? "" : str);
        }
        Intrinsics.e(str);
        transferStatusActivity.P0(true, str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(TransferStatusActivity transferStatusActivity, Pair pair) {
        boolean zBooleanValue = ((Boolean) pair.getSecond()).booleanValue();
        String strP = transferStatusActivity.S0().p();
        if (strP == null) {
            strP = "";
        }
        transferStatusActivity.P0(zBooleanValue, strP);
        if (transferStatusActivity.needServerAsClientFetchList) {
            transferStatusActivity.needServerAsClientFetchList = false;
            if (((Boolean) pair.getSecond()).booleanValue()) {
                transferStatusActivity.s1();
            } else {
                transferStatusActivity.m1();
                transferStatusActivity.finish();
            }
        } else if (!((Boolean) pair.getSecond()).booleanValue()) {
            TransferReceivedFragment transferReceivedFragment = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment != null) {
                transferReceivedFragment.t0();
            }
            TransferReceivedFragment transferReceivedFragment2 = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment2 != null) {
                transferReceivedFragment2.t0();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(final TransferStatusActivity transferStatusActivity, String str) {
        TransferClient.a aVar = TransferClient.f55665t;
        Intrinsics.e(str);
        TransferClient.a.m(aVar, str, WifiUtils.f55960a.l(), null, new Function0() { // from class: com.transsion.transfer.impl.f0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferStatusActivity.e1(this.f55751a);
            }
        }, 4, null);
        kv.b.f68395a.t(aVar.k());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit e1(final TransferStatusActivity transferStatusActivity) {
        ((gv.b) transferStatusActivity.getMViewBinding()).getRoot().post(new Runnable() { // from class: com.transsion.transfer.impl.h0
            @Override // java.lang.Runnable
            public final void run() {
                TransferStatusActivity.f1(this.f55753a);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f1(final TransferStatusActivity transferStatusActivity) {
        transferStatusActivity.W0();
        transferStatusActivity.Q0().k(new Function2() { // from class: com.transsion.transfer.impl.i0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransferStatusActivity.g1(this.f55754a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        transferStatusActivity.Q0().s(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(TransferStatusActivity transferStatusActivity, boolean z10, String error) {
        Intrinsics.h(error, "error");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initServerVM: getClientOpenServerEventSource connect res:");
        sb2.append(z10);
        if (!z10) {
            transferStatusActivity.Q0().k(new Function2() { // from class: com.transsion.transfer.impl.j0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TransferStatusActivity.h1(((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h1(boolean z10, String autoError) {
        Intrinsics.h(autoError, "autoError");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initServerVM: getClientOpenServerEventSource auto retry connect res:");
        sb2.append(z10);
        sb2.append(", autoError:");
        sb2.append(autoError);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(final TransferStatusActivity transferStatusActivity, View view) {
        if (f55636n) {
            if (transferStatusActivity.S0().j()) {
                kv.b.f68395a.u(transferStatusActivity.S0().t());
                transferStatusActivity.s1();
                return;
            } else {
                transferStatusActivity.m1();
                transferStatusActivity.finish();
                return;
            }
        }
        if (!transferStatusActivity.Q0().x()) {
            transferStatusActivity.m1();
            transferStatusActivity.finish();
            return;
        }
        if (!transferStatusActivity.S0().y()) {
            transferStatusActivity.S0().A();
        }
        if (transferStatusActivity.S0().m().isEmpty()) {
            transferStatusActivity.Q0().z(new Function1() { // from class: com.transsion.transfer.impl.p0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TransferStatusActivity.j1(this.f55778a, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            transferStatusActivity.s1();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void initData() {
        a1();
        W0();
        ((gv.b) getMViewBinding()).f63971m.setCurrentItem(f55636n ? 1 : 0);
        if (f55636n) {
            List listL = S0().l();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initData: clientIps:");
            sb2.append(listL);
            List listM = S0().m();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("initData: clientNames:");
            sb3.append(listM);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((gv.b) getMViewBinding()).f63971m.setAdapter(new d());
        N0();
        ((gv.b) getMViewBinding()).f63965g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.impl.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferStatusActivity.i1(this.f55827a, view);
            }
        });
        ((gv.b) getMViewBinding()).f63967i.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.impl.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferStatusActivity.l1(this.f55768a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit j1(final TransferStatusActivity transferStatusActivity, boolean z10) {
        kv.b.f68395a.l(TransferClient.f55665t.k());
        if (transferStatusActivity.S0().m().isEmpty()) {
            transferStatusActivity.needServerAsClientFetchList = true;
        } else {
            ((gv.b) transferStatusActivity.getMViewBinding()).getRoot().post(new Runnable() { // from class: com.transsion.transfer.impl.g0
                @Override // java.lang.Runnable
                public final void run() {
                    TransferStatusActivity.k1(this.f55752a);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(TransferStatusActivity transferStatusActivity) {
        transferStatusActivity.s1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(TransferStatusActivity transferStatusActivity, View view) {
        transferStatusActivity.q1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m1() {
        mv.b.f70015a.b();
        mv.a.f70013a.b();
        S0().C();
        iv.h.f65636s.a();
        av.c cVar = av.c.f16147a;
        cVar.j();
        cVar.i();
        Q0().B(new Function0() { // from class: com.transsion.transfer.impl.q0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferStatusActivity.n1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1() {
        WifiCreateManager.f55882a.j();
        av.c cVar = av.c.f16147a;
        cVar.f();
        WifiConnectionManager.f55832a.s();
        cVar.e();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g o1(TransferStatusActivity transferStatusActivity) {
        return transferStatusActivity.new g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final k p1(TransferStatusActivity transferStatusActivity) {
        k kVar = (k) new v0(transferStatusActivity).a(k.class);
        kVar.B(transferStatusActivity.R0());
        kVar.z(1);
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1() {
        TransferDisconnectTipsDialog transferDisconnectTipsDialog = new TransferDisconnectTipsDialog();
        transferDisconnectTipsDialog.r0(new Function1() { // from class: com.transsion.transfer.impl.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferStatusActivity.r1(this.f55749a, ((Boolean) obj).booleanValue());
            }
        });
        transferDisconnectTipsDialog.k0(this, "transfer_disconnect_tips_dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(TransferStatusActivity transferStatusActivity, boolean z10) {
        if (z10) {
            if (f55636n) {
                kv.b.f68395a.p(transferStatusActivity.S0().t());
            } else {
                kv.b.f68395a.f(TransferClient.f55665t.k());
            }
            transferStatusActivity.m1();
            transferStatusActivity.finish();
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void s1() {
        Fragment fragmentK0 = getSupportFragmentManager().k0("TransferSelectFragment");
        if (fragmentK0 == null) {
            hv.a aVarT0 = T0();
            if (aVarT0 != 0) {
                aVarT0.v(new h());
            }
            Intrinsics.f(aVarT0, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
            fragmentK0 = (Fragment) aVarT0;
        }
        hv.a aVar = (hv.a) fragmentK0;
        this.selectFragment = aVar;
        if (aVar != null) {
            aVar.N(Q0().w() + S0().w(), Q0().r() + S0().s());
        }
        this.isSelectFragmentShown = true;
        if (fragmentK0.isAdded()) {
            getSupportFragmentManager().p().y(fragmentK0).l();
        } else {
            getSupportFragmentManager().p().c(R$id.fl_select_page_container, fragmentK0, "TransferSelectFragment").l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hv.a t1() {
        IDownloadApiProvider iDownloadApiProvider = (IDownloadApiProvider) TheRouter.d(IDownloadApiProvider.class, new Object[0]);
        Object objA = iDownloadApiProvider != null ? iDownloadApiProvider.a() : null;
        Intrinsics.f(objA, "null cannot be cast to non-null type com.transsion.transfer.impl.listener.ITransferSelectView");
        return (hv.a) objA;
    }

    public final hv.a T0() {
        return (hv.a) this.transferSelectFragment.getValue();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public gv.b getViewBinding() {
        gv.b bVarC = gv.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        super.initView(savedInstanceState);
        initView();
        initData();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !ak.x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String strL = WifiUtils.f55960a.l();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onCreate: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        sb2.append(strL);
        ImageView vTopBg = ((gv.b) getMViewBinding()).f63970l;
        Intrinsics.g(vTopBg, "vTopBg");
        jg.c.e(vTopBg);
        getWindow().addFlags(128);
        getOnBackPressedDispatcher().i(this, new e());
    }
}
