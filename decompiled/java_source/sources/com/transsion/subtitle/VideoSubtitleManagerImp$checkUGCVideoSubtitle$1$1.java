package com.transsion.subtitle;

import com.transsion.baselib.db.download.DownloadBean;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1", f = "VideoSubtitleManagerImp.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $bean;
    final /* synthetic */ boolean $hasSubtitle;
    final /* synthetic */ Function1<Boolean, Unit> $resultCallback;
    int label;
    final /* synthetic */ VideoSubtitleManagerImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1(Function1<? super Boolean, Unit> function1, boolean z10, VideoSubtitleManagerImp videoSubtitleManagerImp, DownloadBean downloadBean, Continuation<? super VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1> continuation) {
        super(2, continuation);
        this.$resultCallback = function1;
        this.$hasSubtitle = z10;
        this.this$0 = videoSubtitleManagerImp;
        this.$bean = downloadBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1(this.$resultCallback, this.$hasSubtitle, this.this$0, this.$bean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Function1<Boolean, Unit> function1 = this.$resultCallback;
        if (function1 != null) {
            function1.invoke(Boxing.a(this.$hasSubtitle));
        }
        Set set = this.this$0.f54733c;
        boolean z10 = this.$hasSubtitle;
        DownloadBean downloadBean = this.$bean;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((hu.c) it.next()).J(z10, downloadBean);
        }
        return Unit.f67061a;
    }
}
