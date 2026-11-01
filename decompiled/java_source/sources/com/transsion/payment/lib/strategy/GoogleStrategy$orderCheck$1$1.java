package com.transsion.payment.lib.strategy;

import com.android.billingclient.api.Purchase;
import com.transsion.payment.lib.PaymentService;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.strategy.GoogleStrategy$orderCheck$1$1", f = "GoogleStrategy.kt", l = {191}, m = "invokeSuspend")
@SourceDebugExtension
final class GoogleStrategy$orderCheck$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<Purchase> $purchaseList;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ GoogleStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleStrategy$orderCheck$1$1(List<Purchase> list, GoogleStrategy googleStrategy, Continuation<? super GoogleStrategy$orderCheck$1$1> continuation) {
        super(2, continuation);
        this.$purchaseList = list;
        this.this$0 = googleStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GoogleStrategy$orderCheck$1$1(this.$purchaseList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GoogleStrategy$orderCheck$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        GoogleStrategy googleStrategy;
        Iterator it;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            List<Purchase> list = this.$purchaseList;
            Intrinsics.e(list);
            googleStrategy = this.this$0;
            it = list.iterator();
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) this.L$1;
            googleStrategy = (GoogleStrategy) this.L$0;
            ResultKt.b(obj);
        }
        while (it.hasNext()) {
            Purchase purchase = (Purchase) it.next();
            com.transsion.payment.lib.d dVar = com.transsion.payment.lib.d.f47779a;
            dVar.a("fetch purchase result: state " + purchase.e() + " " + purchase.g() + " result size: " + purchase.f());
            if (purchase.e() != 1) {
                dVar.c("遇到未发货订单 fetch purchase result: state " + purchase.e() + " " + purchase.g() + " result size: " + purchase.f());
                com.android.billingclient.api.a aVarA = purchase.a();
                String strA = aVarA != null ? aVarA.a() : null;
                String strG = purchase.g();
                Intrinsics.g(strG, "getPurchaseToken(...)");
                String strB = purchase.b();
                List listD = purchase.d();
                String str = listD != null ? (String) listD.get(0) : null;
                PaymentService paymentServiceZ = googleStrategy.z();
                this.L$0 = googleStrategy;
                this.L$1 = it;
                this.label = 1;
                if (paymentServiceZ.g(str, strG, strA, strB, this) == objF) {
                    return objF;
                }
            }
        }
        return Unit.f67061a;
    }
}
