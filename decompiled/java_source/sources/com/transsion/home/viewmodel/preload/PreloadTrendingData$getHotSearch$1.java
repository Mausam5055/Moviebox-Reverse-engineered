package com.transsion.home.viewmodel.preload;

import com.blankj.utilcode.util.o;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.HotSubjectEntity;
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
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.preload.PreloadTrendingData$getHotSearch$1", f = "PreloadTrendingData.kt", l = {TTAdConstant.IMAGE_CODE}, m = "invokeSuspend")
final class PreloadTrendingData$getHotSearch$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PreloadTrendingData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PreloadTrendingData$getHotSearch$1(PreloadTrendingData preloadTrendingData, Continuation<? super PreloadTrendingData$getHotSearch$1> continuation) {
        super(2, continuation);
        this.this$0 = preloadTrendingData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PreloadTrendingData$getHotSearch$1 preloadTrendingData$getHotSearch$1 = new PreloadTrendingData$getHotSearch$1(this.this$0, continuation);
        preloadTrendingData$getHotSearch$1.L$0 = obj;
        return preloadTrendingData$getHotSearch$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PreloadTrendingData$getHotSearch$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        HotSubjectEntity hotSubjectEntityI;
        PreloadTrendingData preloadTrendingData;
        Object obj2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                PreloadTrendingData preloadTrendingData2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                ol.e eVar = preloadTrendingData2.f45892d;
                this.L$0 = preloadTrendingData2;
                this.label = 1;
                Object objA = ol.e.a.a(eVar, null, 2, this, 1, null);
                if (objA == objF) {
                    return objF;
                }
                preloadTrendingData = preloadTrendingData2;
                obj = objA;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                preloadTrendingData = (PreloadTrendingData) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            Object obj3 = null;
            obj3 = null;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                preloadTrendingData.H().n(baseDto.getData());
                String strJ = o.j(baseDto.getData());
                if (strJ != null) {
                    com.transsion.baselib.report.launch.b.f43370a.b().putString("hot_search_words", strJ);
                    obj2 = strJ;
                    obj3 = obj2;
                }
            } else {
                HotSubjectEntity hotSubjectEntityI2 = preloadTrendingData.I();
                if (hotSubjectEntityI2 != null) {
                    preloadTrendingData.H().n(hotSubjectEntityI2);
                    obj2 = hotSubjectEntityI2;
                    obj3 = obj2;
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(obj3);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        PreloadTrendingData preloadTrendingData3 = this.this$0;
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null && (hotSubjectEntityI = preloadTrendingData3.I()) != null) {
            preloadTrendingData3.H().n(hotSubjectEntityI);
        }
        return Unit.f67061a;
    }
}
