package com.tn.tranpay.viewmodel;

import ai.a;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.tranpay.bean.QueryOrderResultContent;
import com.tn.tranpay.bean.QueryStatus;
import com.tn.tranpay.helper.PayUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import yh.b;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.tn.tranpay.viewmodel.PaymentViewModel$query$1", f = "PaymentViewModel.kt", l = {397}, m = "invokeSuspend")
final class PaymentViewModel$query$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $maxTotalTimeMills;
    final /* synthetic */ long $retryIntervalMills;
    final /* synthetic */ String $txnId;
    int label;
    final /* synthetic */ PaymentViewModel this$0;

    /* JADX INFO: renamed from: com.tn.tranpay.viewmodel.PaymentViewModel$query$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.tn.tranpay.viewmodel.PaymentViewModel$query$1$1", f = "PaymentViewModel.kt", l = {398}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $txnId;
        int label;
        final /* synthetic */ PaymentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PaymentViewModel paymentViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.this$0 = paymentViewModel;
            this.$txnId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$txnId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
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
            a.g(aVar, "QueryOrder result = " + queryOrderResultContent, null, 2, null);
            if (queryOrderResultContent == null) {
                this.this$0.z().n(new b(null, QueryStatus.ERROR));
                return Unit.f67061a;
            }
            a.g(aVar, "QueryOrder.content =  " + queryOrderResultContent.getStatus() + ", " + queryOrderResultContent.getCode() + ", " + queryOrderResultContent.getMessage(), null, 2, null);
            String status = queryOrderResultContent.getStatus();
            if (status != null) {
                int iHashCode = status.hashCode();
                if (iHashCode != 48) {
                    if (iHashCode != 49) {
                        if (iHashCode == 1444 && status.equals(TmcConstants.COLD_OPEN_TYPE)) {
                            throw new Exception("Order still processing");
                        }
                    } else if (status.equals("1")) {
                        a.g(aVar, "QueryOrder.content success", null, 2, null);
                        this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.SUCCESS));
                        return Unit.f67061a;
                    }
                } else if (status.equals("0")) {
                    a.e(aVar, "QueryOrder.content fail", null, 2, null);
                    this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.FAILURE));
                    return Unit.f67061a;
                }
            }
            a.k(aVar, "Unknown status", null, 2, null);
            this.this$0.z().n(new b(queryOrderResultContent, QueryStatus.FAILURE));
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentViewModel$query$1(long j11, long j12, PaymentViewModel paymentViewModel, String str, Continuation<? super PaymentViewModel$query$1> continuation) {
        super(2, continuation);
        this.$retryIntervalMills = j11;
        this.$maxTotalTimeMills = j12;
        this.this$0 = paymentViewModel;
        this.$txnId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentViewModel$query$1(this.$retryIntervalMills, this.$maxTotalTimeMills, this.this$0, this.$txnId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaymentViewModel$query$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                PayUtils payUtils = PayUtils.f41636a;
                long j11 = this.$retryIntervalMills;
                long j12 = this.$maxTotalTimeMills;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$txnId, null);
                this.label = 1;
                if (payUtils.m(j11, j12, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (CancellationException unused) {
            a.g(a.f619a, "Query operation was cancelled", null, 2, null);
            this.this$0.z().n(new b(null, QueryStatus.CANCELLED));
        } catch (TimeoutException e11) {
            a.g(a.f619a, "QueryOrder timed out: " + e11.getMessage(), null, 2, null);
            this.this$0.z().n(new b(null, QueryStatus.PROCESSING));
        } catch (Exception e12) {
            a.e(a.f619a, "QueryOrder failed: " + e12.getMessage(), null, 2, null);
            this.this$0.z().n(new b(null, QueryStatus.ERROR));
        }
        return Unit.f67061a;
    }
}
