package com.transsion.player.longvideo.intercept;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1", f = "PlaybackInterceptAdView.kt", l = {173}, m = "invokeSuspend")
final class PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ BiddingIntermediateMaterialBean $maxEcpmObject;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    final /* synthetic */ PlaybackInterceptAdView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1(PlaybackInterceptAdView playbackInterceptAdView, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, Context context, Continuation<? super PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1> continuation) {
        super(2, continuation);
        this.this$0 = playbackInterceptAdView;
        this.$maxEcpmObject = biddingIntermediateMaterialBean;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1(this.this$0, this.$maxEcpmObject, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, com.transsion.baselib.db.video.PlaybackRecordTable] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref.ObjectRef objectRef;
        PlaybackInterceptAdView playbackInterceptAdView;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean;
        Context context;
        go.a aVar;
        Ref.ObjectRef objectRef2;
        T t11;
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        LifecycleCoroutineScope lifecycleCoroutineScopeA2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            go.a aVar2 = this.this$0.longVdPlayerBean;
            if (aVar2 != null) {
                PlaybackInterceptAdView playbackInterceptAdView2 = this.this$0;
                BiddingIntermediateMaterialBean biddingIntermediateMaterialBean2 = this.$maxEcpmObject;
                Context context2 = this.$context;
                Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                PlaybackRecordDao playbackRecordDao = playbackInterceptAdView2.getPlaybackRecordDao();
                String strO = aVar2.o();
                int iL = aVar2.l();
                int iE = aVar2.e();
                this.L$0 = playbackInterceptAdView2;
                this.L$1 = biddingIntermediateMaterialBean2;
                this.L$2 = context2;
                this.L$3 = aVar2;
                this.L$4 = objectRef3;
                this.L$5 = objectRef3;
                this.label = 1;
                Object objA = playbackRecordDao.a(strO, iL, iE, this);
                if (objA == objF) {
                    return objF;
                }
                objectRef = objectRef3;
                playbackInterceptAdView = playbackInterceptAdView2;
                biddingIntermediateMaterialBean = biddingIntermediateMaterialBean2;
                context = context2;
                aVar = aVar2;
                objectRef2 = objectRef;
                t11 = objA;
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        objectRef = (Ref.ObjectRef) this.L$5;
        objectRef2 = (Ref.ObjectRef) this.L$4;
        go.a aVar3 = (go.a) this.L$3;
        Context context3 = (Context) this.L$2;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean3 = (BiddingIntermediateMaterialBean) this.L$1;
        PlaybackInterceptAdView playbackInterceptAdView3 = (PlaybackInterceptAdView) this.L$0;
        ResultKt.b(obj);
        playbackInterceptAdView = playbackInterceptAdView3;
        biddingIntermediateMaterialBean = biddingIntermediateMaterialBean3;
        context = context3;
        aVar = aVar3;
        t11 = obj;
        objectRef.element = t11;
        if (objectRef2.element == 0) {
            objectRef2.element = new PlaybackRecordTable(aVar.o(), aVar.l(), aVar.e(), 0L, 0L, false, 56, null);
        }
        if (Intrinsics.c(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getSceneId() : null, "VideoStartBidScene")) {
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity != null && (lifecycleCoroutineScopeA2 = androidx.p009lifecycle.v.a(appCompatActivity)) != null) {
                kotlinx.coroutines.k.d(lifecycleCoroutineScopeA2, null, null, new PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$1(objectRef2, playbackInterceptAdView, null), 3, null);
            }
        } else {
            if (Intrinsics.c(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getSceneId() : null, "VideoEndBidScene")) {
                AppCompatActivity appCompatActivity2 = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
                if (appCompatActivity2 != null && (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity2)) != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2(objectRef2, playbackInterceptAdView, null), 3, null);
                }
            }
        }
        return Unit.f67061a;
    }
}
