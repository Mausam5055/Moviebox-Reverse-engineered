package com.tn.tranpay.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.window.OnBackInvokedCallback;
import androidx.fragment.app.DialogFragment;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.NetworkUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.tranpay.R$id;
import com.tn.lib.tranpay.R$layout;
import com.tn.lib.tranpay.R$style;
import com.tn.tranpay.BillingParams;
import com.tn.tranpay.bean.LoadConfigContent;
import com.tn.tranpay.bean.MediumInputBean;
import com.tn.tranpay.viewmodel.PaymentViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 N2\u00020\u00012\u00020\u0002:\u00012B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J+\u0010\u0010\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u001b\u0010%\u001a\u00020\u00052\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050#¢\u0006\u0004\b%\u0010&J-\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010(\u001a\u00020'2\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b,\u0010-J!\u0010/\u001a\u00020\u00052\u0006\u0010.\u001a\u00020+2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b/\u00100R\u001b\u00106\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001e\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R*\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010@\u001a\u0004\bC\u0010D\"\u0004\bE\u0010&R\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\u001d\u0010M\u001a\u0004\u0018\u00010\u001b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bK\u00103\u001a\u0004\bL\u0010\u001d¨\u0006O"}, d2 = {"Lcom/tn/tranpay/fragment/PayLoadingFragment;", "Landroidx/fragment/app/DialogFragment;", "Lcom/tn/tranpay/report/b;", "<init>", "()V", "", "e0", "logResume", "logPause", "showLoading", "hideLoading", "", "billingResponseCode", "", "message", "serverCode", "f0", "(ILjava/lang/String;Ljava/lang/String;)V", "i0", "o0", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", TmcConstants.NAVIGATION_ON_START, "onPause", "Lcom/tn/tranpay/report/c;", "j0", "()Lcom/tn/tranpay/report/c;", "onResume", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function0;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "n0", "(Lkotlin/jvm/functions/Function0;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/tn/tranpay/BillingParams;", "a", "Lkotlin/Lazy;", "h0", "()Lcom/tn/tranpay/BillingParams;", "params", "Landroid/widget/ProgressBar;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/ProgressBar;", "loadingView", "Lcom/tn/tranpay/d;", "c", "Lcom/tn/tranpay/d;", "callback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function0;", "onDismissListener", "e", "getOnBackListener", "()Lkotlin/jvm/functions/Function0;", "m0", "onBackListener", "Lcom/tn/tranpay/viewmodel/PaymentViewModel;", "f", "Lcom/tn/tranpay/viewmodel/PaymentViewModel;", "viewModel", "g", "getLogViewConfig", "logViewConfig", "h", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PayLoadingFragment extends DialogFragment implements com.tn.tranpay.report.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ProgressBar loadingView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.tn.tranpay.d callback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function0 onDismissListener;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 onBackListener;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy params = LazyKt.b(new Function0<BillingParams>() { // from class: com.tn.tranpay.fragment.PayLoadingFragment$params$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final BillingParams invoke() {
            Bundle arguments = this.this$0.getArguments();
            BillingParams billingParams = arguments != null ? (BillingParams) arguments.getParcelable("paymentParams") : null;
            Intrinsics.e(billingParams);
            return billingParams;
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final PaymentViewModel viewModel = new PaymentViewModel();

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig = LazyKt.b(new Function0<com.tn.tranpay.report.c>() { // from class: com.tn.tranpay.fragment.PayLoadingFragment$logViewConfig$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.tn.tranpay.report.c invoke() {
            return this.this$0.j0();
        }
    });

    /* JADX INFO: renamed from: com.tn.tranpay.fragment.PayLoadingFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PayLoadingFragment a(BillingParams params, com.tn.tranpay.d dVar) {
            Intrinsics.h(params, "params");
            PayLoadingFragment payLoadingFragment = new PayLoadingFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("paymentParams", params);
            payLoadingFragment.setArguments(bundle);
            payLoadingFragment.callback = dVar;
            return payLoadingFragment;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f41572a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f41572a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f41572a;
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
            this.f41572a.invoke(obj);
        }
    }

    public static final class c implements PayFragment.b {
        c() {
        }

        @Override // com.tn.tranpay.fragment.PayFragment.b
        public void a() {
            PayLoadingFragment.this.hideLoading();
            PayLoadingFragment.this.dismissAllowingStateLoss();
        }

        @Override // com.tn.tranpay.fragment.PayFragment.b
        public void b() {
            if (PayLoadingFragment.this.isAdded()) {
                PayLoadingFragment.this.dismissAllowingStateLoss();
            }
        }
    }

    /* JADX INFO: renamed from: com.tn.tranpay.fragment.PayLoadingFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.tn.tranpay.fragment.PayLoadingFragment$onViewCreated$2", f = "PayLoadingFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PayLoadingFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            if (NetworkUtils.n()) {
                PayLoadingFragment.this.viewModel.P(PayLoadingFragment.this.h0().getTxnId());
                PayLoadingFragment.this.viewModel.l(PayLoadingFragment.this.h0());
            } else {
                PayLoadingFragment.g0(PayLoadingFragment.this, -2, "No network connection", null, 4, null);
            }
            return Unit.f67061a;
        }
    }

    private final void e0() {
        Dialog dialog;
        Window window;
        if (getResources().getConfiguration().orientation != 2 || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        Intrinsics.g(attributes, "window.attributes");
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i11 = displayMetrics.widthPixels;
        int i12 = displayMetrics.heightPixels;
        attributes.width = (int) (((double) i11) * 0.75d);
        attributes.height = (int) (((double) i12) * 0.75d);
        attributes.gravity = 17;
        window.setAttributes(attributes);
        window.setBackgroundDrawable(new ColorDrawable(0));
    }

    private final void f0(int billingResponseCode, String message, String serverCode) {
        com.tn.tranpay.b bVarA = com.tn.tranpay.b.f41522c.a(billingResponseCode, message, serverCode);
        ai.a.e(ai.a.f619a, "loading error, code: " + billingResponseCode + ", message: " + message + ", serverCode: " + serverCode, null, 2, null);
        com.tn.tranpay.d dVar = this.callback;
        if (dVar != null) {
            dVar.a(bVarA, null);
        }
        this.callback = null;
        com.tn.tranpay.report.c logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.j(false);
        }
        com.tn.tranpay.report.h hVar = com.tn.tranpay.report.h.f41685a;
        String orderDesc = h0().getOrderDesc();
        if (orderDesc == null) {
            orderDesc = "";
        }
        hVar.j(false, orderDesc, h0().getPayByLocalCurrency(), h0().getTxnId());
        i0();
    }

    static /* synthetic */ void g0(PayLoadingFragment payLoadingFragment, int i11, String str, String str2, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            str2 = null;
        }
        payLoadingFragment.f0(i11, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingParams h0() {
        return (BillingParams) this.params.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideLoading() {
        ProgressBar progressBar = this.loadingView;
        if (progressBar == null) {
            return;
        }
        progressBar.setVisibility(8);
    }

    private final void i0() {
        hideLoading();
        dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k0(PayLoadingFragment this$0, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        Function0 function0;
        Intrinsics.h(this$0, "this$0");
        if (i11 != 4 || keyEvent.getAction() != 1 || (function0 = this$0.onBackListener) == null) {
            return false;
        }
        function0.invoke();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(PayLoadingFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        Function0 function0 = this$0.onBackListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void logPause() {
        com.tn.tranpay.report.b.a.b(this);
    }

    private final void logResume() {
        com.tn.tranpay.report.b.a.c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0() {
        PayFragment payFragmentA = PayFragment.INSTANCE.a(h0(), (LoadConfigContent) this.viewModel.q().f(), this.callback);
        payFragmentA.w0(new c());
        payFragmentA.show(getParentFragmentManager(), "pay_fragment");
    }

    private final void showLoading() {
        if (com.tn.tranpay.e.f41537c.b().c()) {
            ProgressBar progressBar = this.loadingView;
            if (progressBar == null) {
                return;
            }
            progressBar.setVisibility(0);
            return;
        }
        ProgressBar progressBar2 = this.loadingView;
        if (progressBar2 == null) {
            return;
        }
        progressBar2.setVisibility(8);
    }

    @Override // com.tn.tranpay.report.b
    public com.tn.tranpay.report.c getLogViewConfig() {
        return (com.tn.tranpay.report.c) this.logViewConfig.getValue();
    }

    public com.tn.tranpay.report.c j0() {
        return new com.tn.tranpay.report.c("cashier_page", false, 2, null);
    }

    public final void m0(Function0 function0) {
        this.onBackListener = function0;
    }

    public final void n0(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.onDismissListener = listener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "super.onCreateDialog(savedInstanceState)");
        dialogOnCreateDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.tn.tranpay.fragment.d
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                return PayLoadingFragment.k0(this.f41619a, dialogInterface, i11, keyEvent);
            }
        });
        if (Build.VERSION.SDK_INT >= 33) {
            dialogOnCreateDialog.getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: com.tn.tranpay.fragment.e
                public final void onBackInvoked() {
                    PayLoadingFragment.l0(this.f41620a);
                }
            });
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        return inflater.inflate(R$layout.tran_fragment_loading_layout, container, false);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        Function0 function0 = this.onDismissListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (isHidden()) {
            return;
        }
        logPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        logResume();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        if (!com.tn.tranpay.e.f41537c.b().c()) {
            Dialog dialog = getDialog();
            if (dialog == null || (window = dialog.getWindow()) == null) {
                return;
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.0f;
            attributes.flags |= 2;
            window.setAttributes(attributes);
            return;
        }
        Dialog dialog2 = getDialog();
        if (dialog2 == null || (window2 = dialog2.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes2 = window2.getAttributes();
        Intrinsics.g(attributes2, "it.attributes");
        attributes2.width = -1;
        attributes2.height = -1;
        window2.setAttributes(attributes2);
        window2.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        com.tn.tranpay.e.a aVar = com.tn.tranpay.e.f41537c;
        if (!aVar.b().c()) {
            setStyle(1, R$style.loading_empty_dialog);
        }
        ProgressBar progressBar = (ProgressBar) view.findViewById(R$id.loading_progress);
        this.loadingView = progressBar;
        if (progressBar != null) {
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(aVar.b().d()));
        }
        e0();
        showLoading();
        this.viewModel.q().j(getViewLifecycleOwner(), new b(new Function1<LoadConfigContent, Unit>() { // from class: com.tn.tranpay.fragment.PayLoadingFragment.onViewCreated.1

            /* JADX INFO: renamed from: com.tn.tranpay.fragment.PayLoadingFragment$onViewCreated$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "com.tn.tranpay.fragment.PayLoadingFragment$onViewCreated$1$1", f = "PayLoadingFragment.kt", l = {}, m = "invokeSuspend")
            static final class C05931 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                int label;
                final /* synthetic */ PayLoadingFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C05931(PayLoadingFragment payLoadingFragment, Continuation<? super C05931> continuation) {
                    super(2, continuation);
                    this.this$0 = payLoadingFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C05931(this.this$0, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((C05931) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    com.tn.tranpay.report.c logViewConfig = this.this$0.getLogViewConfig();
                    if (logViewConfig != null) {
                        logViewConfig.j(true);
                    }
                    com.tn.tranpay.report.h hVar = com.tn.tranpay.report.h.f41685a;
                    String orderDesc = this.this$0.h0().getOrderDesc();
                    if (orderDesc == null) {
                        orderDesc = "";
                    }
                    hVar.j(true, orderDesc, this.this$0.h0().getPayByLocalCurrency(), this.this$0.h0().getTxnId());
                    this.this$0.o0();
                    return Unit.f67061a;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((LoadConfigContent) obj);
                return Unit.f67061a;
            }

            public final void invoke(LoadConfigContent loadConfigContent) {
                ai.a aVar2 = ai.a.f619a;
                ai.a.g(aVar2, "configLiveData observed: isNull=" + (loadConfigContent == null) + ", code=" + (loadConfigContent != null ? loadConfigContent.getCode() : null) + ", message=" + (loadConfigContent != null ? loadConfigContent.getMessage() : null), null, 2, null);
                if (loadConfigContent != null && Intrinsics.c(loadConfigContent.getCode(), "0000")) {
                    List<MediumInputBean> medium = loadConfigContent.getMedium();
                    if (medium != null && !medium.isEmpty()) {
                        kotlinx.coroutines.k.d(v.a(PayLoadingFragment.this), y0.c(), null, new C05931(PayLoadingFragment.this, null), 2, null);
                        return;
                    }
                    com.tn.tranpay.report.c logViewConfig = PayLoadingFragment.this.getLogViewConfig();
                    if (logViewConfig != null) {
                        logViewConfig.j(false);
                    }
                    PayLoadingFragment.g0(PayLoadingFragment.this, 3, "Unavailable pay method", null, 4, null);
                    return;
                }
                com.tn.tranpay.report.c logViewConfig2 = PayLoadingFragment.this.getLogViewConfig();
                if (logViewConfig2 != null) {
                    logViewConfig2.j(false);
                }
                com.tn.tranpay.report.h hVar = com.tn.tranpay.report.h.f41685a;
                String orderDesc = PayLoadingFragment.this.h0().getOrderDesc();
                if (orderDesc == null) {
                    orderDesc = "";
                }
                hVar.j(false, orderDesc, PayLoadingFragment.this.h0().getPayByLocalCurrency(), PayLoadingFragment.this.h0().getTxnId());
                ai.a.e(aVar2, "callbackErrorThenDismiss triggered: it=" + loadConfigContent + ", code=" + (loadConfigContent != null ? loadConfigContent.getCode() : null), null, 2, null);
                PayLoadingFragment.g0(PayLoadingFragment.this, -1, "loading data is null", null, 4, null);
            }
        }));
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass2(null), 3, null);
    }
}
