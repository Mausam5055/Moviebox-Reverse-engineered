package com.transsion.ugcvideodetail.hepler;

import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsnet.downloader.manager.p;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.UGCVideoFloatManager$getPlayInfo$1", f = "UGCVideoFloatManager.kt", l = {Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE}, m = "invokeSuspend")
final class UGCVideoFloatManager$getPlayInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<UGCVideoPlayInfo, Unit> $callback;
    final /* synthetic */ String $ugcVideoId;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    UGCVideoFloatManager$getPlayInfo$1(String str, Function1<? super UGCVideoPlayInfo, Unit> function1, Continuation<? super UGCVideoFloatManager$getPlayInfo$1> continuation) {
        super(2, continuation);
        this.$ugcVideoId = str;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UGCVideoFloatManager$getPlayInfo$1 uGCVideoFloatManager$getPlayInfo$1 = new UGCVideoFloatManager$getPlayInfo$1(this.$ugcVideoId, this.$callback, continuation);
        uGCVideoFloatManager$getPlayInfo$1.L$0 = obj;
        return uGCVideoFloatManager$getPlayInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoFloatManager$getPlayInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00f8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:49:0x0103  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Function1<UGCVideoPlayInfo, Unit> function1;
        UGCVideoPlayStream uGCVideoPlayStream;
        BaseDto baseDto;
        Object obj2;
        UGCVideoPlayStream uGCVideoPlayStream2;
        DownloadBean downloadBean;
        a2 a2VarC;
        UGCVideoFloatManager$getPlayInfo$1$2$1$2 uGCVideoFloatManager$getPlayInfo$1$2$1$2;
        Object obj3;
        String path;
        Function1<UGCVideoPlayInfo, Unit> function2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else if (i11 == 2) {
                    uGCVideoPlayStream2 = (UGCVideoPlayStream) this.L$3;
                    baseDto = (BaseDto) this.L$2;
                    function1 = (Function1) this.L$1;
                    obj2 = this.L$0;
                    ResultKt.b(obj);
                    downloadBean = (DownloadBean) obj;
                    if (downloadBean != null && (path = downloadBean.getPath()) != null && Intrinsics.c(uGCVideoPlayStream2.getFormat(), "DEFAULT") && Intrinsics.c(uGCVideoPlayStream2.getResolutions(), String.valueOf(downloadBean.getResolution()))) {
                        uGCVideoPlayStream2.setUrl(path);
                        lg.a.f68839a.c("VideoFloat", "getVideoPlayInfo 有下载地址，直接用下载地址", true);
                    }
                    a2VarC = y0.c();
                    uGCVideoFloatManager$getPlayInfo$1$2$1$2 = new UGCVideoFloatManager$getPlayInfo$1$2$1$2(function1, baseDto, null);
                    this.L$0 = obj2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 3;
                    if (kotlinx.coroutines.i.g(a2VarC, uGCVideoFloatManager$getPlayInfo$1$2$1$2, this) == objF) {
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
            String str = this.$ugcVideoId;
            Result.Companion companion = Result.INSTANCE;
            rv.a aVarL = UGCVideoFloatManager.f56290b.l();
            this.label = 1;
            obj = rv.a.C0910a.i(aVarL, str, null, this, 2, null);
            if (obj == objF) {
                return objF;
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        String str2 = this.$ugcVideoId;
        function1 = this.$callback;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto2 = (BaseDto) objM454constructorimpl;
            UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) baseDto2.getData();
            if (uGCVideoPlayInfo != null && (uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(uGCVideoPlayInfo.getResources())) != null) {
                com.transsnet.downloader.manager.g gVarA = p.f59500a.a(Utils.a());
                this.L$0 = objM454constructorimpl;
                this.L$1 = function1;
                this.L$2 = baseDto2;
                this.L$3 = uGCVideoPlayStream;
                this.label = 2;
                Object objJ = gVarA.j(str2, this);
                if (objJ == objF) {
                    return objF;
                }
                baseDto = baseDto2;
                obj2 = objM454constructorimpl;
                obj = objJ;
                uGCVideoPlayStream2 = uGCVideoPlayStream;
                downloadBean = (DownloadBean) obj;
                if (downloadBean != null) {
                    uGCVideoPlayStream2.setUrl(path);
                    lg.a.f68839a.c("VideoFloat", "getVideoPlayInfo 有下载地址，直接用下载地址", true);
                }
                a2VarC = y0.c();
                uGCVideoFloatManager$getPlayInfo$1$2$1$2 = new UGCVideoFloatManager$getPlayInfo$1$2$1$2(function1, baseDto, null);
                this.L$0 = obj2;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 3;
                if (kotlinx.coroutines.i.g(a2VarC, uGCVideoFloatManager$getPlayInfo$1$2$1$2, this) == objF) {
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
