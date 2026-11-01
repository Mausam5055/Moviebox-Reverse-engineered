package com.transsnet.downloader.ugc.util;

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
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.ugc.util.UGCDownloadOpenUtil$openSubjectAudio$1", f = "UGCDownloadOpenUtil.kt", l = {78, 78}, m = "invokeSuspend")
final class UGCDownloadOpenUtil$openSubjectAudio$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ DownloadBean $item;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCDownloadOpenUtil$openSubjectAudio$1(DownloadBean downloadBean, AppCompatActivity appCompatActivity, Continuation<? super UGCDownloadOpenUtil$openSubjectAudio$1> continuation) {
        super(2, continuation);
        this.$item = downloadBean;
        this.$activity = appCompatActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCDownloadOpenUtil$openSubjectAudio$1(this.$item, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCDownloadOpenUtil$openSubjectAudio$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x011b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0121  */
    /* JADX WARN: Code duplicated, block: B:44:0x012a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD;
        AudioBean audioBean;
        Object objC;
        UGCDownloadOpenUtil uGCDownloadOpenUtil;
        IAudioApi iAudioApiM;
        IAudioApi iAudioApiM2;
        IFloatingApi iFloatingApiN;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
                objD = obj;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objC = obj;
            }
            audioBean = (AudioBean) objC;
            if (audioBean == null) {
                String url = this.$item.getUrl();
                String cover = this.$item.getCover();
                Long size = this.$item.getSize();
                String url2 = this.$item.getUrl();
                String name = this.$item.getName();
                String subjectId = this.$item.getSubjectId();
                audioBean = new AudioBean(url, cover, Boxing.e(0L), size, url2, name, null, null, null, null, null, null, null, this.$item.getPostId(), subjectId, null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
                audioBean.setPostId(this.$item.getPostId());
                audioBean.setResourceId(this.$item.getResourceId());
                audioBean.setSubjectId(this.$item.getSubjectId());
                audioBean.setGroupId(this.$item.getGroupId());
            }
            uGCDownloadOpenUtil = UGCDownloadOpenUtil.f59842a;
            iAudioApiM = uGCDownloadOpenUtil.m();
            if (iAudioApiM == null && iAudioApiM.f()) {
                IAudioApi iAudioApiM3 = uGCDownloadOpenUtil.m();
                if (iAudioApiM3 != null ? iAudioApiM3.b(audioBean) : false) {
                    IAudioApi iAudioApiM4 = uGCDownloadOpenUtil.m();
                    if (iAudioApiM4 != null) {
                        iAudioApiM4.pause();
                    }
                } else {
                    IAudioApi iAudioApiM5 = uGCDownloadOpenUtil.m();
                    if (iAudioApiM5 != null) {
                        IAudioApi.a.a(iAudioApiM5, audioBean, false, 2, null);
                    }
                }
            } else {
                iAudioApiM2 = uGCDownloadOpenUtil.m();
                if (iAudioApiM2 != null) {
                    IAudioApi.a.a(iAudioApiM2, audioBean, false, 2, null);
                }
            }
            iFloatingApiN = uGCDownloadOpenUtil.n();
            if (iFloatingApiN != null) {
                iFloatingApiN.a(new WeakReference(this.$activity), audioBean);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        UGCDownloadOpenUtil uGCDownloadOpenUtil2 = UGCDownloadOpenUtil.f59842a;
        uGCDownloadOpenUtil2.l().k(this.$item);
        jj.a aVarK = uGCDownloadOpenUtil2.k();
        String resourceId = this.$item.getResourceId();
        if (resourceId == null) {
            resourceId = this.$item.getUrl();
        }
        this.label = 1;
        objD = aVarK.d(resourceId, this);
        if (objD == objF) {
            return objF;
        }
        audioBean = (AudioBean) objD;
        if (audioBean == null) {
            jj.a aVarK2 = UGCDownloadOpenUtil.f59842a.k();
            String url3 = this.$item.getUrl();
            this.label = 2;
            objC = aVarK2.c(url3, this);
            if (objC == objF) {
                return objF;
            }
            audioBean = (AudioBean) objC;
        }
        if (audioBean == null) {
            String url4 = this.$item.getUrl();
            String cover2 = this.$item.getCover();
            Long size2 = this.$item.getSize();
            String url5 = this.$item.getUrl();
            String name2 = this.$item.getName();
            String subjectId2 = this.$item.getSubjectId();
            audioBean = new AudioBean(url4, cover2, Boxing.e(0L), size2, url5, name2, null, null, null, null, null, null, null, this.$item.getPostId(), subjectId2, null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
            audioBean.setPostId(this.$item.getPostId());
            audioBean.setResourceId(this.$item.getResourceId());
            audioBean.setSubjectId(this.$item.getSubjectId());
            audioBean.setGroupId(this.$item.getGroupId());
        }
        uGCDownloadOpenUtil = UGCDownloadOpenUtil.f59842a;
        iAudioApiM = uGCDownloadOpenUtil.m();
        if (iAudioApiM == null) {
            iAudioApiM2 = uGCDownloadOpenUtil.m();
            if (iAudioApiM2 != null) {
                IAudioApi.a.a(iAudioApiM2, audioBean, false, 2, null);
            }
        } else {
            iAudioApiM2 = uGCDownloadOpenUtil.m();
            if (iAudioApiM2 != null) {
                IAudioApi.a.a(iAudioApiM2, audioBean, false, 2, null);
            }
        }
        iFloatingApiN = uGCDownloadOpenUtil.n();
        if (iFloatingApiN != null) {
            iFloatingApiN.a(new WeakReference(this.$activity), audioBean);
        }
        return Unit.f67061a;
    }
}
