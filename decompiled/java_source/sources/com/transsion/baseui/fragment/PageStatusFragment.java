package com.transsion.baseui.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.v;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.r;
import com.transsion.baselib.utils.DeviceKeyMonitor;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
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
import nh.n;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 r*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001sB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001b\u0010\bJ\u000f\u0010\u001c\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001c\u0010\bJ\u000f\u0010\u001d\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001d\u0010\bJ\u000f\u0010\u001e\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001e\u0010\bJ\u000f\u0010\u001f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010\bJ\u001f\u0010$\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u000eH\u0016¢\u0006\u0004\b&\u0010\bJ\u000f\u0010'\u001a\u00020\u000eH\u0016¢\u0006\u0004\b'\u0010\bJ\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020(H\u0016¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020(H\u0016¢\u0006\u0004\b,\u0010*J\u000f\u0010-\u001a\u00020(H\u0016¢\u0006\u0004\b-\u0010*J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010\u000bJ\u0019\u00100\u001a\u00020\u00152\b\b\u0002\u0010/\u001a\u00020(H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00102\u001a\u00020\u00152\b\b\u0002\u0010/\u001a\u00020(H\u0016¢\u0006\u0004\b2\u00101J\u000f\u00103\u001a\u00020\u0015H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020\u00152\u0006\u0010/\u001a\u00020(H\u0016¢\u0006\u0004\b5\u00101J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u0011\u00109\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b9\u00104J\r\u0010:\u001a\u00020\u000e¢\u0006\u0004\b:\u0010\bJ\r\u0010;\u001a\u00020\u000e¢\u0006\u0004\b;\u0010\bJ\u0017\u0010<\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\b>\u0010=J\r\u0010?\u001a\u00020\u000e¢\u0006\u0004\b?\u0010\bJ\u0017\u0010@\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\b@\u0010=J\u0017\u0010A\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\bA\u0010=J\u0015\u0010C\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020(¢\u0006\u0004\bC\u0010=J\r\u0010D\u001a\u00020\u000e¢\u0006\u0004\bD\u0010\bJ\u000f\u0010E\u001a\u00020\u000eH\u0016¢\u0006\u0004\bE\u0010\bJ\u000f\u0010F\u001a\u00020\u000eH\u0016¢\u0006\u0004\bF\u0010\bJ\u000f\u0010G\u001a\u00020\u000eH\u0016¢\u0006\u0004\bG\u0010\bJ\u0017\u0010H\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u0011H&¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\tH&¢\u0006\u0004\bJ\u0010\u000bJ!\u0010K\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\bK\u0010\u001aJ\u000f\u0010K\u001a\u00020\u000eH&¢\u0006\u0004\bK\u0010\bJ\u000f\u0010L\u001a\u00020\u000eH&¢\u0006\u0004\bL\u0010\bJ\u000f\u0010M\u001a\u00020\u000eH&¢\u0006\u0004\bM\u0010\bJ\u000f\u0010N\u001a\u00020\u000eH\u0016¢\u0006\u0004\bN\u0010\bJ\u000f\u0010O\u001a\u00020\u000eH&¢\u0006\u0004\bO\u0010\bR$\u0010Q\u001a\u0004\u0018\u00010P8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR$\u0010W\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R$\u0010^\u001a\u0004\u0018\u00010]8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u0018\u0010d\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010g\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u001d\u0010n\u001a\u0004\u0018\u00010i8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bj\u0010k\u001a\u0004\bl\u0010mR\u0018\u0010p\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010q¨\u0006t"}, d2 = {"Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lg4/a;", "T", "Landroidx/fragment/app/Fragment;", "Lcom/transsion/baselib/report/g;", "Lnh/n;", "Lcom/transsion/baselib/utils/DeviceKeyMonitor$b;", "<init>", "()V", "", "getClassTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onPause", "logResume", "logPause", "onDestroy", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "receiveArguments", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "isShowPageStateLayoutTitle", "isRegisteDeviceKeyMonitor", "getEmptyDescText", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "getErrorView", "getNoNetworkView", "()Landroid/view/View;", "getLocalNoNetworkView", "", "getScreenType", "()I", "getLoadingView", "pageStateFitStatusBar", "showContentView", "showEmptyView", "(Z)V", "showErrorView", "showLoadingView", "showNoNetworkView", "showLocalNoNetworkView", "isShow", "changeLoadingState", "showNoNetworkViewDelayed", "onDestroyView", "onHomeClick", "onRecentClick", "getViewBinding", "(Landroid/view/LayoutInflater;)Lg4/a;", "getPageStateLayoutTitle", "initViewData", "initViewModel", "initListener", "loadDefaultData", "retryLoadData", "Landroid/widget/ProgressBar;", "progressBar", "Landroid/widget/ProgressBar;", "getProgressBar", "()Landroid/widget/ProgressBar;", "setProgressBar", "(Landroid/widget/ProgressBar;)V", "mViewBinding", "Lg4/a;", "getMViewBinding", "()Lg4/a;", "setMViewBinding", "(Lg4/a;)V", "Landroid/widget/FrameLayout;", "flStateView", "Landroid/widget/FrameLayout;", "getFlStateView", "()Landroid/widget/FrameLayout;", "setFlStateView", "(Landroid/widget/FrameLayout;)V", "loadingView", "Landroid/view/View;", "Lcom/transsion/baselib/utils/DeviceKeyMonitor;", "deviceKeyMonitor", "Lcom/transsion/baselib/utils/DeviceKeyMonitor;", "Lhj/b;", "logViewConfig$delegate", "Lkotlin/Lazy;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "Ljava/lang/Runnable;", "showNoNetworkViewRunnable", "Ljava/lang/Runnable;", "Companion", "a", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class PageStatusFragment<T extends g4.a> extends Fragment implements com.transsion.baselib.report.g, n, DeviceKeyMonitor.b {
    public static final String TAG = "zxb_fragment";
    private DeviceKeyMonitor deviceKeyMonitor;
    private FrameLayout flStateView;
    private View loadingView;
    private T mViewBinding;
    private ProgressBar progressBar;
    public static final int $stable = 8;

    /* JADX INFO: renamed from: logViewConfig$delegate, reason: from kotlin metadata */
    private final Lazy logViewConfig = LazyKt.b(new Function0() { // from class: com.transsion.baseui.fragment.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PageStatusFragment.h0(this.f43447a);
        }
    });
    private Runnable showNoNetworkViewRunnable = new Runnable() { // from class: com.transsion.baseui.fragment.e
        @Override // java.lang.Runnable
        public final void run() {
            PageStatusFragment.i0(this.f43448a);
        }
    };

    /* JADX INFO: renamed from: com.transsion.baseui.fragment.PageStatusFragment$onConnected$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.baseui.fragment.PageStatusFragment$onConnected$1", f = "PageStatusFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ PageStatusFragment<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PageStatusFragment<T> pageStatusFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = pageStatusFragment;
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
            this.this$0.showContentView();
            PageStatusFragment<T> pageStatusFragment = this.this$0;
            try {
                Result.Companion companion = Result.INSTANCE;
                pageStatusFragment.retryLoadData();
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(PageStatusFragment pageStatusFragment) {
        pageStatusFragment.retryLoadData();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(PageStatusFragment pageStatusFragment, View view) {
        pageStatusFragment.requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0(PageStatusFragment pageStatusFragment) {
        pageStatusFragment.retryLoadData();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f0(PageStatusFragment pageStatusFragment) {
        String strF;
        hj.b logViewConfig = pageStatusFragment.getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            r.c(strF);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(PageStatusFragment pageStatusFragment) {
        String strF;
        pageStatusFragment.retryLoadData();
        hj.b logViewConfig = pageStatusFragment.getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            r.b(strF);
        }
        return Unit.f67061a;
    }

    public static /* synthetic */ View getEmptyView$default(PageStatusFragment pageStatusFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getEmptyView");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        return pageStatusFragment.getEmptyView(z10);
    }

    public static /* synthetic */ View getErrorView$default(PageStatusFragment pageStatusFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getErrorView");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        return pageStatusFragment.getErrorView(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hj.b h0(PageStatusFragment pageStatusFragment) {
        return pageStatusFragment.newLogViewConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(PageStatusFragment pageStatusFragment) {
        showNoNetworkView$default(pageStatusFragment, false, 1, null);
    }

    public static /* synthetic */ void showEmptyView$default(PageStatusFragment pageStatusFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showEmptyView");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showEmptyView(z10);
    }

    public static /* synthetic */ void showErrorView$default(PageStatusFragment pageStatusFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showErrorView");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showErrorView(z10);
    }

    public static /* synthetic */ void showLocalNoNetworkView$default(PageStatusFragment pageStatusFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLocalNoNetworkView");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showLocalNoNetworkView(z10);
    }

    public static /* synthetic */ void showNoNetworkView$default(PageStatusFragment pageStatusFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showNoNetworkView");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showNoNetworkView(z10);
    }

    public final void changeLoadingState(boolean isShow) {
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            jg.c.j(progressBar, isShow);
        }
    }

    public final String getClassTag() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public String getEmptyDescText() {
        return "";
    }

    public View getEmptyView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(2, getScreenType(), isShowTitleLayout, getPageStateLayoutTitle(), getEmptyDescText());
        return stateView;
    }

    public View getErrorView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, getScreenType(), isShowTitleLayout, getPageStateLayoutTitle(), getEmptyDescText());
        stateView.retry(new Function0() { // from class: com.transsion.baseui.fragment.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PageStatusFragment.c0(this.f43449a);
            }
        });
        return stateView;
    }

    protected final FrameLayout getFlStateView() {
        return this.flStateView;
    }

    public View getLoadingView() {
        if (this.loadingView == null) {
            View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_base_loading_layout, (ViewGroup) this.flStateView, false);
            ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.baseui.fragment.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PageStatusFragment.d0(this.f43453a, view);
                }
            });
            this.loadingView = viewInflate;
        }
        return this.loadingView;
    }

    public View getLocalNoNetworkView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(1, getScreenType(), isShowTitleLayout, "", "");
        stateView.retry(new Function0() { // from class: com.transsion.baseui.fragment.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PageStatusFragment.e0(this.f43450a);
            }
        });
        return stateView;
    }

    @Override // com.transsion.baselib.report.g
    public hj.b getLogViewConfig() {
        return (hj.b) this.logViewConfig.getValue();
    }

    public final T getMViewBinding() {
        return this.mViewBinding;
    }

    public View getNoNetworkView() {
        String strF;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext, isShowPageStateLayoutTitle());
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.baseui.fragment.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PageStatusFragment.g0(this.f43451a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.baseui.fragment.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PageStatusFragment.f0(this.f43452a);
            }
        });
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            r.a(strF);
        }
        return noNetworkBigView;
    }

    public abstract String getPageStateLayoutTitle();

    public final ProgressBar getProgressBar() {
        return this.progressBar;
    }

    public int getScreenType() {
        return 1;
    }

    public abstract g4.a getViewBinding(LayoutInflater inflater);

    public abstract void initListener();

    public abstract void initViewData();

    public void initViewData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    public abstract void initViewModel();

    public boolean isAudioShowNoNetworkLayout() {
        return true;
    }

    public boolean isMonitorNetworkState() {
        return true;
    }

    public boolean isRegisteDeviceKeyMonitor() {
        return false;
    }

    public boolean isShowPageStateLayoutTitle() {
        return true;
    }

    public void loadDefaultData() {
    }

    public void logPause() {
        com.transsion.baselib.report.g.a.b(this);
    }

    public void logResume() {
        com.transsion.baselib.report.g.a.c(this);
    }

    public hj.b newLogViewConfig() {
        return com.transsion.baselib.report.g.a.a(this);
    }

    @Override // nh.n
    public void onConnected() {
        n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        v.a(this).b(new AnonymousClass1(this, null));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        Context context;
        super.onCreate(savedInstanceState);
        receiveArguments();
        if (isMonitorNetworkState()) {
            m.f70474a.l(this);
        }
        if (!isRegisteDeviceKeyMonitor() || (context = getContext()) == null) {
            return;
        }
        this.deviceKeyMonitor = new DeviceKeyMonitor(context, this);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        Intrinsics.h(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        View viewInflate = inflater.inflate(R$layout.fragment_default_base_layout, container, false);
        this.mViewBinding = (T) getViewBinding(inflater);
        if (viewInflate != null && (frameLayout2 = (FrameLayout) viewInflate.findViewById(R$id.flContent)) != null) {
            T t11 = this.mViewBinding;
            frameLayout2.addView(t11 != null ? t11.getRoot() : null);
        }
        if (viewInflate == null || (frameLayout = (FrameLayout) viewInflate.findViewById(R$id.flStateView)) == null) {
            frameLayout = null;
        } else if (isAudioShowNoNetworkLayout() && !m.f70474a.e()) {
            frameLayout.setVisibility(0);
            frameLayout.addView(getNoNetworkView());
        }
        this.flStateView = frameLayout;
        this.progressBar = viewInflate != null ? (ProgressBar) viewInflate.findViewById(R$id.progressBar) : null;
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (isMonitorNetworkState()) {
            m.f70474a.m(this);
        }
        DeviceKeyMonitor deviceKeyMonitor = this.deviceKeyMonitor;
        if (deviceKeyMonitor != null) {
            deviceKeyMonitor.b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        View root;
        super.onDestroyView();
        T t11 = this.mViewBinding;
        if (t11 != null && (root = t11.getRoot()) != null) {
            root.removeCallbacks(this.showNoNetworkViewRunnable);
        }
        this.showNoNetworkViewRunnable = null;
    }

    @Override // nh.n
    public void onDisconnected() {
    }

    @Override // com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onHomeClick() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (isHidden()) {
            return;
        }
        logPause();
    }

    @Override // com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onRecentClick() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        logResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initViewData();
        initViewData(view, savedInstanceState);
        initViewModel();
        initListener();
        loadDefaultData();
    }

    public final void pageStateFitStatusBar() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            jg.c.e(frameLayout);
        }
    }

    public void receiveArguments() {
    }

    public abstract void retryLoadData();

    protected final void setFlStateView(FrameLayout frameLayout) {
        this.flStateView = frameLayout;
    }

    public final void setMViewBinding(T t11) {
        this.mViewBinding = t11;
    }

    public final void setProgressBar(ProgressBar progressBar) {
        this.progressBar = progressBar;
    }

    public final void showContentView() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    public final void showEmptyView(boolean isShowTitleLayout) {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getEmptyView(isShowTitleLayout));
        }
    }

    public final void showErrorView(boolean isShowTitleLayout) {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getErrorView(isShowTitleLayout));
        }
    }

    public final void showLoadingView() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getLoadingView());
        }
    }

    public final void showLocalNoNetworkView(boolean isShowTitleLayout) {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getLocalNoNetworkView(isShowTitleLayout));
        }
    }

    public final void showNoNetworkView(boolean isShowTitleLayout) {
        FrameLayout frameLayout;
        if (getContext() == null || (frameLayout = this.flStateView) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        View noNetworkView = getNoNetworkView();
        if (noNetworkView instanceof NoNetworkBigView) {
            NoNetworkBigView.showTitle$default((NoNetworkBigView) noNetworkView, isShowTitleLayout, null, 2, null);
        }
        frameLayout.addView(noNetworkView);
    }

    public final void showNoNetworkViewDelayed() {
        View root;
        T t11 = this.mViewBinding;
        if (t11 == null || (root = t11.getRoot()) == null) {
            return;
        }
        root.postDelayed(this.showNoNetworkViewRunnable, 200L);
    }
}
