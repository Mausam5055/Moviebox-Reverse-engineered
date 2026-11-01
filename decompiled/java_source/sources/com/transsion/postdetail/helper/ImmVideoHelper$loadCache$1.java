package com.transsion.postdetail.helper;

import com.blankj.utilcode.util.o;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import java.util.List;
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
@DebugMetadata(c = "com.transsion.postdetail.helper.ImmVideoHelper$loadCache$1", f = "ImmVideoHelper.kt", l = {}, m = "invokeSuspend")
final class ImmVideoHelper$loadCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ImmVideoHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ImmVideoHelper$loadCache$1(ImmVideoHelper immVideoHelper, Continuation<? super ImmVideoHelper$loadCache$1> continuation) {
        super(2, continuation);
        this.this$0 = immVideoHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ImmVideoHelper$loadCache$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ImmVideoHelper$loadCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_save_video", "");
            List list = (string == null || string.length() <= 0) ? null : (List) o.e(string, o.g(PostSubjectItem.class));
            List list2 = list;
            if (list2 == null || list2.isEmpty()) {
                list = (List) dx.d.f61455a.d().f();
            }
            if (list == null || !(!list.isEmpty())) {
                this.this$0.i().n(null);
            } else {
                this.this$0.i().n(list);
            }
        } catch (Exception unused) {
            this.this$0.i().n(null);
        }
        return Unit.f67061a;
    }
}
