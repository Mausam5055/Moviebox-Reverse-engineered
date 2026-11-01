package com.transsion.home.viewmodel.preload;

import android.content.Context;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.preload.PreloadTrendingData$preloadVideoCache$1", f = "PreloadTrendingData.kt", l = {}, m = "invokeSuspend")
final class PreloadTrendingData$preloadVideoCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    int label;
    final /* synthetic */ PreloadTrendingData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PreloadTrendingData$preloadVideoCache$1(PreloadTrendingData preloadTrendingData, Context context, Continuation<? super PreloadTrendingData$preloadVideoCache$1> continuation) {
        super(2, continuation);
        this.this$0 = preloadTrendingData;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PreloadTrendingData$preloadVideoCache$1(this.this$0, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PreloadTrendingData$preloadVideoCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            String strF = this.this$0.E().f(this.$context);
            if (strF != null && strF.length() > 0) {
                List list = (List) o.e(strF, o.g(PostSubjectItem.class));
                dx.d.f61455a.d().n(list);
                PreloadTrendingBuiltInHelper preloadTrendingBuiltInHelperE = this.this$0.E();
                Intrinsics.e(list);
                preloadTrendingBuiltInHelperE.c(list);
            }
        } catch (Exception e11) {
            lg.a.C0828a.f(lg.a.f68839a, "PreloadTrending", "preloadVideoCache exception " + e11.getMessage(), false, 4, null);
        }
        return Unit.f67061a;
    }
}
