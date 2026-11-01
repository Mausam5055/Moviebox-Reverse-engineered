package com.transsion.videodetail.music.data;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$getMusicLiked$1", f = "MusicLikedFragmentViewModel.kt", l = {PsExtractor.PRIVATE_STREAM_1, 193, 195}, m = "invokeSuspend")
final class MusicLikedFragmentViewModel$getMusicLiked$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $from;
    int label;
    final /* synthetic */ MusicLikedFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicLikedFragmentViewModel$getMusicLiked$1(MusicLikedFragmentViewModel musicLikedFragmentViewModel, String str, Continuation<? super MusicLikedFragmentViewModel$getMusicLiked$1> continuation) {
        super(2, continuation);
        this.this$0 = musicLikedFragmentViewModel;
        this.$from = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MusicLikedFragmentViewModel$getMusicLiked$1(this.this$0, this.$from, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicLikedFragmentViewModel$getMusicLiked$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2 && i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        oj.a aVarA = this.this$0.A();
        this.label = 1;
        obj = aVarA.a(this);
        if (obj == objF) {
            return objF;
        }
        int iIntValue = ((Number) obj).intValue();
        this.this$0.f57726b.clear();
        kx.a.f68401a.a(this.this$0.t() + " --> getMusicLiked() --> 加载音乐收藏数据 --> count = " + iIntValue + " --> from = " + this.$from);
        if (iIntValue > 0) {
            MusicLikedFragmentViewModel musicLikedFragmentViewModel = this.this$0;
            this.label = 2;
            if (musicLikedFragmentViewModel.H(this) == objF) {
                return objF;
            }
        } else {
            MusicLikedFragmentViewModel musicLikedFragmentViewModel2 = this.this$0;
            this.label = 3;
            if (musicLikedFragmentViewModel2.I(this) == objF) {
                return objF;
            }
        }
        return Unit.f67061a;
    }
}
