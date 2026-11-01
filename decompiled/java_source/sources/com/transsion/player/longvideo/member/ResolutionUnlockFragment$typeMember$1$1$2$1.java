package com.transsion.player.longvideo.member;

import com.therouter.TheRouter;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberSource;
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
@DebugMetadata(c = "com.transsion.player.longvideo.member.ResolutionUnlockFragment$typeMember$1$1$2$1", f = "ResolutionUnlockFragment.kt", l = {}, m = "invokeSuspend")
final class ResolutionUnlockFragment$typeMember$1$1$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ResolutionUnlockFragment this$0;

    public static final class a implements zm.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ResolutionUnlockFragment f48214a;

        a(ResolutionUnlockFragment resolutionUnlockFragment) {
            this.f48214a = resolutionUnlockFragment;
        }

        @Override // zm.b
        public void a() {
            ok.c.f71034a.a(this.f48214a.getClassTag() + " --> typeMember() --> onFailed() --> 开通会员失败");
        }

        @Override // zm.b
        public void onSuccess() {
            this.f48214a.h0();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResolutionUnlockFragment$typeMember$1$1$2$1(ResolutionUnlockFragment resolutionUnlockFragment, Continuation<? super ResolutionUnlockFragment$typeMember$1$1$2$1> continuation) {
        super(2, continuation);
        this.this$0 = resolutionUnlockFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ResolutionUnlockFragment$typeMember$1$1$2$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ResolutionUnlockFragment$typeMember$1$1$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.c(iMemberApi, this.this$0.getActivity(), MemberSource.THREE_IN_ONE_POPUP, new a(this.this$0), false, null, 24, null);
        }
        return Unit.f67061a;
    }
}
