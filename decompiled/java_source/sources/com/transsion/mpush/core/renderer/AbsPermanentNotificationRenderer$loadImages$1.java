package com.transsion.mpush.core.renderer;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer", f = "AbsPermanentNotificationRenderer.kt", l = {226, 235}, m = "loadImages$suspendImpl")
final class AbsPermanentNotificationRenderer$loadImages$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AbsPermanentNotificationRenderer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsPermanentNotificationRenderer$loadImages$1(AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Continuation<? super AbsPermanentNotificationRenderer$loadImages$1> continuation) {
        super(continuation);
        this.this$0 = absPermanentNotificationRenderer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AbsPermanentNotificationRenderer.H(this.this$0, null, null, this);
    }
}
