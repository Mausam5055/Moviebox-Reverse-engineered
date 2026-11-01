package com.transsion.moviedetail.fragment;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.edcation.bean.CourseBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$1$1", f = "ForYouFragment.kt", l = {}, m = "invokeSuspend")
final class ForYouFragment$initData$1$1$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ CourseBean $it;
    int label;
    final /* synthetic */ ForYouFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ForYouFragment$initData$1$1$1$1$1(ForYouFragment forYouFragment, int i11, CourseBean courseBean, Continuation<? super ForYouFragment$initData$1$1$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = forYouFragment;
        this.$index = i11;
        this.$it = courseBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ForYouFragment$initData$1$1$1$1$1(this.this$0, this.$index, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ForYouFragment$initData$1$1$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        BaseQuickAdapter baseQuickAdapter = this.this$0.forYouAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.notifyItemChanged(this.$index, Boxing.d(this.$it.getSeenStatus()));
        }
        return Unit.f67061a;
    }
}
