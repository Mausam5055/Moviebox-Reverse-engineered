package com.transsion.baselib.db.video;

import androidx.core.view.InputDeviceCompat;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.baselib.db.video.UGCVideoDetailPlayDao$DefaultImpls", f = "UGCVideoDetailPlayDao.kt", l = {255, InputDeviceCompat.SOURCE_KEYBOARD, 265, 267, 278, 279}, m = "getHistory")
final class UGCVideoDetailPlayDao$getHistory$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    UGCVideoDetailPlayDao$getHistory$1(Continuation<? super UGCVideoDetailPlayDao$getHistory$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return UGCVideoDetailPlayDao.DefaultImpls.b(null, null, this);
    }
}
