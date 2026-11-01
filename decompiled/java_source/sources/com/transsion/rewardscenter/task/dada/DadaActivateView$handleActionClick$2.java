package com.transsion.rewardscenter.task.dada;

import android.content.Context;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskRewards;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.task.dada.DadaActivateView$handleActionClick$2", f = "DaDaActivateView.kt", l = {283}, m = "invokeSuspend")
final class DadaActivateView$handleActionClick$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DadaActivateView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DadaActivateView$handleActionClick$2(DadaActivateView dadaActivateView, Continuation<? super DadaActivateView$handleActionClick$2> continuation) {
        super(2, continuation);
        this.this$0 = dadaActivateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(DadaActivateView dadaActivateView, String str, String str2) {
        if (str2 == null) {
            str2 = dadaActivateView.getContext().getString(R$string.claim_failed);
            Intrinsics.g(str2, "getString(...)");
        }
        com.transsion.rewardscenter.utils.p.a(false, str2);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(DadaActivateView dadaActivateView, TaskRewards taskRewards) {
        Integer rewardAmount;
        Integer currentPoint;
        RewardsCenterModel rewardsCenterModelC;
        dadaActivateView.setTaskState(DadaTaskState.COMPLETED);
        if (taskRewards != null && (currentPoint = taskRewards.getCurrentPoint()) != null) {
            int iIntValue = currentPoint.intValue();
            wp.a aVar = dadaActivateView.ctxConfig;
            if (aVar != null && (rewardsCenterModelC = aVar.c()) != null) {
                rewardsCenterModelC.C(iIntValue);
            }
        }
        Context context = dadaActivateView.getContext();
        int i11 = R$string.claim_points_receive_tips;
        MemberTaskItem stage2ndTaskInfo = dadaActivateView.getStage2ndTaskInfo();
        String string = context.getString(i11, Integer.valueOf((stage2ndTaskInfo == null || (rewardAmount = stage2ndTaskInfo.getRewardAmount()) == null) ? 10 : rewardAmount.intValue()));
        Intrinsics.g(string, "getString(...)");
        com.transsion.rewardscenter.utils.p.a(true, string);
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DadaActivateView$handleActionClick$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DadaActivateView$handleActionClick$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f51292a;
            MemberTaskItem stage2ndTaskInfo = this.this$0.getStage2ndTaskInfo();
            String taskId = stage2ndTaskInfo != null ? stage2ndTaskInfo.getTaskId() : null;
            final DadaActivateView dadaActivateView = this.this$0;
            Function2 function2 = new Function2() { // from class: com.transsion.rewardscenter.task.dada.n
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return DadaActivateView$handleActionClick$2.g(dadaActivateView, (String) obj2, (String) obj3);
                }
            };
            final DadaActivateView dadaActivateView2 = this.this$0;
            Function1 function1 = new Function1() { // from class: com.transsion.rewardscenter.task.dada.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return DadaActivateView$handleActionClick$2.h(dadaActivateView2, (TaskRewards) obj2);
                }
            };
            this.label = 1;
            if (rewardsCenterApiHelper.u(taskId, function2, function1, this) == objF) {
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
