package com.transsion.player.longvideo.member;

import com.transsion.baselib.db.member.MemberResolutionDao;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.member.ResolutionMemberManager$updateVipResolutionTip$2", f = "ResolutionMemberManager.kt", l = {57}, m = "invokeSuspend")
final class ResolutionMemberManager$updateVipResolutionTip$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ go.a $curBean;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResolutionMemberManager$updateVipResolutionTip$2(go.a aVar, Continuation<? super ResolutionMemberManager$updateVipResolutionTip$2> continuation) {
        super(2, continuation);
        this.$curBean = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ResolutionMemberManager$updateVipResolutionTip$2(this.$curBean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ResolutionMemberManager$updateVipResolutionTip$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            MemberResolutionDao memberResolutionDaoE = ResolutionMemberManager.f48205a.e();
            String strO = this.$curBean.o();
            int iL = this.$curBean.l();
            int iE = this.$curBean.e();
            this.label = 1;
            if (memberResolutionDaoE.a(strO, iL, iE, true, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        k.f48225a.a(ResolutionMemberManager.f48205a.d() + " --> updateVipResolutionTip() --> 保存数据库 --> vipResolutionTip = true --> curBean = " + this.$curBean);
        return Unit.f67061a;
    }
}
