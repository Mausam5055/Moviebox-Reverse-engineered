package com.tn.tranpay.viewmodel;

import ai.a;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.tranpay.bean.QueryOrderResultContent;
import com.tn.tranpay.bean.QueryStatus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import yh.b;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.tn.tranpay.viewmodel.PaymentViewModel$queryOnce$1", f = "PaymentViewModel.kt", l = {331}, m = "invokeSuspend")
final class PaymentViewModel$queryOnce$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $txnId;
    int label;
    final /* synthetic */ PaymentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentViewModel$queryOnce$1(PaymentViewModel paymentViewModel, String str, Continuation<? super PaymentViewModel$queryOnce$1> continuation) {
        super(2, continuation);
        this.this$0 = paymentViewModel;
        this.$txnId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentViewModel$queryOnce$1(this.this$0, this.$txnId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaymentViewModel$queryOnce$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x011d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentViewModel paymentViewModel = this.this$0;
            String str = this.$txnId;
            this.label = 1;
            obj = paymentViewModel.D(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        QueryOrderResultContent queryOrderResultContent = (QueryOrderResultContent) obj;
        a aVar = a.f619a;
        a.g(aVar, "CancelOrder result = " + queryOrderResultContent, null, 2, null);
        if (queryOrderResultContent != null) {
            a.g(aVar, "CancelOrder.content =  " + queryOrderResultContent.getStatus() + ", " + queryOrderResultContent.getMessage(), null, 2, null);
        }
        a.g(aVar, "QueryOrder result = " + queryOrderResultContent, null, 2, null);
        if (queryOrderResultContent != null) {
            a.g(aVar, "QueryOrder.content =  " + queryOrderResultContent.getStatus() + ", " + queryOrderResultContent.getCode() + ", " + queryOrderResultContent.getMessage(), null, 2, null);
            String status = queryOrderResultContent.getStatus();
            if (status == null) {
                a.k(aVar, "Unknown status", null, 2, null);
                this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.FAILURE));
            } else {
                int iHashCode = status.hashCode();
                if (iHashCode != 48) {
                    if (iHashCode != 49) {
                        if (iHashCode == 1444 && status.equals(TmcConstants.COLD_OPEN_TYPE)) {
                            a.k(aVar, "Order still processing", null, 2, null);
                            this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.PROCESSING));
                        } else {
                            a.k(aVar, "Unknown status", null, 2, null);
                            this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.FAILURE));
                        }
                    } else if (status.equals("1")) {
                        a.g(aVar, "QueryOrder.content success", null, 2, null);
                        this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.SUCCESS));
                    } else {
                        a.k(aVar, "Unknown status", null, 2, null);
                        this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.FAILURE));
                    }
                } else if (status.equals("0")) {
                    a.e(aVar, "QueryOrder.content fail", null, 2, null);
                    this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.FAILURE));
                } else {
                    a.k(aVar, "Unknown status", null, 2, null);
                    this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.FAILURE));
                }
            }
        } else {
            this.this$0.z().n(new b(null, QueryStatus.ERROR));
        }
        return Unit.f67061a;
    }
}
