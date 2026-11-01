package com.transsnet.downloader.adapter;

import android.text.TextUtils;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.room.api.IAudioApi;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.adapter.DownloadedHolder$initData$7", f = "DownloadedHolder.kt", l = {279}, m = "invokeSuspend")
final class DownloadedHolder$initData$7 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ n6.a $item;
    final /* synthetic */ int $position;
    int label;
    final /* synthetic */ DownloadedHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadedHolder$initData$7(n6.a aVar, DownloadedHolder downloadedHolder, int i11, Continuation<? super DownloadedHolder$initData$7> continuation) {
        super(2, continuation);
        this.$item = aVar;
        this.this$0 = downloadedHolder;
        this.$position = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadedHolder$initData$7(this.$item, this.this$0, this.$position, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadedHolder$initData$7) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    /* JADX WARN: Code duplicated, block: B:28:0x0136  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AudioBean audioBean;
        Object objC;
        IAudioApi iAudioApiB;
        IAudioApi iAudioApiB2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String url = ((DownloadBean) this.$item).getUrl();
            if (!TextUtils.isEmpty(url)) {
                jj.a aVarA = this.this$0.A();
                if (aVarA != null) {
                    this.label = 1;
                    objC = aVarA.c(url, this);
                    if (objC == objF) {
                        return objF;
                    }
                } else {
                    audioBean = null;
                }
                if (audioBean == null) {
                    audioBean = new AudioBean(((DownloadBean) this.$item).getUrl(), ((DownloadBean) this.$item).getCover(), Boxing.e(0L), ((DownloadBean) this.$item).getSize(), ((DownloadBean) this.$item).getPath(), ((DownloadBean) this.$item).getName(), null, null, null, null, null, null, null, null, null, null, 0, ((DownloadBean) this.$item).getSubjectName(), 0, 0, 917440, null);
                    audioBean.setPostId(((DownloadBean) this.$item).getPostId());
                    audioBean.setResourceId(((DownloadBean) this.$item).getResourceId());
                    audioBean.setSubjectId(((DownloadBean) this.$item).getSubjectId());
                    audioBean.setGroupId(((DownloadBean) this.$item).getGroupId());
                }
                lg.a.C0828a.f(lg.a.f68839a, "audioPlay", "registerAudioListener,adapterPosition = " + this.$position + ", name = " + ((DownloadBean) this.$item).getName() + ", audioStatus = " + ((DownloadBean) this.$item).getAudioStatus() + ", status = " + audioBean.getStatus(), false, 4, null);
                iAudioApiB = this.this$0.B();
                if (iAudioApiB == null && iAudioApiB.b(audioBean) && (iAudioApiB2 = this.this$0.B()) != null && iAudioApiB2.f()) {
                    audioBean.setStatus(3);
                    ((DownloadBean) this.$item).setAudioStatus(3);
                } else {
                    audioBean.setStatus(4);
                    ((DownloadBean) this.$item).setAudioStatus(4);
                }
                this.this$0.T((DownloadBean) this.$item, audioBean);
                this.this$0.P(audioBean.getReadProcess(), audioBean.getDuration(), audioBean.getStatus(), 1);
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        objC = obj;
        audioBean = (AudioBean) objC;
        if (audioBean == null) {
            audioBean = new AudioBean(((DownloadBean) this.$item).getUrl(), ((DownloadBean) this.$item).getCover(), Boxing.e(0L), ((DownloadBean) this.$item).getSize(), ((DownloadBean) this.$item).getPath(), ((DownloadBean) this.$item).getName(), null, null, null, null, null, null, null, null, null, null, 0, ((DownloadBean) this.$item).getSubjectName(), 0, 0, 917440, null);
            audioBean.setPostId(((DownloadBean) this.$item).getPostId());
            audioBean.setResourceId(((DownloadBean) this.$item).getResourceId());
            audioBean.setSubjectId(((DownloadBean) this.$item).getSubjectId());
            audioBean.setGroupId(((DownloadBean) this.$item).getGroupId());
        }
        lg.a.C0828a.f(lg.a.f68839a, "audioPlay", "registerAudioListener,adapterPosition = " + this.$position + ", name = " + ((DownloadBean) this.$item).getName() + ", audioStatus = " + ((DownloadBean) this.$item).getAudioStatus() + ", status = " + audioBean.getStatus(), false, 4, null);
        iAudioApiB = this.this$0.B();
        if (iAudioApiB == null) {
            audioBean.setStatus(4);
            ((DownloadBean) this.$item).setAudioStatus(4);
        } else {
            audioBean.setStatus(4);
            ((DownloadBean) this.$item).setAudioStatus(4);
        }
        this.this$0.T((DownloadBean) this.$item, audioBean);
        this.this$0.P(audioBean.getReadProcess(), audioBean.getDuration(), audioBean.getStatus(), 1);
        return Unit.f67061a;
    }
}
