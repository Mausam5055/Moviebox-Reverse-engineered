package com.transsion.baseui.activity;

import android.app.Activity;
import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.v;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.r;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;
import com.transsion.room.api.IFloatingApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import nh.m;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0006J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001a\u0010\u0006J\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0007¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010$\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010\u0006J\u001f\u0010+\u001a\u00020\u00072\u0006\u0010(\u001a\u00020'2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0017H\u0016¢\u0006\u0004\b-\u0010!J\u000f\u0010.\u001a\u00020\u0017H\u0016¢\u0006\u0004\b.\u0010!J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0017H\u0016¢\u0006\u0004\b2\u0010!J\u000f\u00103\u001a\u00020\u0017H\u0016¢\u0006\u0004\b3\u0010!J\u000f\u00104\u001a\u00020\u0017H\u0016¢\u0006\u0004\b4\u0010!J\u000f\u00105\u001a\u00020\u0017H\u0016¢\u0006\u0004\b5\u0010!J\u000f\u00106\u001a\u00020\u0017H\u0016¢\u0006\u0004\b6\u0010!J\u000f\u00107\u001a\u00020\u0007H\u0016¢\u0006\u0004\b7\u0010\u0006J\u000f\u00109\u001a\u000208H\u0016¢\u0006\u0004\b9\u0010:J\u0011\u0010<\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020;H\u0016¢\u0006\u0004\b>\u0010=J\u0011\u0010?\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b?\u0010=J\r\u0010@\u001a\u00020\u0007¢\u0006\u0004\b@\u0010\u0006J\r\u0010A\u001a\u00020\u0007¢\u0006\u0004\bA\u0010\u0006J\r\u0010B\u001a\u00020\u0007¢\u0006\u0004\bB\u0010\u0006J\r\u0010C\u001a\u00020\u0007¢\u0006\u0004\bC\u0010\u0006J\r\u0010D\u001a\u00020\u0007¢\u0006\u0004\bD\u0010\u0006J\r\u0010E\u001a\u00020\u0007¢\u0006\u0004\bE\u0010\u0006J\u000f\u0010F\u001a\u000208H&¢\u0006\u0004\bF\u0010:J\u000f\u0010G\u001a\u00020\u0007H&¢\u0006\u0004\bG\u0010\u0006J\u000f\u0010H\u001a\u00020\u0007H&¢\u0006\u0004\bH\u0010\u0006J\u000f\u0010I\u001a\u00020\u0007H&¢\u0006\u0004\bI\u0010\u0006J\u000f\u0010J\u001a\u00020\u0007H&¢\u0006\u0004\bJ\u0010\u0006J\u000f\u0010K\u001a\u00020\u0007H&¢\u0006\u0004\bK\u0010\u0006R$\u0010S\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR$\u0010W\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010N\u001a\u0004\bU\u0010P\"\u0004\bV\u0010RR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010b\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010aR\u001d\u0010j\u001a\u0004\u0018\u00010e8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i¨\u0006k"}, d2 = {"Lcom/transsion/baseui/activity/BaseNewActivity;", "Lg4/a;", "T", "Lcom/transsion/baseui/activity/BaseMusicFloatActivity;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "setStatusBar", "Landroid/content/Context;", "newBase", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "setView", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "E0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "w0", "setImmersionStatusBar", "()Z", "Landroid/app/Activity;", "context", "m0", "(Landroid/app/Activity;)V", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "q0", "isChangeStatusBar", "", "statusColor", "()I", "isStatusDark", "isTranslucent", "r0", "isAttach", "D0", "t0", "", "d0", "()Ljava/lang/String;", "Landroid/view/View;", "e0", "()Landroid/view/View;", "j0", "g0", "v0", "x0", "y0", "z0", "A0", "B0", "i0", "o0", "p0", "n0", "s0", "retryLoadData", "Landroid/widget/FrameLayout;", "a", "Landroid/widget/FrameLayout;", "f0", "()Landroid/widget/FrameLayout;", "setLlRootView", "(Landroid/widget/FrameLayout;)V", "llRootView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getFlStateView", "setFlStateView", "flStateView", "Landroid/widget/ProgressBar;", "c", "Landroid/widget/ProgressBar;", "progressBar", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "loadingView", "", "e", "F", "downY", "f", "moveY", "Lhj/b;", "g", "Lkotlin/Lazy;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseNewActivity<T extends g4.a> extends BaseMusicFloatActivity<T> implements com.transsion.baselib.report.g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f43389h = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private FrameLayout llRootView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private FrameLayout flStateView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ProgressBar progressBar;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private View loadingView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float downY;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float moveY;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig = LazyKt.b(new Function0() { // from class: com.transsion.baseui.activity.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BaseNewActivity.u0(this.f43407a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.baseui.activity.BaseNewActivity$onConnected$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.baseui.activity.BaseNewActivity$onConnected$1", f = "BaseNewActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ BaseNewActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BaseNewActivity<T> baseNewActivity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = baseNewActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.x0();
            BaseNewActivity<T> baseNewActivity = this.this$0;
            try {
                Result.Companion companion = Result.INSTANCE;
                baseNewActivity.retryLoadData();
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(BaseNewActivity baseNewActivity) {
        baseNewActivity.A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(BaseNewActivity baseNewActivity, View view) {
        baseNewActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(BaseNewActivity baseNewActivity) {
        baseNewActivity.retryLoadData();
        r.b(baseNewActivity.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(BaseNewActivity baseNewActivity) {
        r.c(baseNewActivity.getPageName());
        return Unit.f67061a;
    }

    private final void setStatusBar() {
        if (setImmersionStatusBar()) {
            ImmersionBar immersionBarWith = ImmersionBar.with(this);
            if (isChangeStatusBar()) {
                immersionBarWith.statusBarColor(statusColor());
            }
            if (isTranslucent()) {
                immersionBarWith.statusBarAlpha(0.0f);
            } else {
                immersionBarWith.statusBarAlpha(1.0f);
            }
            if (isStatusDark()) {
                immersionBarWith.statusBarDarkFont(true);
            } else {
                immersionBarWith.statusBarDarkFont(false);
            }
            immersionBarWith.fitsSystemWindows(r0());
            Intrinsics.e(immersionBarWith);
            E0(immersionBarWith);
            immersionBarWith.init();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hj.b u0(BaseNewActivity baseNewActivity) {
        return baseNewActivity.newLogViewConfig();
    }

    public final void A0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(j0());
        }
    }

    public final void B0() {
        getMViewBinding().getRoot().postDelayed(new Runnable() { // from class: com.transsion.baseui.activity.i
            @Override // java.lang.Runnable
            public final void run() {
                BaseNewActivity.C0(this.f43408a);
            }
        }, 200L);
    }

    public boolean D0() {
        return false;
    }

    public void E0(ImmersionBar with) {
        Intrinsics.h(with, "with");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        if (newBase == null) {
            super.attachBaseContext(newBase);
        } else {
            com.transsion.baselib.locale.d.b bVar = com.transsion.baselib.locale.d.f43297f;
            super.attachBaseContext(bVar.k(newBase, bVar.e().j()));
        }
    }

    /* JADX INFO: renamed from: d0 */
    public String getEmptyDesc() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent event) {
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.downY = event.getRawY();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float rawY = event.getRawY();
            this.moveY = rawY;
            if (Math.abs(rawY - this.downY) > 50.0f) {
                IFloatingApi iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
                if (iFloatingApi != null) {
                    iFloatingApi.b();
                }
                m0(this);
            }
        }
        return super.dispatchTouchEvent(event);
    }

    public View e0() {
        StateView stateView = new StateView(this);
        if (D0()) {
            stateView.setFitsSystemWindows(true);
        }
        stateView.showData(2, 1, true, i0(), getEmptyDesc());
        return stateView;
    }

    /* JADX INFO: renamed from: f0, reason: from getter */
    public final FrameLayout getLlRootView() {
        return this.llRootView;
    }

    public View g0() {
        if (this.loadingView == null) {
            View viewInflate = LayoutInflater.from(this).inflate(R$layout.default_base_loading_layout, (ViewGroup) this.flStateView, false);
            ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.baseui.activity.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseNewActivity.h0(this.f43409a, view);
                }
            });
            this.loadingView = viewInflate;
        }
        return this.loadingView;
    }

    @Override // com.transsion.baselib.report.g
    public hj.b getLogViewConfig() {
        return (hj.b) this.logViewConfig.getValue();
    }

    public abstract String i0();

    public boolean isAttach() {
        return true;
    }

    public boolean isChangeStatusBar() {
        return false;
    }

    public boolean isStatusDark() {
        return true;
    }

    public boolean isTranslucent() {
        return false;
    }

    public View j0() {
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(this);
        noNetworkBigView.showTitle(true, i0());
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.baseui.activity.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseNewActivity.k0(this.f43405a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.baseui.activity.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseNewActivity.l0(this.f43406a);
            }
        });
        r.a(getPageName());
        return noNetworkBigView;
    }

    public void m0(Activity context) {
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = context != null ? context.getSystemService("input_method") : null;
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            Result.m454constructorimpl(Boolean.valueOf(((InputMethodManager) systemService).hideSoftInputFromWindow(context.getWindow().getDecorView().getWindowToken(), 0)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public abstract void n0();

    public hj.b newLogViewConfig() {
        return com.transsion.baselib.report.g.a.a(this);
    }

    public abstract void o0();

    @Override // com.transsion.baseui.activity.BaseCommonActivity, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        v.a(this).b(new AnonymousClass1(this, null));
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStatusBar();
        o0();
        p0();
        n0();
        if (m.f70474a.e()) {
            s0();
        }
        t0();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, nh.n
    public void onDisconnected() {
        super.onDisconnected();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.transsion.baselib.report.g.a.b(this);
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        IFloatingApi iFloatingApi;
        super.onResume();
        com.transsion.baselib.report.g.a.c(this);
        if (!isAttach() || (iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0])) == null) {
            return;
        }
        iFloatingApi.g(new WeakReference(this));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        IFloatingApi iFloatingApi;
        super.onStop();
        if (!isAttach() || (iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0])) == null) {
            return;
        }
        iFloatingApi.i(new WeakReference(this));
    }

    public abstract void p0();

    public boolean q0() {
        return true;
    }

    public boolean r0() {
        return true;
    }

    public abstract void retryLoadData();

    public abstract void s0();

    public boolean setImmersionStatusBar() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    protected void setView() {
        setContentView(R$layout.default_base_layout);
        this.llRootView = (FrameLayout) findViewById(R$id.llRootView);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.flContent);
        if (frameLayout != null) {
            frameLayout.addView(getMViewBinding().getRoot());
        }
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.flStateView);
        if (frameLayout2 == null) {
            frameLayout2 = null;
        } else if (q0() && !m.f70474a.e()) {
            frameLayout2.setVisibility(0);
            frameLayout2.addView(j0());
        }
        this.flStateView = frameLayout2;
        this.progressBar = (ProgressBar) findViewById(R$id.progressBar);
    }

    public int statusColor() {
        return R$color.bg_01;
    }

    public void t0() {
    }

    public final void v0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            jg.c.e(frameLayout);
        }
    }

    public final void w0() {
        setStatusBar();
    }

    public final void x0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    public final void y0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(e0());
        }
    }

    public final void z0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(g0());
        }
    }
}
