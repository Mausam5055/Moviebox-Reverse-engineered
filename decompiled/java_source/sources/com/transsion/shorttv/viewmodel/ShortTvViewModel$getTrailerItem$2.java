package com.transsion.shorttv.viewmodel;

import com.google.gson.Gson;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.PreVideoAddress;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Trailer;
import com.transsion.shorttv.bean.Video;
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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Ljs/e;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljs/e;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getTrailerItem$2", f = "ShortTvViewModel.kt", l = {}, m = "invokeSuspend")
final class ShortTvViewModel$getTrailerItem$2 extends SuspendLambda implements Function2<n0, Continuation<? super js.e>, Object> {
    final /* synthetic */ Subject $subject;
    final /* synthetic */ String $subjectId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getTrailerItem$2(Subject subject, String str, Continuation<? super ShortTvViewModel$getTrailerItem$2> continuation) {
        super(2, continuation);
        this.$subject = subject;
        this.$subjectId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$getTrailerItem$2(this.$subject, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super js.e> continuation) {
        return ((ShortTvViewModel$getTrailerItem$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Media video;
        Media video2;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Subject subject = this.$subject;
        Trailer trailer = subject != null ? subject.getTrailer() : null;
        js.e eVar = new js.e(this.$subjectId, 0, null, 0, 12, null);
        Subject subject2 = this.$subject;
        eVar.g(0);
        ShortTVItem shortTVItem = (ShortTVItem) new Gson().fromJson(new Gson().toJson(subject2 != null ? subject2.getShortTVFirstEp() : null), ShortTVItem.class);
        if (shortTVItem != null) {
            shortTVItem.setId("0");
        }
        if (shortTVItem != null) {
            shortTVItem.setVideoId(null);
        }
        Intrinsics.e(trailer);
        PreVideoAddress videoAddress = trailer.getVideoAddress();
        Video videoA = videoAddress != null ? js.b.a(videoAddress) : null;
        if (shortTVItem != null && (video2 = shortTVItem.getVideo()) != null) {
            video2.setVideoAddress(videoA);
        }
        if (shortTVItem != null && (video = shortTVItem.getVideo()) != null) {
            video.setAddressList(null);
        }
        if (shortTVItem != null) {
            shortTVItem.setEp(0);
        }
        eVar.h(shortTVItem);
        return eVar;
    }
}
