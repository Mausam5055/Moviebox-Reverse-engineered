package com.transsion.ad.test.ad_example;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.ad.R$layout;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.lib_web.cache.TWebViewAdCacheManager;
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
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdH5Activity$checkStatus$1", f = "TestAdH5Activity.kt", l = {130}, m = "invokeSuspend")
final class TestAdH5Activity$checkStatus$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TestAdH5Activity this$0;

    /* JADX INFO: renamed from: com.transsion.ad.test.ad_example.TestAdH5Activity$checkStatus$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdH5Activity$checkStatus$1$1", f = "TestAdH5Activity.kt", l = {139}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ TestAdH5Activity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TestAdH5Activity testAdH5Activity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = testAdH5Activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            BiddingInterstitialManager biddingInterstitialManager;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                BiddingInterstitialManager biddingInterstitialManager2 = this.this$0.interstitialManager;
                if (biddingInterstitialManager2 == null) {
                    Intrinsics.z("interstitialManager");
                    biddingInterstitialManager2 = null;
                }
                biddingInterstitialManager2.O0("MBInterstitialTestId");
                BiddingInterstitialManager biddingInterstitialManager3 = this.this$0.interstitialManager;
                if (biddingInterstitialManager3 == null) {
                    Intrinsics.z("interstitialManager");
                    biddingInterstitialManager3 = null;
                }
                biddingInterstitialManager3.M0(null);
                BiddingInterstitialManager biddingInterstitialManager4 = this.this$0.interstitialManager;
                if (biddingInterstitialManager4 == null) {
                    Intrinsics.z("interstitialManager");
                    biddingInterstitialManager4 = null;
                }
                biddingInterstitialManager4.L0(this.this$0);
                BiddingInterstitialManager biddingInterstitialManager5 = this.this$0.interstitialManager;
                if (biddingInterstitialManager5 == null) {
                    Intrinsics.z("interstitialManager");
                    biddingInterstitialManager5 = null;
                }
                biddingInterstitialManager5.N0(this.this$0.splashListener);
                BiddingInterstitialManager biddingInterstitialManager6 = this.this$0.interstitialManager;
                if (biddingInterstitialManager6 == null) {
                    Intrinsics.z("interstitialManager");
                    biddingInterstitialManager6 = null;
                }
                biddingInterstitialManager6.K0(Boxing.d(R$layout.ad_splash_app_layout));
                BiddingInterstitialManager biddingInterstitialManager7 = this.this$0.interstitialManager;
                if (biddingInterstitialManager7 == null) {
                    Intrinsics.z("interstitialManager");
                    biddingInterstitialManager = null;
                } else {
                    biddingInterstitialManager = biddingInterstitialManager7;
                }
                this.label = 1;
                if (AbsAdBidding.w0(biddingInterstitialManager, 0, false, this, 3, null) == objF) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdH5Activity$checkStatus$1(TestAdH5Activity testAdH5Activity, Continuation<? super TestAdH5Activity$checkStatus$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdH5Activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdH5Activity$checkStatus$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TestAdH5Activity$checkStatus$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            TWebViewAdCacheManager tWebViewAdCacheManager = TWebViewAdCacheManager.f46136a;
            this.label = 1;
            obj = tWebViewAdCacheManager.e(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        String str = (String) obj;
        ji.l lVar = this.this$0.binding;
        if (lVar == null) {
            Intrinsics.z("binding");
            lVar = null;
        }
        lVar.f66142g.setText(str);
        if (Intrinsics.c(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, str)) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.this$0), null, null, new AnonymousClass1(this.this$0, null), 3, null);
        }
        return Unit.f67061a;
    }
}
