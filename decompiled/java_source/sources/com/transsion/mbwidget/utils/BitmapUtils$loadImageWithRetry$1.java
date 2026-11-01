package com.transsion.mbwidget.utils;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.mbwidget.utils.BitmapUtils", f = "BitmapUtils.kt", l = {RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "loadImageWithRetry")
final class BitmapUtils$loadImageWithRetry$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BitmapUtils this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BitmapUtils$loadImageWithRetry$1(BitmapUtils bitmapUtils, Continuation<? super BitmapUtils$loadImageWithRetry$1> continuation) {
        super(continuation);
        this.this$0 = bitmapUtils;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.e(null, null, 0, this);
    }
}
