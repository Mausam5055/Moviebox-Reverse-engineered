package com.transsion.player.longvideo.ui.dialog;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog", f = "LongVdPlayerConfigDialog.kt", l = {194}, m = "isIntercept")
final class LongVdPlayerConfigDialog$isIntercept$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LongVdPlayerConfigDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVdPlayerConfigDialog$isIntercept$1(LongVdPlayerConfigDialog longVdPlayerConfigDialog, Continuation<? super LongVdPlayerConfigDialog$isIntercept$1> continuation) {
        super(continuation);
        this.this$0 = longVdPlayerConfigDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.A0(null, null, this);
    }
}
