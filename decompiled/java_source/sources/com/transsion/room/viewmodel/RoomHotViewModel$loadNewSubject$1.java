package com.transsion.room.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.viewmodel.RoomHotViewModel$loadNewSubject$1", f = "RoomHotViewModel.kt", l = {61}, m = "invokeSuspend")
final class RoomHotViewModel$loadNewSubject$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $postId;
    int label;
    final /* synthetic */ RoomHotViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomHotViewModel$loadNewSubject$1(RoomHotViewModel roomHotViewModel, String str, Continuation<? super RoomHotViewModel$loadNewSubject$1> continuation) {
        super(2, continuation);
        this.this$0 = roomHotViewModel;
        this.$postId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomHotViewModel$loadNewSubject$1(this.this$0, this.$postId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomHotViewModel$loadNewSubject$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                com.transsion.usercenter.profile.b bVarX = this.this$0.X();
                String str = this.$postId;
                this.label = 1;
                obj = com.transsion.usercenter.profile.b.a.e(bVarX, str, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            PostSubjectItem postSubjectItem = (PostSubjectItem) ((BaseDto) obj).getData();
            if (postSubjectItem != null) {
                this.this$0.o().q(CollectionsKt.h(postSubjectItem));
            }
        } catch (Exception unused) {
        }
        return Unit.f67061a;
    }
}
