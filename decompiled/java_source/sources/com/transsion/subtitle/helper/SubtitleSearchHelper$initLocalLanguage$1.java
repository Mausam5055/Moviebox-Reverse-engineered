package com.transsion.subtitle.helper;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.subtitle.helper.SubtitleSearchHelper", f = "SubtitleSearchHelper.kt", l = {163, 169}, m = "initLocalLanguage")
final class SubtitleSearchHelper$initLocalLanguage$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SubtitleSearchHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleSearchHelper$initLocalLanguage$1(SubtitleSearchHelper subtitleSearchHelper, Continuation<? super SubtitleSearchHelper$initLocalLanguage$1> continuation) {
        super(continuation);
        this.this$0 = subtitleSearchHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.f(this);
    }
}
