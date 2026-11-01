package com.transsion.ad.test.ad_example;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdNativeSspActivity$onCreate$1$1", f = "TestAdNativeSspActivity.kt", l = {85}, m = "invokeSuspend")
final class TestAdNativeSspActivity$onCreate$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TestAdNativeSspActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdNativeSspActivity$onCreate$1$1(TestAdNativeSspActivity testAdNativeSspActivity, Continuation<? super TestAdNativeSspActivity$onCreate$1$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdNativeSspActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdNativeSspActivity$onCreate$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TestAdNativeSspActivity$onCreate$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        BiddingSspNativeManager biddingSspNativeManager;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            BiddingSspNativeManager biddingSspNativeManager2 = this.this$0.nativeManager;
            if (biddingSspNativeManager2 == null) {
                Intrinsics.z("nativeManager");
                biddingSspNativeManager2 = null;
            }
            biddingSspNativeManager2.O0("MBNativeTestId");
            BiddingSspNativeManager biddingSspNativeManager3 = this.this$0.nativeManager;
            if (biddingSspNativeManager3 == null) {
                Intrinsics.z("nativeManager");
                biddingSspNativeManager3 = null;
            }
            biddingSspNativeManager3.M0(null);
            BiddingSspNativeManager biddingSspNativeManager4 = this.this$0.nativeManager;
            if (biddingSspNativeManager4 == null) {
                Intrinsics.z("nativeManager");
                biddingSspNativeManager4 = null;
            }
            biddingSspNativeManager4.L0(this.this$0);
            BiddingSspNativeManager biddingSspNativeManager5 = this.this$0.nativeManager;
            if (biddingSspNativeManager5 == null) {
                Intrinsics.z("nativeManager");
                biddingSspNativeManager5 = null;
            }
            biddingSspNativeManager5.N0(this.this$0.nativeListener);
            BiddingSspNativeManager biddingSspNativeManager6 = this.this$0.nativeManager;
            if (biddingSspNativeManager6 == null) {
                Intrinsics.z("nativeManager");
                biddingSspNativeManager = null;
            } else {
                biddingSspNativeManager = biddingSspNativeManager6;
            }
            this.label = 1;
            if (AbsAdBidding.w0(biddingSspNativeManager, 3, false, this, 2, null) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
