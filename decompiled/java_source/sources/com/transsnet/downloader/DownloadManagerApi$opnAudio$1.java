package com.transsnet.downloader;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
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
@DebugMetadata(c = "com.transsnet.downloader.DownloadManagerApi$opnAudio$1", f = "DownloadManagerApi.kt", l = {945, 945}, m = "invokeSuspend")
final class DownloadManagerApi$opnAudio$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    Object L$0;
    int label;
    final /* synthetic */ DownloadManagerApi this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerApi$opnAudio$1(DownloadManagerApi downloadManagerApi, Context context, Continuation<? super DownloadManagerApi$opnAudio$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadManagerApi;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerApi$opnAudio$1(this.this$0, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerApi$opnAudio$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:38:0x0104  */
    /* JADX WARN: Code duplicated, block: B:39:0x010b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0115  */
    /* JADX WARN: Code duplicated, block: B:43:0x011c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0184  */
    /* JADX WARN: Code duplicated, block: B:50:0x0194  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AppCompatActivity appCompatActivity;
        Object objD;
        AudioBean audioBean;
        Object objC;
        AppCompatActivity appCompatActivity2;
        IFloatingApi iFloatingApiP0;
        IAudioApi iAudioApiO0;
        DownloadBean downloadBean;
        int se2;
        DownloadBean downloadBean2;
        int ep2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                appCompatActivity = (AppCompatActivity) this.L$0;
                ResultKt.b(obj);
                objD = obj;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                appCompatActivity2 = (AppCompatActivity) this.L$0;
                ResultKt.b(obj);
                objC = obj;
            }
            audioBean = (AudioBean) objC;
            appCompatActivity = appCompatActivity2;
            if (audioBean == null) {
                DownloadBean downloadBean3 = this.this$0.f58404e;
                Intrinsics.e(downloadBean3);
                String url = downloadBean3.getUrl();
                DownloadBean downloadBean4 = this.this$0.f58404e;
                Intrinsics.e(downloadBean4);
                String cover = downloadBean4.getCover();
                Long lE = Boxing.e(0L);
                DownloadBean downloadBean5 = this.this$0.f58404e;
                Intrinsics.e(downloadBean5);
                Long size = downloadBean5.getSize();
                DownloadBean downloadBean6 = this.this$0.f58404e;
                Intrinsics.e(downloadBean6);
                String url2 = downloadBean6.getUrl();
                DownloadBean downloadBean7 = this.this$0.f58404e;
                Intrinsics.e(downloadBean7);
                String name = downloadBean7.getName();
                downloadBean = this.this$0.f58404e;
                if (downloadBean != null) {
                    se2 = downloadBean.getSe();
                } else {
                    se2 = 0;
                }
                downloadBean2 = this.this$0.f58404e;
                if (downloadBean2 != null) {
                    ep2 = downloadBean2.getEp();
                } else {
                    ep2 = 0;
                }
                audioBean = new AudioBean(url, cover, lE, size, url2, name, null, null, null, null, null, null, null, null, null, null, 0, null, se2, ep2, 262080, null);
                DownloadBean downloadBean8 = this.this$0.f58404e;
                Intrinsics.e(downloadBean8);
                audioBean.setPostId(downloadBean8.getPostId());
                DownloadBean downloadBean9 = this.this$0.f58404e;
                Intrinsics.e(downloadBean9);
                audioBean.setResourceId(downloadBean9.getResourceId());
                DownloadBean downloadBean10 = this.this$0.f58404e;
                Intrinsics.e(downloadBean10);
                audioBean.setSubjectId(downloadBean10.getSubjectId());
                DownloadBean downloadBean11 = this.this$0.f58404e;
                Intrinsics.e(downloadBean11);
                audioBean.setGroupId(downloadBean11.getGroupId());
            }
            iFloatingApiP0 = this.this$0.p0();
            if (iFloatingApiP0 != null) {
                iFloatingApiP0.a(new WeakReference(appCompatActivity), audioBean);
            }
            iAudioApiO0 = this.this$0.o0();
            if (iAudioApiO0 != null) {
                IAudioApi.a.a(iAudioApiO0, audioBean, false, 2, null);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        if (this.this$0.f58404e == null) {
            return Unit.f67061a;
        }
        Context context = this.$context;
        appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return Unit.f67061a;
        }
        com.transsnet.downloader.manager.g gVarN0 = this.this$0.n0();
        DownloadBean downloadBean12 = this.this$0.f58404e;
        Intrinsics.e(downloadBean12);
        gVarN0.k(downloadBean12);
        jj.a aVarM0 = this.this$0.m0();
        DownloadBean downloadBean13 = this.this$0.f58404e;
        Intrinsics.e(downloadBean13);
        String resourceId = downloadBean13.getResourceId();
        if (resourceId == null) {
            DownloadBean downloadBean14 = this.this$0.f58404e;
            Intrinsics.e(downloadBean14);
            resourceId = downloadBean14.getUrl();
        }
        this.L$0 = appCompatActivity;
        this.label = 1;
        objD = aVarM0.d(resourceId, this);
        if (objD == objF) {
            return objF;
        }
        audioBean = (AudioBean) objD;
        if (audioBean == null) {
            jj.a aVarM1 = this.this$0.m0();
            DownloadBean downloadBean15 = this.this$0.f58404e;
            Intrinsics.e(downloadBean15);
            String url3 = downloadBean15.getUrl();
            this.L$0 = appCompatActivity;
            this.label = 2;
            objC = aVarM1.c(url3, this);
            if (objC == objF) {
                return objF;
            }
            appCompatActivity2 = appCompatActivity;
            audioBean = (AudioBean) objC;
            appCompatActivity = appCompatActivity2;
        }
        if (audioBean == null) {
            DownloadBean downloadBean16 = this.this$0.f58404e;
            Intrinsics.e(downloadBean16);
            String url4 = downloadBean16.getUrl();
            DownloadBean downloadBean17 = this.this$0.f58404e;
            Intrinsics.e(downloadBean17);
            String cover2 = downloadBean17.getCover();
            Long lE2 = Boxing.e(0L);
            DownloadBean downloadBean18 = this.this$0.f58404e;
            Intrinsics.e(downloadBean18);
            Long size2 = downloadBean18.getSize();
            DownloadBean downloadBean19 = this.this$0.f58404e;
            Intrinsics.e(downloadBean19);
            String url5 = downloadBean19.getUrl();
            DownloadBean downloadBean20 = this.this$0.f58404e;
            Intrinsics.e(downloadBean20);
            String name2 = downloadBean20.getName();
            downloadBean = this.this$0.f58404e;
            if (downloadBean != null) {
                se2 = downloadBean.getSe();
            } else {
                se2 = 0;
            }
            downloadBean2 = this.this$0.f58404e;
            if (downloadBean2 != null) {
                ep2 = downloadBean2.getEp();
            } else {
                ep2 = 0;
            }
            audioBean = new AudioBean(url4, cover2, lE2, size2, url5, name2, null, null, null, null, null, null, null, null, null, null, 0, null, se2, ep2, 262080, null);
            DownloadBean downloadBean21 = this.this$0.f58404e;
            Intrinsics.e(downloadBean21);
            audioBean.setPostId(downloadBean21.getPostId());
            DownloadBean downloadBean22 = this.this$0.f58404e;
            Intrinsics.e(downloadBean22);
            audioBean.setResourceId(downloadBean22.getResourceId());
            DownloadBean downloadBean110 = this.this$0.f58404e;
            Intrinsics.e(downloadBean110);
            audioBean.setSubjectId(downloadBean110.getSubjectId());
            DownloadBean downloadBean111 = this.this$0.f58404e;
            Intrinsics.e(downloadBean111);
            audioBean.setGroupId(downloadBean111.getGroupId());
        }
        iFloatingApiP0 = this.this$0.p0();
        if (iFloatingApiP0 != null) {
            iFloatingApiP0.a(new WeakReference(appCompatActivity), audioBean);
        }
        iAudioApiO0 = this.this$0.o0();
        if (iAudioApiO0 != null) {
            IAudioApi.a.a(iAudioApiO0, audioBean, false, 2, null);
        }
        return Unit.f67061a;
    }
}
