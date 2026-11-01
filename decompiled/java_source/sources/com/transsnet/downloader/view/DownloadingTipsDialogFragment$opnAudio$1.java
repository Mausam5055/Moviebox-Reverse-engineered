package com.transsnet.downloader.view;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.view.DownloadingTipsDialogFragment$opnAudio$1", f = "DownloadingTipsDialogFragment.kt", l = {Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE}, m = "invokeSuspend")
final class DownloadingTipsDialogFragment$opnAudio$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ DownloadingTipsDialogFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadingTipsDialogFragment$opnAudio$1(DownloadingTipsDialogFragment downloadingTipsDialogFragment, Continuation<? super DownloadingTipsDialogFragment$opnAudio$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadingTipsDialogFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadingTipsDialogFragment$opnAudio$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadingTipsDialogFragment$opnAudio$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objC;
        AppCompatActivity appCompatActivity;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Context context = this.this$0.getContext();
            AppCompatActivity appCompatActivity2 = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity2 == null) {
                return Unit.f67061a;
            }
            com.transsnet.downloader.manager.g gVarG0 = this.this$0.G0();
            DownloadBean downloadBean = this.this$0.data;
            Intrinsics.e(downloadBean);
            gVarG0.k(downloadBean);
            jj.a aVarF0 = this.this$0.F0();
            DownloadBean downloadBean2 = this.this$0.data;
            Intrinsics.e(downloadBean2);
            String url = downloadBean2.getUrl();
            this.L$0 = appCompatActivity2;
            this.label = 1;
            objC = aVarF0.c(url, this);
            if (objC == objF) {
                return objF;
            }
            appCompatActivity = appCompatActivity2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            appCompatActivity = (AppCompatActivity) this.L$0;
            ResultKt.b(obj);
            objC = obj;
        }
        AudioBean audioBean = (AudioBean) objC;
        if (audioBean == null) {
            DownloadBean downloadBean3 = this.this$0.data;
            Intrinsics.e(downloadBean3);
            String url2 = downloadBean3.getUrl();
            DownloadBean downloadBean4 = this.this$0.data;
            Intrinsics.e(downloadBean4);
            String cover = downloadBean4.getCover();
            DownloadBean downloadBean5 = this.this$0.data;
            Intrinsics.e(downloadBean5);
            Long size = downloadBean5.getSize();
            DownloadBean downloadBean6 = this.this$0.data;
            Intrinsics.e(downloadBean6);
            String url3 = downloadBean6.getUrl();
            DownloadBean downloadBean7 = this.this$0.data;
            Intrinsics.e(downloadBean7);
            String name = downloadBean7.getName();
            DownloadBean downloadBean8 = this.this$0.data;
            String subjectId = downloadBean8 != null ? downloadBean8.getSubjectId() : null;
            DownloadBean downloadBean9 = this.this$0.data;
            String postId = downloadBean9 != null ? downloadBean9.getPostId() : null;
            DownloadBean downloadBean10 = this.this$0.data;
            int se2 = downloadBean10 != null ? downloadBean10.getSe() : 0;
            DownloadBean downloadBean11 = this.this$0.data;
            int ep2 = downloadBean11 != null ? downloadBean11.getEp() : 0;
            DownloadBean downloadBean12 = this.this$0.data;
            audioBean = new AudioBean(url2, cover, Boxing.e(0L), size, url3, name, null, null, null, null, null, null, null, postId, subjectId, null, 0, downloadBean12 != null ? downloadBean12.getSubjectName() : null, se2, ep2, 106432, null);
            DownloadBean downloadBean13 = this.this$0.data;
            Intrinsics.e(downloadBean13);
            audioBean.setPostId(downloadBean13.getPostId());
            DownloadBean downloadBean14 = this.this$0.data;
            Intrinsics.e(downloadBean14);
            audioBean.setResourceId(downloadBean14.getResourceId());
            DownloadBean downloadBean15 = this.this$0.data;
            Intrinsics.e(downloadBean15);
            audioBean.setSubjectId(downloadBean15.getSubjectId());
            DownloadBean downloadBean16 = this.this$0.data;
            Intrinsics.e(downloadBean16);
            audioBean.setGroupId(downloadBean16.getGroupId());
        }
        IFloatingApi mFloatApi = this.this$0.getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.a(new WeakReference(appCompatActivity), audioBean);
        }
        IAudioApi mAudioApi = this.this$0.getMAudioApi();
        if (mAudioApi != null) {
            IAudioApi.a.a(mAudioApi, audioBean, false, 2, null);
        }
        return Unit.f67061a;
    }
}
