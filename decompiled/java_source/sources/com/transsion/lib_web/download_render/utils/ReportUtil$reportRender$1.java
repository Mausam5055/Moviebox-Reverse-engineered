package com.transsion.lib_web.download_render.utils;

import android.os.Bundle;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import hj.i;
import java.util.LinkedHashMap;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.download_render.utils.ReportUtil$reportRender$1", f = "ReportUtil.kt", l = {}, m = "invokeSuspend")
final class ReportUtil$reportRender$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ RenderStage $renderStage;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportUtil$reportRender$1(RenderStage renderStage, Continuation<? super ReportUtil$reportRender$1> continuation) {
        super(2, continuation);
        this.$renderStage = renderStage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReportUtil$reportRender$1(this.$renderStage, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ReportUtil$reportRender$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        RenderStage renderStage = this.$renderStage;
        if (renderStage != null && renderStage.getNeedReport() && !renderStage.getReported()) {
            renderStage.setReported(true);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("url", renderStage.getUrl());
            linkedHashMap.put(EventConstants.KEY_SOURCE, renderStage.getSource());
            linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, renderStage.getType());
            linkedHashMap.put("rwd", Boxing.a(renderStage.getRenderWithDownload()));
            linkedHashMap.put("s1_score", Boxing.d(renderStage.getStage1().getScore()));
            linkedHashMap.put("s1_fdn", Boxing.d(renderStage.getStage1().getFileDataNull()));
            linkedHashMap.put("s1_fosa", Boxing.d(renderStage.getStage1().getFileOperateStatusAbort()));
            linkedHashMap.put("s1_fue", Boxing.d(renderStage.getStage1().getFileUnExist()));
            linkedHashMap.put("s1_exp", Boxing.d(renderStage.getStage1().getException()));
            linkedHashMap.put("s1_rt", Boxing.e(renderStage.getStage1().getRenderTime()));
            linkedHashMap.put("s1_hfr", Boxing.d(renderStage.getStage1().getHtmlFromRemote()));
            linkedHashMap.put("s2_score", Boxing.d(renderStage.getStage2().getScore()));
            linkedHashMap.put("s2_fdn", Boxing.d(renderStage.getStage2().getFileDataNull()));
            linkedHashMap.put("s2_fosa", Boxing.d(renderStage.getStage2().getFileOperateStatusAbort()));
            linkedHashMap.put("s2_fue", Boxing.d(renderStage.getStage2().getFileUnExist()));
            linkedHashMap.put("s2_exp", Boxing.d(renderStage.getStage2().getException()));
            linkedHashMap.put("s2_rt", Boxing.e(renderStage.getStage2().getRenderTime()));
            linkedHashMap.put("s2_hfr", Boxing.d(renderStage.getStage2().getHtmlFromRemote()));
            linkedHashMap.put("s3_score", Boxing.d(renderStage.getStage3().getScore()));
            linkedHashMap.put("s3_fdn", Boxing.d(renderStage.getStage3().getFileDataNull()));
            linkedHashMap.put("s3_fosa", Boxing.d(renderStage.getStage3().getFileOperateStatusAbort()));
            linkedHashMap.put("s3_fue", Boxing.d(renderStage.getStage3().getFileUnExist()));
            linkedHashMap.put("s3_exp", Boxing.d(renderStage.getStage3().getException()));
            linkedHashMap.put("s3_rt", Boxing.e(renderStage.getStage3().getRenderTime()));
            linkedHashMap.put("s3_hfr", Boxing.d(renderStage.getStage3().getHtmlFromRemote()));
            Bundle bundle = new Bundle();
            bundle.putString("ext", o.j(linkedHashMap));
            i.f64505a.h(EventConstants.ADDRESS_RENDER, bundle, 2337);
        }
        return Unit.f67061a;
    }
}
