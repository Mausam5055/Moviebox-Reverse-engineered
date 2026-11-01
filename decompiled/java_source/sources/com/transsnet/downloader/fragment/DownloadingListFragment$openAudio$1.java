package com.transsnet.downloader.fragment;

import android.content.Context;
import android.view.View;
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

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadingListFragment$openAudio$1", f = "DownloadingListFragment.kt", l = {393, 393}, m = "invokeSuspend")
final class DownloadingListFragment$openAudio$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $item;
    Object L$0;
    int label;
    final /* synthetic */ DownloadingListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadingListFragment$openAudio$1(DownloadingListFragment downloadingListFragment, DownloadBean downloadBean, Continuation<? super DownloadingListFragment$openAudio$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadingListFragment;
        this.$item = downloadBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadingListFragment$openAudio$1(this.this$0, this.$item, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadingListFragment$openAudio$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0097  */
    /* JADX WARN: Code duplicated, block: B:51:0x014f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0157  */
    /* JADX WARN: Code duplicated, block: B:56:0x0162  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AppCompatActivity appCompatActivity;
        Object objD;
        AudioBean audioBean;
        Object objC;
        AppCompatActivity appCompatActivity2;
        IAudioApi mAudioApi;
        IAudioApi mAudioApi2;
        IFloatingApi mFloatApi;
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
                String url = this.$item.getUrl();
                String cover = this.$item.getCover();
                Long size = this.$item.getSize();
                String url2 = this.$item.getUrl();
                String name = this.$item.getName();
                String subjectId = this.$item.getSubjectId();
                AudioBean audioBean2 = new AudioBean(url, cover, Boxing.e(0L), size, url2, name, null, null, null, null, null, null, null, this.$item.getPostId(), subjectId, null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
                audioBean2.setPostId(this.$item.getPostId());
                audioBean2.setResourceId(this.$item.getResourceId());
                audioBean2.setSubjectId(this.$item.getSubjectId());
                audioBean2.setGroupId(this.$item.getGroupId());
                audioBean = audioBean2;
            }
            mAudioApi = this.this$0.getMAudioApi();
            if (mAudioApi == null && mAudioApi.f()) {
                IAudioApi mAudioApi3 = this.this$0.getMAudioApi();
                if (mAudioApi3 != null ? mAudioApi3.b(audioBean) : false) {
                    IAudioApi mAudioApi4 = this.this$0.getMAudioApi();
                    if (mAudioApi4 != null) {
                        mAudioApi4.pause();
                    }
                } else {
                    IAudioApi mAudioApi5 = this.this$0.getMAudioApi();
                    if (mAudioApi5 != null) {
                        IAudioApi.a.a(mAudioApi5, audioBean, false, 2, null);
                    }
                }
            } else {
                mAudioApi2 = this.this$0.getMAudioApi();
                if (mAudioApi2 != null) {
                    IAudioApi.a.a(mAudioApi2, audioBean, false, 2, null);
                }
            }
            mFloatApi = this.this$0.getMFloatApi();
            if (mFloatApi != null) {
                mFloatApi.a(new WeakReference(appCompatActivity), audioBean);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        View view = this.this$0.getView();
        Context context = view != null ? view.getContext() : null;
        appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return Unit.f67061a;
        }
        this.this$0.Y0().k(this.$item);
        jj.a aVarX0 = this.this$0.X0();
        String resourceId = this.$item.getResourceId();
        if (resourceId == null) {
            resourceId = this.$item.getUrl();
        }
        this.L$0 = appCompatActivity;
        this.label = 1;
        objD = aVarX0.d(resourceId, this);
        if (objD == objF) {
            return objF;
        }
        audioBean = (AudioBean) objD;
        if (audioBean == null) {
            jj.a aVarX1 = this.this$0.X0();
            String url3 = this.$item.getUrl();
            this.L$0 = appCompatActivity;
            this.label = 2;
            objC = aVarX1.c(url3, this);
            if (objC == objF) {
                return objF;
            }
            appCompatActivity2 = appCompatActivity;
            audioBean = (AudioBean) objC;
            appCompatActivity = appCompatActivity2;
        }
        if (audioBean == null) {
            String url4 = this.$item.getUrl();
            String cover2 = this.$item.getCover();
            Long size2 = this.$item.getSize();
            String url5 = this.$item.getUrl();
            String name2 = this.$item.getName();
            String subjectId2 = this.$item.getSubjectId();
            AudioBean audioBean3 = new AudioBean(url4, cover2, Boxing.e(0L), size2, url5, name2, null, null, null, null, null, null, null, this.$item.getPostId(), subjectId2, null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
            audioBean3.setPostId(this.$item.getPostId());
            audioBean3.setResourceId(this.$item.getResourceId());
            audioBean3.setSubjectId(this.$item.getSubjectId());
            audioBean3.setGroupId(this.$item.getGroupId());
            audioBean = audioBean3;
        }
        mAudioApi = this.this$0.getMAudioApi();
        if (mAudioApi == null) {
            mAudioApi2 = this.this$0.getMAudioApi();
            if (mAudioApi2 != null) {
                IAudioApi.a.a(mAudioApi2, audioBean, false, 2, null);
            }
        } else {
            mAudioApi2 = this.this$0.getMAudioApi();
            if (mAudioApi2 != null) {
                IAudioApi.a.a(mAudioApi2, audioBean, false, 2, null);
            }
        }
        mFloatApi = this.this$0.getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.a(new WeakReference(appCompatActivity), audioBean);
        }
        return Unit.f67061a;
    }
}
