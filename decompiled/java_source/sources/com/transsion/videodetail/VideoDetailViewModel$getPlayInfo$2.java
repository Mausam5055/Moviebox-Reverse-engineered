package com.transsion.videodetail;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.VideoDetailViewModel$getPlayInfo$2", f = "VideoDetailViewModel.kt", l = {277}, m = "invokeSuspend")
@SourceDebugExtension
final class VideoDetailViewModel$getPlayInfo$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $ep;
    final /* synthetic */ String $key;
    final /* synthetic */ int $se;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ VideoDetailMediaSource $videoDetailMediaSource;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ VideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoDetailViewModel$getPlayInfo$2(VideoDetailViewModel videoDetailViewModel, String str, int i11, int i12, VideoDetailMediaSource videoDetailMediaSource, String str2, Continuation<? super VideoDetailViewModel$getPlayInfo$2> continuation) {
        super(2, continuation);
        this.this$0 = videoDetailViewModel;
        this.$subjectId = str;
        this.$se = i11;
        this.$ep = i12;
        this.$videoDetailMediaSource = videoDetailMediaSource;
        this.$key = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        VideoDetailViewModel$getPlayInfo$2 videoDetailViewModel$getPlayInfo$2 = new VideoDetailViewModel$getPlayInfo$2(this.this$0, this.$subjectId, this.$se, this.$ep, this.$videoDetailMediaSource, this.$key, continuation);
        videoDetailViewModel$getPlayInfo$2.L$0 = obj;
        return videoDetailViewModel$getPlayInfo$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoDetailViewModel$getPlayInfo$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        String path;
        Object next;
        Object objA;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                VideoDetailViewModel videoDetailViewModel = this.this$0;
                String str = this.$subjectId;
                int i12 = this.$se;
                int i13 = this.$ep;
                Result.Companion companion = Result.INSTANCE;
                b bVarA = videoDetailViewModel.A();
                this.label = 1;
                objA = b.a.a(bVarA, str, i12, i13, null, this, 8, null);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objA = obj;
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objA);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        VideoDetailViewModel videoDetailViewModel2 = this.this$0;
        int i14 = this.$se;
        int i15 = this.$ep;
        VideoDetailMediaSource videoDetailMediaSource = this.$videoDetailMediaSource;
        String str2 = this.$key;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            androidx.p009lifecycle.b0 b0Var = videoDetailViewModel2.f57642c;
            VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) baseDto.getData();
            if (videoDetailStreamList != null) {
                videoDetailStreamList.setSe(i14);
                videoDetailStreamList.setEp(i15);
                DownloadBean downloadBean = videoDetailMediaSource.getDownloadBean();
                if (downloadBean != null && (path = downloadBean.getPath()) != null) {
                    Iterator<T> it = videoDetailStreamList.getStreams().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        VideoDetailStream videoDetailStream = (VideoDetailStream) next;
                        if (Intrinsics.c(videoDetailStream.getFormat(), "DEFAULT") && Intrinsics.c(videoDetailStream.getResolutions(), String.valueOf(downloadBean.getResolution()))) {
                            break;
                        }
                    }
                    VideoDetailStream videoDetailStream2 = (VideoDetailStream) next;
                    if (videoDetailStream2 != null) {
                        videoDetailStream2.setUrl(path);
                        lg.a.C0828a.f(lg.a.f68839a, "CommonInfo", "getVideoPlayInfo 有下载地址，直接用下载地址", false, 4, null);
                    }
                }
                VideoDetailStreamList videoDetailStreamList2 = (VideoDetailStreamList) baseDto.getData();
                if (videoDetailStreamList2 != null) {
                    videoDetailViewModel2.f57646g.put(str2, videoDetailStreamList2);
                }
            } else {
                videoDetailStreamList = null;
            }
            b0Var.q(videoDetailStreamList);
        }
        VideoDetailViewModel videoDetailViewModel3 = this.this$0;
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            videoDetailViewModel3.f57642c.q(null);
        }
        return Unit.f67061a;
    }
}
