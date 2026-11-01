package com.transsnet.downloader.fragment;

import android.app.Activity;
import android.view.View;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadedBaseFragment$openMedia$1", f = "DownloadedBaseFragment.kt", l = {166, 166}, m = "invokeSuspend")
final class DownloadedBaseFragment$openMedia$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $item;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DownloadedBaseFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadedBaseFragment$openMedia$1(DownloadedBaseFragment downloadedBaseFragment, DownloadBean downloadBean, Continuation<? super DownloadedBaseFragment$openMedia$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadedBaseFragment;
        this.$item = downloadBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadedBaseFragment$openMedia$1(this.this$0, this.$item, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadedBaseFragment$openMedia$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0070  */
    /* JADX WARN: Code duplicated, block: B:27:0x0082 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0083  */
    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0091  */
    /* JADX WARN: Code duplicated, block: B:36:0x012d A[Catch: all -> 0x0146, TryCatch #0 {all -> 0x0146, blocks: (B:34:0x0123, B:36:0x012d, B:40:0x0153, B:39:0x0148), top: B:72:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0148 A[Catch: all -> 0x0146, TryCatch #0 {all -> 0x0146, blocks: (B:34:0x0123, B:36:0x012d, B:40:0x0153, B:39:0x0148), top: B:72:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0176  */
    /* JADX WARN: Code duplicated, block: B:48:0x018c  */
    /* JADX WARN: Code duplicated, block: B:61:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:63:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:66:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:68:0x01e3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [T, com.transsion.baselib.db.audio.AudioBean] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        Object objD;
        jj.a aVarQ0;
        T t11;
        Object objC;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        IAudioApi mAudioApi;
        IAudioApi mAudioApi2;
        IFloatingApi mFloatApi;
        DownloadBean downloadBean;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                objectRef = (Ref.ObjectRef) this.L$1;
                Ref.ObjectRef objectRef5 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                objectRef2 = objectRef5;
                objD = obj;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                objectRef3 = (Ref.ObjectRef) this.L$1;
                objectRef4 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                objC = obj;
            }
            objectRef2 = objectRef4;
            objectRef = objectRef3;
            t11 = (AudioBean) objC;
            objectRef.element = t11;
            if (objectRef2.element == 0) {
                ?? audioBean = new AudioBean(this.$item.getUrl(), this.$item.getCover(), Boxing.e(0L), this.$item.getSize(), this.$item.getPath(), this.$item.getName(), null, null, null, null, null, null, null, this.$item.getPostId(), this.$item.getSubjectId(), null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
                objectRef2.element = audioBean;
                audioBean.setPostId(this.$item.getPostId());
                ((AudioBean) objectRef2.element).setResourceId(this.$item.getResourceId());
                ((AudioBean) objectRef2.element).setSubjectId(this.$item.getSubjectId());
                ((AudioBean) objectRef2.element).setGroupId(this.$item.getGroupId());
                downloadBean = this.$item;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (downloadBean.getEpse() > 100) {
                        int epse = downloadBean.getEpse() / 100;
                        int epse2 = downloadBean.getEpse() % 100;
                        ((AudioBean) objectRef2.element).setSe(epse);
                        ((AudioBean) objectRef2.element).setEp(epse2);
                    } else {
                        ((AudioBean) objectRef2.element).setEp(downloadBean.getEpse());
                    }
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th2));
                }
            }
            if (!Intrinsics.c(((AudioBean) objectRef2.element).getUrl(), this.$item.getPath())) {
                ((AudioBean) objectRef2.element).setUrl(this.$item.getPath());
            }
            mAudioApi = this.this$0.getMAudioApi();
            if (mAudioApi == null && mAudioApi.f()) {
                IAudioApi mAudioApi3 = this.this$0.getMAudioApi();
                if (mAudioApi3 != null ? mAudioApi3.b((AudioBean) objectRef2.element) : false) {
                    IAudioApi mAudioApi4 = this.this$0.getMAudioApi();
                    if (mAudioApi4 != null) {
                        mAudioApi4.pause();
                    }
                } else {
                    IAudioApi mAudioApi5 = this.this$0.getMAudioApi();
                    if (mAudioApi5 != null) {
                        IAudioApi.a.a(mAudioApi5, (AudioBean) objectRef2.element, false, 2, null);
                    }
                }
            } else {
                mAudioApi2 = this.this$0.getMAudioApi();
                if (mAudioApi2 != null) {
                    IAudioApi.a.a(mAudioApi2, (AudioBean) objectRef2.element, false, 2, null);
                }
            }
            mFloatApi = this.this$0.getMFloatApi();
            if (mFloatApi != null) {
                View view = this.this$0.getView();
                mFloatApi.a(new WeakReference((Activity) (view != null ? view.getContext() : null)), (AudioBean) objectRef2.element);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        objectRef = new Ref.ObjectRef();
        jj.a aVarQ1 = this.this$0.Q0();
        if (aVarQ1 != null) {
            String resourceId = this.$item.getResourceId();
            if (resourceId == null) {
                resourceId = this.$item.getUrl();
            }
            this.L$0 = objectRef;
            this.L$1 = objectRef;
            this.label = 1;
            objD = aVarQ1.d(resourceId, this);
            if (objD == objF) {
                return objF;
            }
            objectRef2 = objectRef;
        } else {
            objectRef2 = objectRef;
        }
        aVarQ0 = this.this$0.Q0();
        if (aVarQ0 != null) {
            String url = this.$item.getUrl();
            this.L$0 = objectRef2;
            this.L$1 = objectRef;
            this.label = 2;
            objC = aVarQ0.c(url, this);
            if (objC == objF) {
                return objF;
            }
            objectRef3 = objectRef;
            objectRef4 = objectRef2;
            objectRef2 = objectRef4;
            objectRef = objectRef3;
            t11 = (AudioBean) objC;
        } else {
            t11 = 0;
        }
        objectRef.element = t11;
        if (objectRef2.element == 0) {
            ?? audioBean2 = new AudioBean(this.$item.getUrl(), this.$item.getCover(), Boxing.e(0L), this.$item.getSize(), this.$item.getPath(), this.$item.getName(), null, null, null, null, null, null, null, this.$item.getPostId(), this.$item.getSubjectId(), null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
            objectRef2.element = audioBean2;
            audioBean2.setPostId(this.$item.getPostId());
            ((AudioBean) objectRef2.element).setResourceId(this.$item.getResourceId());
            ((AudioBean) objectRef2.element).setSubjectId(this.$item.getSubjectId());
            ((AudioBean) objectRef2.element).setGroupId(this.$item.getGroupId());
            downloadBean = this.$item;
            Result.Companion companion3 = Result.INSTANCE;
            if (downloadBean.getEpse() > 100) {
                int epse3 = downloadBean.getEpse() / 100;
                int epse4 = downloadBean.getEpse() % 100;
                ((AudioBean) objectRef2.element).setSe(epse3);
                ((AudioBean) objectRef2.element).setEp(epse4);
            } else {
                ((AudioBean) objectRef2.element).setEp(downloadBean.getEpse());
            }
            Result.m454constructorimpl(Unit.f67061a);
        }
        if (!Intrinsics.c(((AudioBean) objectRef2.element).getUrl(), this.$item.getPath())) {
            ((AudioBean) objectRef2.element).setUrl(this.$item.getPath());
        }
        mAudioApi = this.this$0.getMAudioApi();
        if (mAudioApi == null) {
            mAudioApi2 = this.this$0.getMAudioApi();
            if (mAudioApi2 != null) {
                IAudioApi.a.a(mAudioApi2, (AudioBean) objectRef2.element, false, 2, null);
            }
        } else {
            mAudioApi2 = this.this$0.getMAudioApi();
            if (mAudioApi2 != null) {
                IAudioApi.a.a(mAudioApi2, (AudioBean) objectRef2.element, false, 2, null);
            }
        }
        mFloatApi = this.this$0.getMFloatApi();
        if (mFloatApi != null) {
            View view2 = this.this$0.getView();
            mFloatApi.a(new WeakReference((Activity) (view2 != null ? view2.getContext() : null)), (AudioBean) objectRef2.element);
        }
        return Unit.f67061a;
        AudioBean audioBean3 = (AudioBean) objD;
        t11 = audioBean3;
        if (audioBean3 == null) {
            aVarQ0 = this.this$0.Q0();
            if (aVarQ0 != null) {
                String url2 = this.$item.getUrl();
                this.L$0 = objectRef2;
                this.L$1 = objectRef;
                this.label = 2;
                objC = aVarQ0.c(url2, this);
                if (objC == objF) {
                    return objF;
                }
                objectRef3 = objectRef;
                objectRef4 = objectRef2;
                objectRef2 = objectRef4;
                objectRef = objectRef3;
                t11 = (AudioBean) objC;
            } else {
                t11 = 0;
            }
        }
        objectRef.element = t11;
        if (objectRef2.element == 0) {
            ?? audioBean4 = new AudioBean(this.$item.getUrl(), this.$item.getCover(), Boxing.e(0L), this.$item.getSize(), this.$item.getPath(), this.$item.getName(), null, null, null, null, null, null, null, this.$item.getPostId(), this.$item.getSubjectId(), null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
            objectRef2.element = audioBean4;
            audioBean4.setPostId(this.$item.getPostId());
            ((AudioBean) objectRef2.element).setResourceId(this.$item.getResourceId());
            ((AudioBean) objectRef2.element).setSubjectId(this.$item.getSubjectId());
            ((AudioBean) objectRef2.element).setGroupId(this.$item.getGroupId());
            downloadBean = this.$item;
            Result.Companion companion4 = Result.INSTANCE;
            if (downloadBean.getEpse() > 100) {
                int epse5 = downloadBean.getEpse() / 100;
                int epse6 = downloadBean.getEpse() % 100;
                ((AudioBean) objectRef2.element).setSe(epse5);
                ((AudioBean) objectRef2.element).setEp(epse6);
            } else {
                ((AudioBean) objectRef2.element).setEp(downloadBean.getEpse());
            }
            Result.m454constructorimpl(Unit.f67061a);
        }
        if (!Intrinsics.c(((AudioBean) objectRef2.element).getUrl(), this.$item.getPath())) {
            ((AudioBean) objectRef2.element).setUrl(this.$item.getPath());
        }
        mAudioApi = this.this$0.getMAudioApi();
        if (mAudioApi == null) {
            mAudioApi2 = this.this$0.getMAudioApi();
            if (mAudioApi2 != null) {
                IAudioApi.a.a(mAudioApi2, (AudioBean) objectRef2.element, false, 2, null);
            }
        } else {
            mAudioApi2 = this.this$0.getMAudioApi();
            if (mAudioApi2 != null) {
                IAudioApi.a.a(mAudioApi2, (AudioBean) objectRef2.element, false, 2, null);
            }
        }
        mFloatApi = this.this$0.getMFloatApi();
        if (mFloatApi != null) {
            View view3 = this.this$0.getView();
            mFloatApi.a(new WeakReference((Activity) (view3 != null ? view3.getContext() : null)), (AudioBean) objectRef2.element);
        }
        return Unit.f67061a;
    }
}
