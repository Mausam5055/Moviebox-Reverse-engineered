package com.transsion.videodetail.util;

import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import com.transsnet.downloader.manager.g;
import com.transsnet.downloader.manager.p;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.util.StreamFloatManager$getPlayInfo$1", f = "StreamFloatManager.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 227, 237}, m = "invokeSuspend")
@SourceDebugExtension
final class StreamFloatManager$getPlayInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<VideoDetailStreamList, Unit> $callback;
    final /* synthetic */ int $ep;
    final /* synthetic */ int $se;
    final /* synthetic */ String $subjectId;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    StreamFloatManager$getPlayInfo$1(String str, int i11, int i12, Function1<? super VideoDetailStreamList, Unit> function1, Continuation<? super StreamFloatManager$getPlayInfo$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.$se = i11;
        this.$ep = i12;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        StreamFloatManager$getPlayInfo$1 streamFloatManager$getPlayInfo$1 = new StreamFloatManager$getPlayInfo$1(this.$subjectId, this.$se, this.$ep, this.$callback, continuation);
        streamFloatManager$getPlayInfo$1.L$0 = obj;
        return streamFloatManager$getPlayInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StreamFloatManager$getPlayInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:48:0x0124 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x0125  */
    /* JADX WARN: Code duplicated, block: B:53:0x012f  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f8 A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Function1<VideoDetailStreamList, Unit> function1;
        BaseDto baseDto;
        VideoDetailStreamList videoDetailStreamList;
        Object obj2;
        VideoDetailStreamList videoDetailStreamList2;
        DownloadBean downloadBean;
        a2 a2VarC;
        StreamFloatManager$getPlayInfo$1$2$1$2 streamFloatManager$getPlayInfo$1$2$1$2;
        Object obj3;
        String path;
        Iterator<T> it;
        Object next;
        VideoDetailStream videoDetailStream;
        VideoDetailStream videoDetailStream2;
        Function1<VideoDetailStreamList, Unit> function2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else if (i11 == 2) {
                    videoDetailStreamList2 = (VideoDetailStreamList) this.L$4;
                    videoDetailStreamList = (VideoDetailStreamList) this.L$3;
                    baseDto = (BaseDto) this.L$2;
                    function1 = (Function1) this.L$1;
                    obj2 = this.L$0;
                    ResultKt.b(obj);
                    downloadBean = (DownloadBean) obj;
                    if (downloadBean != null && (path = downloadBean.getPath()) != null) {
                        it = videoDetailStreamList2.getStreams().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            videoDetailStream2 = (VideoDetailStream) next;
                            if (!Intrinsics.c(videoDetailStream2.getFormat(), "DEFAULT") && Intrinsics.c(videoDetailStream2.getResolutions(), String.valueOf(downloadBean.getResolution()))) {
                                break;
                            }
                        }
                        videoDetailStream = (VideoDetailStream) next;
                        if (videoDetailStream != null) {
                            videoDetailStream.setUrl(path);
                            lg.a.f68839a.c("VideoFloat", "getVideoPlayInfo 有下载地址，直接用下载地址", true);
                        }
                    }
                    a2VarC = y0.c();
                    streamFloatManager$getPlayInfo$1$2$1$2 = new StreamFloatManager$getPlayInfo$1$2$1$2(function1, baseDto, null);
                    this.L$0 = obj2;
                    this.L$1 = videoDetailStreamList;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.L$4 = null;
                    this.label = 3;
                    if (i.g(a2VarC, streamFloatManager$getPlayInfo$1$2$1$2, this) == objF) {
                        return objF;
                    }
                    obj3 = obj2;
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    obj3 = this.L$0;
                    ResultKt.b(obj);
                }
                objM454constructorimpl = obj3;
                function2 = this.$callback;
                if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                    function2.invoke(null);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            String str = this.$subjectId;
            int i12 = this.$se;
            int i13 = this.$ep;
            Result.Companion companion = Result.INSTANCE;
            com.transsion.videodetail.b bVarM = StreamFloatManager.f57873b.m();
            this.label = 1;
            obj = com.transsion.videodetail.b.a.a(bVarM, str, i12, i13, null, this, 8, null);
            if (obj == objF) {
                return objF;
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        int i14 = this.$se;
        int i15 = this.$ep;
        String str2 = this.$subjectId;
        Function1<VideoDetailStreamList, Unit> function3 = this.$callback;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto2 = (BaseDto) objM454constructorimpl;
            VideoDetailStreamList videoDetailStreamList3 = (VideoDetailStreamList) baseDto2.getData();
            if (videoDetailStreamList3 != null) {
                videoDetailStreamList3.setSe(i14);
                videoDetailStreamList3.setEp(i15);
                g gVarA = p.f59500a.a(Utils.a());
                this.L$0 = objM454constructorimpl;
                this.L$1 = function3;
                this.L$2 = baseDto2;
                this.L$3 = videoDetailStreamList3;
                this.L$4 = videoDetailStreamList3;
                this.label = 2;
                Object objU = gVarA.u(str2, i14, i15, this);
                if (objU == objF) {
                    return objF;
                }
                function1 = function3;
                baseDto = baseDto2;
                videoDetailStreamList = videoDetailStreamList3;
                obj2 = objM454constructorimpl;
                obj = objU;
                videoDetailStreamList2 = videoDetailStreamList;
                downloadBean = (DownloadBean) obj;
                if (downloadBean != null) {
                    it = videoDetailStreamList2.getStreams().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        videoDetailStream2 = (VideoDetailStream) next;
                        if (!Intrinsics.c(videoDetailStream2.getFormat(), "DEFAULT")) {
                        }
                    }
                    videoDetailStream = (VideoDetailStream) next;
                    if (videoDetailStream != null) {
                        videoDetailStream.setUrl(path);
                        lg.a.f68839a.c("VideoFloat", "getVideoPlayInfo 有下载地址，直接用下载地址", true);
                    }
                }
                a2VarC = y0.c();
                streamFloatManager$getPlayInfo$1$2$1$2 = new StreamFloatManager$getPlayInfo$1$2$1$2(function1, baseDto, null);
                this.L$0 = obj2;
                this.L$1 = videoDetailStreamList;
                this.L$2 = null;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 3;
                if (i.g(a2VarC, streamFloatManager$getPlayInfo$1$2$1$2, this) == objF) {
                    return objF;
                }
                obj3 = obj2;
                objM454constructorimpl = obj3;
            }
        }
        function2 = this.$callback;
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            function2.invoke(null);
        }
        return Unit.f67061a;
    }
}
