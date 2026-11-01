package com.transsion.postdetail.viewmodel;

import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$loadPostExploreCombinedCache$1", f = "RoomPostViewModel.kt", l = {}, m = "invokeSuspend")
final class RoomPostViewModel$loadPostExploreCombinedCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ RoomPostViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostViewModel$loadPostExploreCombinedCache$1(RoomPostViewModel roomPostViewModel, Continuation<? super RoomPostViewModel$loadPostExploreCombinedCache$1> continuation) {
        super(2, continuation);
        this.this$0 = roomPostViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomPostViewModel$loadPostExploreCombinedCache$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomPostViewModel$loadPostExploreCombinedCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        List listB0 = this.this$0.b0();
        List listD0 = this.this$0.d0("post_explore_net_cache_exp", "loadExpNetCacheItems");
        List listC0 = this.this$0.c0();
        PostSubjectBean postSubjectBeanK0 = this.this$0.k0(listB0, listD0, listC0);
        if (postSubjectBeanK0 != null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            int size = listB0.size();
            int size2 = listD0.size();
            int size3 = listC0.size();
            List<PostSubjectItem> items = postSubjectBeanK0.getItems();
            lg.a.C0828a.f(c0828a, "RoomPostVM", "loadPostExploreCombinedCache [实验组], 已曝光:" + size + ", 网络:" + size2 + ", 手动:" + size3 + ", 合并:" + (items != null ? Boxing.d(items.size()) : null), false, 4, null);
            this.this$0.f50233e.n(postSubjectBeanK0);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "RoomPostVM", "loadPostExploreCombinedCache [实验组], 无缓存数据", false, 4, null);
        }
        return Unit.f67061a;
    }
}
