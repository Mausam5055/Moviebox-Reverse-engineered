package com.transsion.ad.test.ad_example;

import com.transsion.ad.R$layout;
import com.transsion.ad.bidding.base.AbsAdBidding;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdH5V1Activity$onCreate$1$1", f = "TestAdH5V1Activity.kt", l = {76}, m = "invokeSuspend")
final class TestAdH5V1Activity$onCreate$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TestAdH5V1Activity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdH5V1Activity$onCreate$1$1(TestAdH5V1Activity testAdH5V1Activity, Continuation<? super TestAdH5V1Activity$onCreate$1$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdH5V1Activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdH5V1Activity$onCreate$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TestAdH5V1Activity$onCreate$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        com.transsion.ad.bidding.splash.b bVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            com.transsion.ad.bidding.splash.b bVar2 = this.this$0.splashManager;
            if (bVar2 == null) {
                Intrinsics.z("splashManager");
                bVar2 = null;
            }
            bVar2.O0("MBInterstitialTestId");
            com.transsion.ad.bidding.splash.b bVar3 = this.this$0.splashManager;
            if (bVar3 == null) {
                Intrinsics.z("splashManager");
                bVar3 = null;
            }
            bVar3.M0(null);
            com.transsion.ad.bidding.splash.b bVar4 = this.this$0.splashManager;
            if (bVar4 == null) {
                Intrinsics.z("splashManager");
                bVar4 = null;
            }
            bVar4.L0(this.this$0);
            com.transsion.ad.bidding.splash.b bVar5 = this.this$0.splashManager;
            if (bVar5 == null) {
                Intrinsics.z("splashManager");
                bVar5 = null;
            }
            bVar5.N0(this.this$0.splashListener);
            com.transsion.ad.bidding.splash.b bVar6 = this.this$0.splashManager;
            if (bVar6 == null) {
                Intrinsics.z("splashManager");
                bVar6 = null;
            }
            bVar6.K0(Boxing.d(R$layout.ad_splash_app_layout));
            com.transsion.ad.bidding.splash.b bVar7 = this.this$0.splashManager;
            if (bVar7 == null) {
                Intrinsics.z("splashManager");
                bVar = null;
            } else {
                bVar = bVar7;
            }
            this.label = 1;
            if (AbsAdBidding.w0(bVar, 0, false, this, 3, null) == objF) {
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
