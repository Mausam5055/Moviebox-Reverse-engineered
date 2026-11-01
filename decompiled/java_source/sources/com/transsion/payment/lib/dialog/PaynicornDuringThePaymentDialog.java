package com.transsion.payment.lib.dialog;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.core.view.PointerIconCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.m;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.payment.lib.PaymentClientHelper;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CheckPaymentBean;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.transsion.payment.lib.bean.PrePayInfo;
import com.transsion.wrapperad.R$drawable;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J)\u0010\u0013\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J%\u0010\u001c\u001a\u00020\u00062\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0003J\u0019\u0010%\u001a\u00020\u00062\b\u0010$\u001a\u0004\u0018\u00010#H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0006H\u0002¢\u0006\u0004\b'\u0010\u0003J\u000f\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b(\u0010\u0003J\u001f\u0010,\u001a\u00020\u00062\u000e\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010*0)H\u0002¢\u0006\u0004\b,\u0010-J\u001f\u00101\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u001aH\u0002¢\u0006\u0004\b1\u00102J!\u00103\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u001a2\b\b\u0002\u0010/\u001a\u00020.H\u0002¢\u0006\u0004\b3\u00104R\u0018\u00107\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R$\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u001b\u0010E\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u001b\u0010J\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010B\u001a\u0004\bH\u0010IR\u0016\u0010M\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010P¨\u0006T"}, d2 = {"Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "viewBg", "Landroid/widget/ProgressBar;", "viewLoad", "Landroid/widget/TextView;", "tvLoading", "o0", "(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V", "Lcom/transsion/payment/lib/b;", "callback", "S0", "(Lcom/transsion/payment/lib/b;)V", "Lkotlin/Function1;", "", "createOrderCallback", "T0", "(Lkotlin/jvm/functions/Function1;)V", "Lcom/transsion/payment/lib/bean/CreateOrderReq;", "orderRequest", "U0", "(Lcom/transsion/payment/lib/bean/CreateOrderReq;)V", "P0", "Lcom/transsion/payment/lib/bean/CreateOrderRes;", "createOrderRes", "M0", "(Lcom/transsion/payment/lib/bean/CreateOrderRes;)V", "observe", "I0", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/payment/lib/bean/CheckPaymentBean;", "orderCheckResult", "K0", "(Lcom/tn/lib/net/bean/BaseDto;)V", "", "errorCode", NotificationCompat.CATEGORY_MESSAGE, "J0", "(ILjava/lang/String;)V", "Q0", "(Ljava/lang/String;I)V", "c", "Lcom/transsion/payment/lib/bean/CreateOrderRes;", "mCreateOrderRes", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/payment/lib/bean/CreateOrderReq;", "mCreateOrderReq", "e", "Lcom/transsion/payment/lib/b;", "mCallback", "f", "Lkotlin/jvm/functions/Function1;", "Lcom/transsion/payment/lib/PaymentService;", "g", "Lkotlin/Lazy;", "F0", "()Lcom/transsion/payment/lib/PaymentService;", "paymentService", "Lcom/transsion/payment/lib/dialog/a;", "h", "G0", "()Lcom/transsion/payment/lib/dialog/a;", "viewModel", "i", "I", "retryCount", "", "j", "J", "initialDelayMillis", CampaignEx.JSON_KEY_AD_K, "currentDelay", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PaynicornDuringThePaymentDialog extends BaseMemberLoadingDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private CreateOrderRes mCreateOrderRes;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private CreateOrderReq mCreateOrderReq;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private com.transsion.payment.lib.b mCallback;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 createOrderCallback;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy paymentService = LazyKt.b(new Function0() { // from class: com.transsion.payment.lib.dialog.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PaynicornDuringThePaymentDialog.L0();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int retryCount;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private long initialDelayMillis;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private long currentDelay;

    public PaynicornDuringThePaymentDialog() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(a.class), new Function0<x0>() { // from class: com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                m mVar = objInvoke instanceof m ? (m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.initialDelayMillis = 3000L;
        this.currentDelay = 3000L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PaymentService F0() {
        return (PaymentService) this.paymentService.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a G0() {
        return (a) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog, uy.e it) {
        Intrinsics.h(it, "it");
        if (it.a() < 0) {
            paynicornDuringThePaymentDialog.J0(1002, "observe() --> 取消支付");
            return Unit.f67061a;
        }
        com.transsion.payment.lib.d.f47779a.a(paynicornDuringThePaymentDialog.getClassTag() + " --> observe() --> paynicorn result --> 轮询Paynicorn支付结果 ....");
        paynicornDuringThePaymentDialog.I0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I0() {
        k.d(v.a(this), null, null, new PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0(int errorCode, String msg) {
        PrePayInfo prePayInfo;
        com.transsion.payment.lib.d.f47779a.b(getClassTag() + " --> payFail() --> msg = " + msg);
        com.transsion.payment.lib.b bVarB = G0().b();
        if (bVarB != null) {
            Integer numValueOf = Integer.valueOf(errorCode);
            String str = getClassTag() + " --> payFail() --> msg = " + msg;
            CreateOrderRes createOrderRes = this.mCreateOrderRes;
            bVarB.a(numValueOf, str, false, (createOrderRes == null || (prePayInfo = createOrderRes.getPrePayInfo()) == null) ? null : prePayInfo.getOrderId());
        }
        if (isAdded()) {
            dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(BaseDto orderCheckResult) {
        String balanceCoin;
        String addCoin;
        com.transsion.payment.lib.d.f47779a.a(getClassTag() + " --> orderCheck4Paynicorn() --> paynicorn 发货成功");
        com.transsion.payment.lib.b bVarB = G0().b();
        if (bVarB != null) {
            CheckPaymentBean checkPaymentBean = (CheckPaymentBean) orderCheckResult.getData();
            int i11 = (checkPaymentBean == null || (addCoin = checkPaymentBean.getAddCoin()) == null) ? 0 : Integer.parseInt(addCoin);
            CheckPaymentBean checkPaymentBean2 = (CheckPaymentBean) orderCheckResult.getData();
            if (checkPaymentBean2 == null || (balanceCoin = checkPaymentBean2.getBalanceCoin()) == null) {
                balanceCoin = "";
            }
            CreateOrderRes createOrderRes = this.mCreateOrderRes;
            bVarB.c(i11, balanceCoin, createOrderRes != null ? createOrderRes.getTradingOrderId() : null);
        }
        if (isAdded()) {
            dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PaymentService L0() {
        return new PaymentService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M0(CreateOrderRes createOrderRes) {
        com.transsion.payment.lib.d.f47779a.a(getClassTag() + " --> requestPay() --> 请求到数据 --> realPay() --> 打开端内WebView --> 展示收银台");
        this.mCreateOrderRes = createOrderRes;
        PaymentClientHelper paymentClientHelper = PaymentClientHelper.f47769a;
        FragmentActivity activity = getActivity();
        paymentClientHelper.e(activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null, createOrderRes, new Function2() { // from class: com.transsion.payment.lib.dialog.d
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return PaynicornDuringThePaymentDialog.N0(this.f47792a, ((Integer) obj).intValue(), (String) obj2);
            }
        }, new Function0() { // from class: com.transsion.payment.lib.dialog.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaynicornDuringThePaymentDialog.O0(this.f47793a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog, int i11, String msg) {
        Intrinsics.h(msg, "msg");
        paynicornDuringThePaymentDialog.J0(i11, msg);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O0(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog) {
        paynicornDuringThePaymentDialog.I0();
        return Unit.f67061a;
    }

    private final void P0() {
        com.transsion.payment.lib.d.f47779a.a(getClassTag() + " --> requestPay() --> 请求接口创建订单....");
        k.d(v.a(this), null, null, new PaynicornDuringThePaymentDialog$requestPay$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q0(String msg, int errorCode) {
        int i11 = this.retryCount;
        if (i11 >= 3) {
            J0(errorCode, msg);
            return;
        }
        this.retryCount = i11 + 1;
        com.transsion.payment.lib.d.f47779a.a(getClassTag() + " --> retry() --> msg = " + msg + " --> retryCount = " + this.retryCount);
        k.d(v.a(this), null, null, new PaynicornDuringThePaymentDialog$retry$1(this, SystemClock.elapsedRealtime(), null), 3, null);
    }

    static /* synthetic */ void R0(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog, String str, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = PointerIconCompat.TYPE_CROSSHAIR;
        }
        paynicornDuringThePaymentDialog.Q0(str, i11);
    }

    private final void observe() {
        Lifecycle.State state = Lifecycle.State.CREATED;
        Function1 function1 = new Function1() { // from class: com.transsion.payment.lib.dialog.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaynicornDuringThePaymentDialog.H0(this.f47791a, (uy.e) obj);
            }
        };
        a2 a2VarQ = kotlinx.coroutines.y0.c().q();
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = uy.e.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, state, a2VarQ, false, function1);
    }

    public final void S0(com.transsion.payment.lib.b callback) {
        Intrinsics.h(callback, "callback");
        this.mCallback = callback;
    }

    public final void T0(Function1 createOrderCallback) {
        this.createOrderCallback = createOrderCallback;
    }

    public final void U0(CreateOrderReq orderRequest) {
        Intrinsics.h(orderRequest, "orderRequest");
        this.mCreateOrderReq = orderRequest;
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog
    public void o0(View viewBg, ProgressBar viewLoad, TextView tvLoading) {
        Intrinsics.h(viewLoad, "viewLoad");
        Intrinsics.h(tvLoading, "tvLoading");
        super.o0(viewBg, viewLoad, tvLoading);
        if (viewBg != null) {
            viewBg.setBackgroundResource(R$drawable.ad_shape_dp_8);
        }
        tvLoading.setTextColor(getResources().getColor(R$color.color_d6101114));
        viewLoad.setIndeterminateTintList(ColorStateList.valueOf(getResources().getColor(R$color.base_color_999999)));
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.transsion.payment.lib.d.f47779a.a(getClassTag() + " --> onCreate()");
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mCallback = null;
        this.mCreateOrderReq = null;
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (G0().b() == null) {
            G0().d(this.mCallback);
        }
        if (G0().c() == null) {
            G0().e(this.createOrderCallback);
        }
        observe();
        P0();
    }
}
