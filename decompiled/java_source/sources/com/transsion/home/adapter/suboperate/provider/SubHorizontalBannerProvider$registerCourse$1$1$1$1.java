package com.transsion.home.adapter.suboperate.provider;

import com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$1$1", f = "SubHorizontalBannerProvider.kt", l = {}, m = "invokeSuspend")
final class SubHorizontalBannerProvider$registerCourse$1$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SubHorizontalBannerProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubHorizontalBannerProvider$registerCourse$1$1$1$1(SubHorizontalBannerProvider subHorizontalBannerProvider, Continuation<? super SubHorizontalBannerProvider$registerCourse$1$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = subHorizontalBannerProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubHorizontalBannerProvider$registerCourse$1$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubHorizontalBannerProvider$registerCourse$1$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        SubHorizontalViewPagerAdapter subHorizontalViewPagerAdapter = this.this$0.f44533p;
        if (subHorizontalViewPagerAdapter != null) {
            subHorizontalViewPagerAdapter.notifyDataSetChanged();
        }
        return Unit.f67061a;
    }
}
