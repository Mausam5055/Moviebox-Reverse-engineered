package com.transsion.videodetail.music.ui;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.ui.MusicTabLikedFragment$playDownloadMusic$1", f = "MusicTabLikedFragment.kt", l = {338}, m = "invokeSuspend")
final class MusicTabLikedFragment$playDownloadMusic$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ MusicTabLikedFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicTabLikedFragment$playDownloadMusic$1(MusicTabLikedFragment musicTabLikedFragment, String str, Continuation<? super MusicTabLikedFragment$playDownloadMusic$1> continuation) {
        super(2, continuation);
        this.this$0 = musicTabLikedFragment;
        this.$subjectId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MusicTabLikedFragment$playDownloadMusic$1(this.this$0, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicTabLikedFragment$playDownloadMusic$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            lj.c cVarW0 = this.this$0.W0();
            String str = this.$subjectId;
            if (str == null) {
                str = "";
            }
            this.label = 1;
            obj = cVarW0.E(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        DownloadBean downloadBean = (DownloadBean) obj;
        if (downloadBean != null) {
            this.this$0.j1(downloadBean);
        }
        return Unit.f67061a;
    }
}
