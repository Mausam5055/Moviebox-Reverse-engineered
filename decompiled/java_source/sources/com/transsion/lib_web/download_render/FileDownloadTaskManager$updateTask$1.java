package com.transsion.lib_web.download_render;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.lib_web.download_render.FileDownloadTaskManager", f = "FileDownloadTaskManager.kt", l = {256}, m = "updateTask")
final class FileDownloadTaskManager$updateTask$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FileDownloadTaskManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileDownloadTaskManager$updateTask$1(FileDownloadTaskManager fileDownloadTaskManager, Continuation<? super FileDownloadTaskManager$updateTask$1> continuation) {
        super(continuation);
        this.this$0 = fileDownloadTaskManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m(null, this);
    }
}
