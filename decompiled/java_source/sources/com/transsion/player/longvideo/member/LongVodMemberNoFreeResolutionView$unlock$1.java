package com.transsion.player.longvideo.member;

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
@DebugMetadata(c = "com.transsion.player.longvideo.member.LongVodMemberNoFreeResolutionView$unlock$1", f = "LongVodMemberNoFreeResolutionView.kt", l = {231, 232}, m = "invokeSuspend")
final class LongVodMemberNoFreeResolutionView$unlock$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ LongVodMemberNoFreeResolutionView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodMemberNoFreeResolutionView$unlock$1(LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView, Continuation<? super LongVodMemberNoFreeResolutionView$unlock$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodMemberNoFreeResolutionView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodMemberNoFreeResolutionView$unlock$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodMemberNoFreeResolutionView$unlock$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0045  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        zm.b bVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            bVar = this.this$0.com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String;
            if (bVar != null) {
                bVar.onSuccess();
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f48205a;
        go.a aVar = this.this$0.bean;
        this.label = 1;
        if (resolutionMemberManager.i(aVar, this) == objF) {
            return objF;
        }
        this.label = 2;
        if (u0.a(500L, this) == objF) {
            return objF;
        }
        bVar = this.this$0.com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String;
        if (bVar != null) {
            bVar.onSuccess();
        }
        return Unit.f67061a;
    }
}
