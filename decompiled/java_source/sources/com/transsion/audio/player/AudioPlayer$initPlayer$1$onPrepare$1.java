package com.transsion.audio.player;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.player.AudioPlayer$initPlayer$1$onPrepare$1", f = "AudioPlayer.kt", l = {234}, m = "invokeSuspend")
final class AudioPlayer$initPlayer$1$onPrepare$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ AudioPlayer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AudioPlayer$initPlayer$1$onPrepare$1(AudioPlayer audioPlayer, Continuation<? super AudioPlayer$initPlayer$1$onPrepare$1> continuation) {
        super(2, continuation);
        this.this$0 = audioPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AudioPlayer$initPlayer$1$onPrepare$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AudioPlayer$initPlayer$1$onPrepare$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        com.transsion.player.orplayer.g gVarV;
        Long readProcess;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (this.this$0.t() != null) {
                AppDatabase.Companion companion = AppDatabase.INSTANCE;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                jj.a aVarO1 = companion.b(applicationA).o1();
                AudioBean audioBeanT = this.this$0.t();
                Intrinsics.e(audioBeanT);
                String audioUrl = audioBeanT.getAudioUrl();
                this.label = 1;
                obj = aVarO1.c(audioUrl, this);
                if (obj == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        AudioBean audioBean = (AudioBean) obj;
        long jLongValue = (audioBean == null || (readProcess = audioBean.getReadProcess()) == null) ? 0L : readProcess.longValue();
        if ((audioBean == null || audioBean.getStatus() != 6) && jLongValue > 0 && (gVarV = this.this$0.v()) != null) {
            gVarV.seekTo(jLongValue);
        }
        return Unit.f67061a;
    }
}
