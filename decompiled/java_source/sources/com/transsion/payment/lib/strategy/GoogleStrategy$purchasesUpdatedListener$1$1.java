package com.transsion.payment.lib.strategy;

import com.android.billingclient.api.Purchase;
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
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.strategy.GoogleStrategy$purchasesUpdatedListener$1$1", f = "GoogleStrategy.kt", l = {261, 264}, m = "invokeSuspend")
final class GoogleStrategy$purchasesUpdatedListener$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<Purchase> $purchases;
    Object L$0;
    int label;
    final /* synthetic */ GoogleStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleStrategy$purchasesUpdatedListener$1$1(List<Purchase> list, GoogleStrategy googleStrategy, Continuation<? super GoogleStrategy$purchasesUpdatedListener$1$1> continuation) {
        super(2, continuation);
        this.$purchases = list;
        this.this$0 = googleStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GoogleStrategy$purchasesUpdatedListener$1$1(this.$purchases, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GoogleStrategy$purchasesUpdatedListener$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x004f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:? A[LOOP:0: B:14:0x0037->B:24:?, LOOP_END, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Iterator<Purchase> it;
        Purchase next;
        GoogleStrategy googleStrategy;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$0;
                ResultKt.b(obj);
            }
            while (it.hasNext()) {
                next = it.next();
                googleStrategy = this.this$0;
                this.L$0 = it;
                this.label = 2;
                if (googleStrategy.B(next, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        this.label = 1;
        if (u0.a(1000L, this) == objF) {
            return objF;
        }
        it = this.$purchases.iterator();
        while (it.hasNext()) {
            next = it.next();
            googleStrategy = this.this$0;
            this.L$0 = it;
            this.label = 2;
            if (googleStrategy.B(next, this) == objF) {
                return objF;
            }
        }
        return Unit.f67061a;
    }
}
