package com.transsion.ad.db.scene;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.db.scene.AdSceneLimitDao$DefaultImpls", f = "AdSceneLimitDao.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE, RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "getOrCreateSceneLimit")
final class AdSceneLimitDao$getOrCreateSceneLimit$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    AdSceneLimitDao$getOrCreateSceneLimit$1(Continuation<? super AdSceneLimitDao$getOrCreateSceneLimit$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AdSceneLimitDao.DefaultImpls.b(null, null, null, this);
    }
}
