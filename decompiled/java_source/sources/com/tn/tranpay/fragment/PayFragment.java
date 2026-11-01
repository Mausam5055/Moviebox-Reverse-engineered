package com.tn.tranpay.fragment;

import android.app.Application;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
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
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.window.OnBackInvokedCallback;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.Transformations;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.Gson;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.tranpay.R$id;
import com.tn.lib.tranpay.R$layout;
import com.tn.tranpay.BillingParams;
import com.tn.tranpay.TranPay;
import com.tn.tranpay.activity.TranPayWebActivity;
import com.tn.tranpay.bean.CreateOrderResultContent;
import com.tn.tranpay.bean.HandleResultType;
import com.tn.tranpay.bean.InputInfoBean;
import com.tn.tranpay.bean.LoadConfigContent;
import com.tn.tranpay.bean.MediumInputBean;
import com.tn.tranpay.bean.QueryOrderResultContent;
import com.tn.tranpay.bean.QueryStatus;
import com.tn.tranpay.event.AppScopeVMlProvider;
import com.tn.tranpay.event.FlowEventBus;
import com.tn.tranpay.helper.PayUtils;
import com.tn.tranpay.helper.PaymentMMKV;
import com.tn.tranpay.viewmodel.PaymentViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.t1;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \\2\u00020\u0001:\u00028@B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0003J+\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u00102\b\u0010\u001f\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0019\u0010)\u001a\u00020(2\b\u0010'\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\nH\u0016¢\u0006\u0004\b+\u0010\u0003J-\u00101\u001a\u0004\u0018\u0001002\u0006\u0010-\u001a\u00020,2\b\u0010/\u001a\u0004\u0018\u00010.2\b\u0010'\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b1\u00102J!\u00104\u001a\u00020\n2\u0006\u00103\u001a\u0002002\b\u0010'\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u00020\n¢\u0006\u0004\b6\u0010\u0003R$\u0010>\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010F\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0018\u0010J\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u001b\u0010T\u001a\u00020O8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\u0018\u0010X\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010[\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010Z¨\u0006]"}, d2 = {"Lcom/tn/tranpay/fragment/PayFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "", "Lcom/tn/tranpay/bean/MediumInputBean;", "list", "", "k0", "(Ljava/util/List;)Z", "", "p0", "s0", "t0", "", "responseCode", "", "message", "serverCode", "i0", "(ILjava/lang/String;Ljava/lang/String;)V", "x0", "Lcom/tn/tranpay/bean/CreateOrderResultContent;", "result", "Lcom/tn/tranpay/bean/HandleResultType;", "q0", "(Lcom/tn/tranpay/bean/CreateOrderResultContent;)Lcom/tn/tranpay/bean/HandleResultType;", "webUrl", "r0", "(Ljava/lang/String;)V", "appLink", "packageName", "n0", "(Ljava/lang/String;Ljava/lang/String;)Z", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", TmcConstants.NAVIGATION_ON_START, "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "o0", "Lcom/tn/tranpay/fragment/PayFragment$b;", "a", "Lcom/tn/tranpay/fragment/PayFragment$b;", "l0", "()Lcom/tn/tranpay/fragment/PayFragment$b;", "w0", "(Lcom/tn/tranpay/fragment/PayFragment$b;)V", "onDismissListener", "Lkotlinx/coroutines/t1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlinx/coroutines/t1;", "paymentEventJob", "Lcom/tn/tranpay/BillingParams;", "c", "Lcom/tn/tranpay/BillingParams;", "paymentParams", "Lcom/tn/tranpay/d;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/tn/tranpay/d;", "mCallback", "Lcom/tn/tranpay/bean/LoadConfigContent;", "e", "Lcom/tn/tranpay/bean/LoadConfigContent;", "configBean", "Lcom/tn/tranpay/viewmodel/PaymentViewModel;", "f", "Lkotlin/Lazy;", "m0", "()Lcom/tn/tranpay/viewmodel/PaymentViewModel;", "viewModel", "Landroid/widget/FrameLayout;", "g", "Landroid/widget/FrameLayout;", "loadingLayout", "h", "Z", "canHandleFirstPayMethod", "i", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PayFragment extends DialogFragment {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private b onDismissListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private t1 paymentEventJob;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private BillingParams paymentParams;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.tn.tranpay.d mCallback;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LoadConfigContent configBean;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private FrameLayout loadingLayout;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean canHandleFirstPayMethod;

    /* JADX INFO: renamed from: com.tn.tranpay.fragment.PayFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PayFragment a(BillingParams params, LoadConfigContent loadConfigContent, com.tn.tranpay.d dVar) {
            Intrinsics.h(params, "params");
            PayFragment payFragment = new PayFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("paymentParams", params);
            bundle.putParcelable("configBean", loadConfigContent);
            payFragment.setArguments(bundle);
            payFragment.paymentParams = params;
            payFragment.configBean = loadConfigContent;
            payFragment.mCallback = dVar;
            return payFragment;
        }
    }

    public interface b {
        void a();

        void b();
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f41562a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f41562a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f41562a;
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
            this.f41562a.invoke(obj);
        }
    }

    public PayFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.tn.tranpay.fragment.PayFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(PaymentViewModel.class), new Function0<x0>() { // from class: com.tn.tranpay.fragment.PayFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.tn.tranpay.fragment.PayFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(int responseCode, String message, String serverCode) {
        BillingParams billingParams;
        com.tn.tranpay.c cVar = (m0().A() == null || (billingParams = this.paymentParams) == null) ? null : new com.tn.tranpay.c(billingParams.getOrderId(), billingParams.getOrderDesc(), billingParams.getAmount(), m0().A(), billingParams.getPayByLocalCurrency());
        if (com.tn.tranpay.a.f41505a.a(responseCode)) {
            com.tn.tranpay.report.h.f(com.tn.tranpay.report.h.f41685a, 1, null, 2, null);
        } else if (responseCode == 1) {
            com.tn.tranpay.report.h.f41685a.e(0, Boolean.TRUE);
        } else {
            com.tn.tranpay.report.h.f41685a.e(0, Boolean.FALSE);
        }
        com.tn.tranpay.b bVarA = com.tn.tranpay.b.f41522c.a(responseCode, message, serverCode);
        com.tn.tranpay.d dVarO = m0().o();
        if (dVarO != null) {
            dVarO.a(bVarA, cVar);
        }
        m0().K(null);
        m0().i();
        dismissAllowingStateLoss();
    }

    static /* synthetic */ void j0(PayFragment payFragment, int i11, String str, String str2, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            str2 = null;
        }
        payFragment.i0(i11, str, str2);
    }

    private final boolean k0(List list) {
        if (list == null || list.size() != 1) {
            return false;
        }
        List<InputInfoBean> inputs = ((MediumInputBean) list.get(0)).getInputs();
        return inputs == null || inputs.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PaymentViewModel m0() {
        return (PaymentViewModel) this.viewModel.getValue();
    }

    private final boolean n0(String appLink, String packageName) {
        if (packageName != null && packageName.length() != 0) {
            PayUtils payUtils = PayUtils.f41636a;
            if (!PayUtils.e(payUtils, packageName, null, 2, null)) {
                ai.a.g(ai.a.f619a, "handleAppLink: " + packageName + " not installed", null, 2, null);
                return false;
            }
            if (appLink != null && appLink.length() != 0) {
                return payUtils.g(appLink);
            }
        }
        return false;
    }

    private final void p0() {
        this.canHandleFirstPayMethod = false;
        LoadConfigContent loadConfigContent = this.configBean;
        if (!k0(loadConfigContent != null ? loadConfigContent.getMedium() : null) || m0().t()) {
            return;
        }
        this.canHandleFirstPayMethod = true;
        m0().L(true);
        LoadConfigContent loadConfigContent2 = this.configBean;
        List<MediumInputBean> medium = loadConfigContent2 != null ? loadConfigContent2.getMedium() : null;
        Intrinsics.e(medium);
        String code = medium.get(0).getCode();
        if (code == null) {
            code = "";
        }
        String str = code;
        com.tn.tranpay.report.h.f41685a.a(str, false, false, true);
        PaymentViewModel.k(m0(), str, null, null, true, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HandleResultType q0(CreateOrderResultContent result) {
        String rnUrl = result.getRnUrl();
        yh.a payInstruction = result.getPayInstruction();
        String strA = payInstruction != null ? payInstruction.a() : null;
        String webUrl = result.getWebUrl();
        try {
            Result.Companion companion = Result.INSTANCE;
            if (n0(rnUrl, strA)) {
                ai.a.g(ai.a.f619a, "handleAppLink: " + strA + " installed", null, 2, null);
                com.tn.tranpay.report.h.f41685a.d(1, webUrl, rnUrl, strA, m0().n());
                return HandleResultType.APP_LINK;
            }
            if (webUrl == null) {
                ai.a.g(ai.a.f619a, "rnUrl and webUrl is null that don't need to handle anything", null, 2, null);
                com.tn.tranpay.report.h.f41685a.d(2, null, rnUrl, strA, m0().n());
                return HandleResultType.OPERATOR;
            }
            ai.a.g(ai.a.f619a, "handleWebUrl: " + webUrl, null, 2, null);
            r0(webUrl);
            com.tn.tranpay.report.h.f41685a.d(0, webUrl, rnUrl, strA, m0().n());
            return HandleResultType.WEB;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                return HandleResultType.EXCEPTION;
            }
            ai.a.e(ai.a.f619a, "handleResult: " + thM457exceptionOrNullimpl, null, 2, null);
            com.tn.tranpay.report.h.f41685a.d(-1, webUrl, rnUrl, strA, m0().n());
            return HandleResultType.EXCEPTION;
        }
    }

    private final void r0(String webUrl) {
        try {
            Application applicationD = TranPay.f41486a.d();
            Intent intent = new Intent();
            intent.putExtra("url", webUrl);
            BillingParams billingParams = this.paymentParams;
            intent.putExtra("cpFrontPage", billingParams != null ? billingParams.getCpFrontPage() : null);
            BillingParams billingParams2 = this.paymentParams;
            intent.putExtra("shouldOpenCpFrontPage", billingParams2 != null ? Boolean.valueOf(billingParams2.getShouldOpenCpFrontPage()) : null);
            intent.setClass(applicationD, TranPayWebActivity.class);
            intent.addFlags(ASTNode.DEOP);
            applicationD.startActivity(intent);
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, "Failed to handle web URL: " + e11.getMessage(), null, 2, null);
        }
    }

    private final void s0() {
        final Gson gson = new Gson();
        Transformations.a(m0().s()).j(getViewLifecycleOwner(), new c(new Function1<CreateOrderResultContent, Unit>() { // from class: com.tn.tranpay.fragment.PayFragment$observeLiveData$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((CreateOrderResultContent) obj);
                return Unit.f67061a;
            }

            public final void invoke(CreateOrderResultContent createOrderResultContent) {
                ai.a aVar = ai.a.f619a;
                ai.a.g(aVar, "resultContent is " + gson.toJson(createOrderResultContent) + ", " + (createOrderResultContent != null ? createOrderResultContent.getStatus() : null), null, 2, null);
                PayFragment.b onDismissListener = this.getOnDismissListener();
                if (onDismissListener != null) {
                    onDismissListener.a();
                }
                if (this.m0().u()) {
                    return;
                }
                if (createOrderResultContent == null) {
                    this.m0().w().n(Boolean.FALSE);
                    com.tn.tranpay.report.h.f41685a.k(false, this.m0().y(), this.m0().p(), this.m0().n());
                    PayFragment.j0(this, 5, "Create order failed", null, 4, null);
                    return;
                }
                if (!Intrinsics.c(createOrderResultContent.getCode(), "0000") || Intrinsics.c(createOrderResultContent.getStatus(), "0") || createOrderResultContent.getTxnId() == null) {
                    this.m0().w().n(Boolean.FALSE);
                    com.tn.tranpay.report.h.f41685a.k(false, this.m0().y(), this.m0().p(), this.m0().n());
                    this.i0(5, createOrderResultContent.getMessage(), createOrderResultContent.getCode());
                    return;
                }
                this.m0().M(true);
                ai.a.g(aVar, "createOrderResultLiveData: " + gson.toJson(createOrderResultContent), null, 2, null);
                com.tn.tranpay.report.h.f41685a.k(true, this.m0().y(), this.m0().p(), this.m0().n());
                HandleResultType handleResultTypeQ0 = this.q0(createOrderResultContent);
                if (handleResultTypeQ0 != HandleResultType.APP_LINK && handleResultTypeQ0 != HandleResultType.OPERATOR) {
                    this.m0().w().n(Boolean.FALSE);
                    return;
                }
                PaymentViewModel paymentViewModelM0 = this.m0();
                String txnId = createOrderResultContent.getTxnId();
                Intrinsics.e(txnId);
                PaymentViewModel.H(paymentViewModelM0, txnId, 0L, 0L, 6, null);
            }
        }));
        m0().z().j(getViewLifecycleOwner(), new c(new Function1<yh.b, Unit>() { // from class: com.tn.tranpay.fragment.PayFragment$observeLiveData$2

            public /* synthetic */ class a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f41563a;

                static {
                    int[] iArr = new int[QueryStatus.values().length];
                    try {
                        iArr[QueryStatus.FAILURE.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[QueryStatus.SUCCESS.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[QueryStatus.ERROR.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[QueryStatus.PROCESSING.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[QueryStatus.CANCELLED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    f41563a = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((yh.b) obj);
                return Unit.f67061a;
            }

            public final void invoke(yh.b bVar) {
                String message;
                String message2;
                ai.a aVar = ai.a.f619a;
                ai.a.g(aVar, "resultContent is " + gson.toJson(bVar) + ", " + (bVar != null ? bVar.b() : null), null, 2, null);
                if (bVar != null) {
                    PayFragment payFragment = this;
                    QueryOrderResultContent queryOrderResultContentA = bVar.a();
                    int i11 = a.f41563a[bVar.b().ordinal()];
                    if (i11 == 1) {
                        ai.a.g(aVar, "支付失败", null, 2, null);
                        if (queryOrderResultContentA == null || (message = queryOrderResultContentA.getMessage()) == null) {
                            message = "Payment failed";
                        }
                        Intrinsics.e(queryOrderResultContentA);
                        payFragment.i0(6, message, queryOrderResultContentA.getCode());
                        return;
                    }
                    if (i11 == 2) {
                        ai.a.g(aVar, "支付成功", null, 2, null);
                        PaymentMMKV.f41644a.h().putString("k_pay_method_code", payFragment.m0().x());
                        if (queryOrderResultContentA == null || (message2 = queryOrderResultContentA.getMessage()) == null) {
                            message2 = "Payment success";
                        }
                        PayFragment.j0(payFragment, 0, message2, null, 4, null);
                        return;
                    }
                    if (i11 == 3) {
                        ai.a.g(aVar, "支付异常", null, 2, null);
                        PayFragment.j0(payFragment, 2, "Payment error", null, 4, null);
                    } else if (i11 == 4) {
                        ai.a.g(aVar, "支付处理中", null, 2, null);
                        PayFragment.j0(payFragment, 4, "Payment processing", null, 4, null);
                    } else {
                        if (i11 != 5) {
                            return;
                        }
                        ai.a.g(aVar, "取消轮询", null, 2, null);
                    }
                }
            }
        }));
        Transformations.a(m0().w()).j(getViewLifecycleOwner(), new c(new Function1<Boolean, Unit>() { // from class: com.tn.tranpay.fragment.PayFragment$observeLiveData$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Boolean) obj);
                return Unit.f67061a;
            }

            public final void invoke(Boolean it) {
                Intrinsics.g(it, "it");
                if (!it.booleanValue() || this.this$0.canHandleFirstPayMethod) {
                    FrameLayout frameLayout = this.this$0.loadingLayout;
                    if (frameLayout == null) {
                        return;
                    }
                    frameLayout.setVisibility(8);
                    return;
                }
                FrameLayout frameLayout2 = this.this$0.loadingLayout;
                if (frameLayout2 == null) {
                    return;
                }
                frameLayout2.setVisibility(0);
            }
        }));
    }

    private final void t0() {
        t1 t1VarObserveEvent;
        Function1<com.tn.tranpay.event.b, Unit> function1 = new Function1<com.tn.tranpay.event.b, Unit>() { // from class: com.tn.tranpay.fragment.PayFragment$observerEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((com.tn.tranpay.event.b) obj);
                return Unit.f67061a;
            }

            public final void invoke(com.tn.tranpay.event.b event) {
                Intrinsics.h(event, "event");
                ai.a aVar = ai.a.f619a;
                ai.a.c(aVar, "PaymentEvent: " + event, null, 2, null);
                if (event.a() < 0) {
                    ai.a.g(aVar, "支付取消", null, 2, null);
                    String strA = this.this$0.m0().A();
                    if (strA != null) {
                        PaymentViewModel.h(this.this$0.m0(), strA, "USER CANCEL", null, 4, null);
                    }
                    PayFragment.j0(this.this$0, 1, "Payment cancelled", null, 4, null);
                } else {
                    ai.a.g(aVar, "三方收银台页面关闭或完成，调整轮询时间继续查询", null, 2, null);
                    this.this$0.m0().J();
                }
                t1 t1Var = this.this$0.paymentEventJob;
                if (t1Var != null) {
                    t1.a.b(t1Var, null, 1, null);
                }
            }
        };
        if (com.tn.tranpay.event.a.f41547a.c()) {
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = com.tn.tranpay.event.b.class.getName();
            Intrinsics.g(name, "T::class.java.name");
            t1VarObserveEvent = flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
        } else {
            t1VarObserveEvent = null;
            ai.a.e(ai.a.f619a, "TranPay SDK not initialized, cannot observe event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
        }
        this.paymentEventJob = t1VarObserveEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean u0(PayFragment this$0, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        Intrinsics.h(this$0, "this$0");
        if (i11 != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.o0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(PayFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.o0();
    }

    private final void x0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        Intrinsics.g(attributes, "it.attributes");
        attributes.gravity = 80;
        attributes.width = -1;
        if (getResources().getConfiguration().orientation == 2) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            int i11 = displayMetrics.widthPixels;
            int i12 = displayMetrics.heightPixels;
            attributes.width = (int) (((double) i11) * 0.75d);
            attributes.height = (int) (((double) i12) * 0.75d);
            attributes.gravity = 17;
        } else {
            attributes.height = a0.a(533.0f);
        }
        window.setAttributes(attributes);
        window.setBackgroundDrawable(new ColorDrawable(0));
    }

    /* JADX INFO: renamed from: l0, reason: from getter */
    public final b getOnDismissListener() {
        return this.onDismissListener;
    }

    public final void o0() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            PayUtils.f41636a.n(activity, new Function0<Unit>() { // from class: com.tn.tranpay.fragment.PayFragment$handleDismiss$1$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m314invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m314invoke() {
                    ai.a.c(ai.a.f619a, "用户点击了支付后的留存提示", null, 2, null);
                    com.tn.tranpay.report.h.f41685a.i();
                    String strA = this.this$0.m0().A();
                    if (strA != null) {
                        PaymentViewModel.h(this.this$0.m0(), strA, "USER CANCEL", null, 4, null);
                    }
                    PayFragment.j0(this.this$0, 1, "User cancelled", null, 4, null);
                }
            }, new Function0<Unit>() { // from class: com.tn.tranpay.fragment.PayFragment$handleDismiss$1$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m315invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m315invoke() {
                    com.tn.tranpay.report.h.f41685a.g();
                    ai.a.c(ai.a.f619a, "用户拒绝了支付后的留存提示", null, 2, null);
                }
            });
            com.tn.tranpay.report.h.f41685a.h();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        if (getActivity() == null) {
            throw new IllegalStateException("Activity cannot be null");
        }
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "super.onCreateDialog(savedInstanceState)");
        dialogOnCreateDialog.setCanceledOnTouchOutside(false);
        dialogOnCreateDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.tn.tranpay.fragment.b
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                return PayFragment.u0(this.f41617a, dialogInterface, i11, keyEvent);
            }
        });
        if (Build.VERSION.SDK_INT >= 33) {
            dialogOnCreateDialog.getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: com.tn.tranpay.fragment.c
                public final void onBackInvoked() {
                    PayFragment.v0(this.f41618a);
                }
            });
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        View viewInflate = inflater.inflate(R$layout.tran_fragment_payment_layout, container, false);
        if (savedInstanceState == null) {
            LoadConfigContent loadConfigContent = this.configBean;
            if (k0(loadConfigContent != null ? loadConfigContent.getMedium() : null)) {
                com.tn.tranpay.report.h.f41685a.l("main_tab_page");
                return viewInflate;
            }
            BillingParams billingParams = this.paymentParams;
            if (billingParams != null) {
                getChildFragmentManager().p().s(R$id.fragment_container, PayMainFragment.INSTANCE.a(billingParams, this.configBean)).i();
                b bVar = this.onDismissListener;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        b bVar = this.onDismissListener;
        if (bVar != null) {
            bVar.b();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        x0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        BillingParams billingParams;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (billingParams = (BillingParams) arguments.getParcelable("paymentParams")) == null) {
            return;
        }
        this.paymentParams = billingParams;
        Bundle arguments2 = getArguments();
        this.configBean = arguments2 != null ? (LoadConfigContent) arguments2.getParcelable("configBean") : null;
        PaymentViewModel paymentViewModelM0 = m0();
        BillingParams billingParams2 = this.paymentParams;
        paymentViewModelM0.N(billingParams2 != null ? billingParams2.getOrderId() : null);
        PaymentViewModel paymentViewModelM1 = m0();
        BillingParams billingParams3 = this.paymentParams;
        paymentViewModelM1.P(billingParams3 != null ? billingParams3.getTxnId() : null);
        if (m0().o() == null) {
            m0().K(this.mCallback);
        }
        this.loadingLayout = (FrameLayout) view.findViewById(R$id.loading_layout);
        ((ProgressBar) view.findViewById(R$id.loading_progress)).setIndeterminateTintList(ColorStateList.valueOf(com.tn.tranpay.e.f41537c.b().d()));
        t0();
        s0();
        p0();
    }

    public final void w0(b bVar) {
        this.onDismissListener = bVar;
    }
}
