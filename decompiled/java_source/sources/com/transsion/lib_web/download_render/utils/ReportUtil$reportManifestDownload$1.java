package com.transsion.lib_web.download_render.utils;

import android.os.Bundle;
import com.blankj.utilcode.util.o;
import hj.i;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.download_render.utils.ReportUtil$reportManifestDownload$1", f = "ReportUtil.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class ReportUtil$reportManifestDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, DownloadData> $datas;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportUtil$reportManifestDownload$1(Map<String, DownloadData> map, Continuation<? super ReportUtil$reportManifestDownload$1> continuation) {
        super(2, continuation);
        this.$datas = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReportUtil$reportManifestDownload$1(this.$datas, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ReportUtil$reportManifestDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, DownloadData> entry : this.$datas.entrySet()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("url", entry.getKey());
            linkedHashMap.put("version", entry.getValue().getVersion());
            linkedHashMap.put("tfs", Boxing.d(entry.getValue().getTotalFiles()));
            linkedHashMap.put("tdedfs", Boxing.d(entry.getValue().getDownloadFiles()));
            arrayList.add(linkedHashMap);
        }
        Bundle bundle = new Bundle();
        bundle.putString("ext", o.j(MapsKt.j(TuplesKt.a("pageList", arrayList))));
        i.f64505a.h("pages_download", bundle, 2337);
        return Unit.f67061a;
    }
}
