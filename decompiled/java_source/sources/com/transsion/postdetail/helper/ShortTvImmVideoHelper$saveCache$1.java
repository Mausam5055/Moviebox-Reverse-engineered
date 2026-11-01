package com.transsion.postdetail.helper;

import com.blankj.utilcode.util.o;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.helper.ShortTvImmVideoHelper$saveCache$1", f = "ShortTvImmVideoHelper.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvImmVideoHelper$saveCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<Subject> $videoList;
    int label;
    final /* synthetic */ ShortTvImmVideoHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ShortTvImmVideoHelper$saveCache$1(List<? extends Subject> list, ShortTvImmVideoHelper shortTvImmVideoHelper, Continuation<? super ShortTvImmVideoHelper$saveCache$1> continuation) {
        super(2, continuation);
        this.$videoList = list;
        this.this$0 = shortTvImmVideoHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvImmVideoHelper$saveCache$1(this.$videoList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvImmVideoHelper$saveCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Media video;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            List<Subject> list = this.$videoList;
            List<Subject> listSubList = list.subList(list.size() - 1, this.$videoList.size());
            ShortTvImmVideoHelper shortTvImmVideoHelper = this.this$0;
            for (Subject subject : listSubList) {
                if (subject.getIsCache()) {
                    return Unit.f67061a;
                }
                subject.setCache(true);
                lg.a.C0828a.f(lg.a.f68839a, "shorttv_detail_video", "save cache", false, 4, null);
                ShortTVItem shortTVFirstEp = subject.getShortTVFirstEp();
                shortTvImmVideoHelper.u((shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress());
            }
            com.transsion.baselib.report.launch.b.f43370a.b().putString("k_save_video", o.j(listSubList));
        } catch (Exception unused) {
        }
        return Unit.f67061a;
    }
}
