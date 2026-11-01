package com.transsion.wrapperad.view;

import android.content.Context;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.wrapperad.view.NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1", f = "NativeSlideshowView.kt", l = {184}, m = "invokeSuspend")
final class NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $ctx;
    final /* synthetic */ BiddingIntermediateMaterialBean $maxEcpmObject;
    int label;
    final /* synthetic */ NativeSlideshowView this$0;

    /* JADX INFO: renamed from: com.transsion.wrapperad.view.NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1$1", f = "NativeSlideshowView.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $ctx;
        final /* synthetic */ BiddingIntermediateMaterialBean $maxEcpmObject;
        int label;
        final /* synthetic */ NativeSlideshowView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, NativeSlideshowView nativeSlideshowView, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$ctx = context;
            this.this$0 = nativeSlideshowView;
            this.$maxEcpmObject = biddingIntermediateMaterialBean;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$ctx, this.this$0, this.$maxEcpmObject, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            cy.b bVar = cy.b.f60940a;
            Context context = this.$ctx;
            BiddingNativeManager biddingNativeManager = this.this$0.topNative;
            r rVarA = bVar.a(context, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdView = this.this$0.vTop;
            if (nativeWrapperAdView != null) {
                nativeWrapperAdView.bindNativeView(this.this$0.topNative, rVarA, this.$maxEcpmObject);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1(Context context, NativeSlideshowView nativeSlideshowView, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, Continuation<? super NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1> continuation) {
        super(2, continuation);
        this.$ctx = context;
        this.this$0 = nativeSlideshowView;
        this.$maxEcpmObject = biddingIntermediateMaterialBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1(this.$ctx, this.this$0, this.$maxEcpmObject, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            a2 a2VarC = y0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$ctx, this.this$0, this.$maxEcpmObject, null);
            this.label = 1;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
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
