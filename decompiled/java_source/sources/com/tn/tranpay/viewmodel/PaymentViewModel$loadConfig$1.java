package com.tn.tranpay.viewmodel;

import ai.a;
import com.tn.tranpay.BillingParams;
import com.tn.tranpay.bean.InputInfoBean;
import com.tn.tranpay.bean.LoadConfigContent;
import com.tn.tranpay.bean.MediumInputBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.tn.tranpay.viewmodel.PaymentViewModel$loadConfig$1", f = "PaymentViewModel.kt", l = {Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class PaymentViewModel$loadConfig$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ BillingParams $params;
    int label;
    final /* synthetic */ PaymentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentViewModel$loadConfig$1(PaymentViewModel paymentViewModel, BillingParams billingParams, Continuation<? super PaymentViewModel$loadConfig$1> continuation) {
        super(2, continuation);
        this.this$0 = paymentViewModel;
        this.$params = billingParams;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentViewModel$loadConfig$1(this.this$0, this.$params, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaymentViewModel$loadConfig$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Map<String, String> mapH;
        List<MediumInputBean> medium;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentViewModel paymentViewModel = this.this$0;
            String txnId = this.$params.getTxnId();
            String language = this.$params.getLanguage();
            this.label = 1;
            obj = paymentViewModel.F(txnId, language, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        LoadConfigContent loadConfigContent = (LoadConfigContent) obj;
        a aVar = a.f619a;
        a.g(aVar, "GetPaymentMethods result = " + this.this$0.f41697l.toJson(loadConfigContent), null, 2, null);
        a.g(aVar, "loadConfig code=" + (loadConfigContent != null ? loadConfigContent.getCode() : null) + ", message=" + (loadConfigContent != null ? loadConfigContent.getMessage() : null), null, 2, null);
        if (loadConfigContent == null || (mapH = loadConfigContent.getLanguagePackage()) == null) {
            mapH = MapsKt.h();
        }
        if (loadConfigContent != null && (medium = loadConfigContent.getMedium()) != null) {
            for (MediumInputBean mediumInputBean : medium) {
                a.c(a.f619a, "The medium.name: " + mediumInputBean.getName() + ", " + mediumInputBean.getCode(), null, 2, null);
                List<InputInfoBean> inputs = mediumInputBean.getInputs();
                if (inputs != null) {
                    for (InputInfoBean inputInfoBean : inputs) {
                        String tips = mapH.get(inputInfoBean.getTips());
                        String hint = mapH.get(inputInfoBean.getHint());
                        a.c(a.f619a, "InputTip: " + tips + ", hint: " + hint, null, 2, null);
                        String realHint = inputInfoBean.getRealHint();
                        if (realHint != null) {
                            hint = realHint;
                        } else if (hint == null) {
                            hint = inputInfoBean.getHint();
                        }
                        inputInfoBean.setRealHint(hint);
                        String realTips = inputInfoBean.getRealTips();
                        if (realTips != null) {
                            tips = realTips;
                        } else if (tips == null) {
                            tips = inputInfoBean.getTips();
                        }
                        inputInfoBean.setRealTips(tips);
                    }
                }
            }
        }
        if (loadConfigContent != null) {
            this.this$0.q().n(loadConfigContent);
        } else {
            this.this$0.q().n(null);
        }
        return Unit.f67061a;
    }
}
