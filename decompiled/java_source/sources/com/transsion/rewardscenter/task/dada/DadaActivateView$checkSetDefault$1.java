package com.transsion.rewardscenter.task.dada;

import androidx.p009lifecycle.b0;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import com.transsion.rewardscenter.ui.RewardsCenterFragment;
import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenterapi.DaDaInfo;
import java.lang.ref.WeakReference;
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
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.task.dada.DadaActivateView$checkSetDefault$1", f = "DaDaActivateView.kt", l = {401, TTAdConstant.DEEPLINK_UNAVAILABLE_CODE}, m = "invokeSuspend")
final class DadaActivateView$checkSetDefault$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<String, Unit> $onFailure;
    final /* synthetic */ Function1<Boolean, Unit> $onSuccess;
    final /* synthetic */ long $time;
    int label;
    final /* synthetic */ DadaActivateView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DadaActivateView$checkSetDefault$1(DadaActivateView dadaActivateView, long j11, Function1<? super String, Unit> function1, Function1<? super Boolean, Unit> function2, Continuation<? super DadaActivateView$checkSetDefault$1> continuation) {
        super(2, continuation);
        this.this$0 = dadaActivateView;
        this.$time = j11;
        this.$onFailure = function1;
        this.$onSuccess = function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(DadaActivateView dadaActivateView, Function1 function1, String str, String str2) {
        RewardsCenterModel rewardsCenterModelC;
        b0 b0VarO;
        wp.a aVar = dadaActivateView.ctxConfig;
        if (aVar != null && (rewardsCenterModelC = aVar.c()) != null && (b0VarO = rewardsCenterModelC.o()) != null) {
            b0VarO.n(Boolean.FALSE);
        }
        if (function1 != null) {
            function1.invoke(str2);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(DadaActivateView dadaActivateView, Function1 function1, DaDaInfo daDaInfo) {
        RewardsCenterModel rewardsCenterModelC;
        b0 b0VarO;
        wp.a aVar = dadaActivateView.ctxConfig;
        if (aVar != null && (rewardsCenterModelC = aVar.c()) != null && (b0VarO = rewardsCenterModelC.o()) != null) {
            b0VarO.n(Boolean.FALSE);
        }
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(daDaInfo != null ? daDaInfo.isSetDefault() : false));
        }
        lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "--> checkDadaSetDefault: " + daDaInfo, false, 4, null);
        if (daDaInfo != null && daDaInfo.isSetDefault()) {
            dadaActivateView.setTaskState(DadaTaskState.SET_DEFAULT);
        }
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DadaActivateView$checkSetDefault$1(this.this$0, this.$time, this.$onFailure, this.$onSuccess, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DadaActivateView$checkSetDefault$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        WeakReference weakReferenceA;
        RewardsCenterFragment rewardsCenterFragment;
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
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        wp.a aVar = this.this$0.ctxConfig;
        if (aVar != null && (weakReferenceA = aVar.a()) != null && (rewardsCenterFragment = (RewardsCenterFragment) weakReferenceA.get()) != null) {
            rewardsCenterFragment.showLoading();
        }
        long j11 = this.$time;
        if (j11 > 0) {
            this.label = 1;
            if (u0.a(j11, this) == objF) {
                return objF;
            }
        }
        RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f51292a;
        final DadaActivateView dadaActivateView = this.this$0;
        final Function1<String, Unit> function1 = this.$onFailure;
        Function2 function2 = new Function2() { // from class: com.transsion.rewardscenter.task.dada.j
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                return DadaActivateView$checkSetDefault$1.g(dadaActivateView, function1, (String) obj2, (String) obj3);
            }
        };
        final DadaActivateView dadaActivateView2 = this.this$0;
        final Function1<Boolean, Unit> function3 = this.$onSuccess;
        Function1 function4 = new Function1() { // from class: com.transsion.rewardscenter.task.dada.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return DadaActivateView$checkSetDefault$1.h(dadaActivateView2, function3, (DaDaInfo) obj2);
            }
        };
        this.label = 2;
        if (rewardsCenterApiHelper.j(function2, function4, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
