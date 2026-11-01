package com.transsion.lib_web.download_render.utils;

import android.os.Bundle;
import com.blankj.utilcode.util.o;
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
@DebugMetadata(c = "com.transsion.lib_web.download_render.utils.ReportUtil$reportPageDownload$1", f = "ReportUtil.kt", l = {}, m = "invokeSuspend")
final class ReportUtil$reportPageDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $copyFiles;
    final /* synthetic */ long $costTime;
    final /* synthetic */ int $deleteFiles;
    final /* synthetic */ long $downloadFileSize;
    final /* synthetic */ int $downloadFiles;
    final /* synthetic */ int $downloadedFiles;
    final /* synthetic */ boolean $isInterceptor;
    final /* synthetic */ long $totalFileSize;
    final /* synthetic */ int $totalFiles;
    final /* synthetic */ String $url;
    final /* synthetic */ String $versionCode;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportUtil$reportPageDownload$1(String str, String str2, int i11, int i12, int i13, int i14, long j11, boolean z10, int i15, long j12, long j13, Continuation<? super ReportUtil$reportPageDownload$1> continuation) {
        super(2, continuation);
        this.$url = str;
        this.$versionCode = str2;
        this.$deleteFiles = i11;
        this.$copyFiles = i12;
        this.$downloadFiles = i13;
        this.$totalFiles = i14;
        this.$costTime = j11;
        this.$isInterceptor = z10;
        this.$downloadedFiles = i15;
        this.$totalFileSize = j12;
        this.$downloadFileSize = j13;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReportUtil$reportPageDownload$1(this.$url, this.$versionCode, this.$deleteFiles, this.$copyFiles, this.$downloadFiles, this.$totalFiles, this.$costTime, this.$isInterceptor, this.$downloadedFiles, this.$totalFileSize, this.$downloadFileSize, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ReportUtil$reportPageDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str = this.$url;
        String str2 = this.$versionCode;
        int i11 = this.$deleteFiles;
        int i12 = this.$copyFiles;
        int i13 = this.$downloadFiles;
        int i14 = this.$totalFiles;
        long j11 = this.$costTime;
        boolean z10 = this.$isInterceptor;
        int i15 = this.$downloadedFiles;
        long j12 = this.$totalFileSize;
        long j13 = this.$downloadFileSize;
        linkedHashMap.put("url", str);
        linkedHashMap.put("version", str2);
        linkedHashMap.put("rfs", Boxing.d(i11));
        linkedHashMap.put("cfs", Boxing.d(i12));
        linkedHashMap.put("dfs", Boxing.d(i13));
        linkedHashMap.put("tfs", Boxing.d(i14));
        linkedHashMap.put("ct", Boxing.e(j11));
        linkedHashMap.put("intercept", Boxing.a(z10));
        linkedHashMap.put("dedfs", Boxing.d(i15));
        linkedHashMap.put("tfsize", Boxing.e(j12));
        linkedHashMap.put("dedfsize", Boxing.e(j13));
        Bundle bundle = new Bundle();
        bundle.putString("ext", o.j(linkedHashMap));
        i.f64505a.h("files_download", bundle, 2337);
        return Unit.f67061a;
    }
}
