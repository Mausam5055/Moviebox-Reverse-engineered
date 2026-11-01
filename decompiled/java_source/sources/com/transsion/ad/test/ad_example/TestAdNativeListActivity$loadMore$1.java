package com.transsion.ad.test.ad_example;

import java.util.ArrayList;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdNativeListActivity$loadMore$1", f = "TestAdNativeListActivity.kt", l = {71}, m = "invokeSuspend")
final class TestAdNativeListActivity$loadMore$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TestAdNativeListActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdNativeListActivity$loadMore$1(TestAdNativeListActivity testAdNativeListActivity, Continuation<? super TestAdNativeListActivity$loadMore$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdNativeListActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdNativeListActivity$loadMore$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TestAdNativeListActivity$loadMore$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        r6.f fVarH0;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(1000L, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < 5; i12++) {
            arrayList.add(new TestAdNativeListActivity.b("", null));
        }
        TestAdNativeListActivity.a aVar = this.this$0.mTestAdapter;
        if (aVar != null) {
            aVar.q(arrayList);
        }
        TestAdNativeListActivity.a aVar2 = this.this$0.mTestAdapter;
        if (aVar2 != null && (fVarH0 = aVar2.h0()) != null) {
            fVarH0.s();
        }
        return Unit.f67061a;
    }
}
