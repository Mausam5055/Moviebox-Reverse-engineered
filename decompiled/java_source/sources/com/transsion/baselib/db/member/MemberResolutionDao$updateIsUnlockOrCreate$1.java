package com.transsion.baselib.db.member;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.baselib.db.member.MemberResolutionDao$DefaultImpls", f = "MemberResolutionDao.kt", l = {96, 104, 107}, m = "updateIsUnlockOrCreate")
final class MemberResolutionDao$updateIsUnlockOrCreate$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    MemberResolutionDao$updateIsUnlockOrCreate$1(Continuation<? super MemberResolutionDao$updateIsUnlockOrCreate$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MemberResolutionDao.DefaultImpls.a(null, null, 0, 0, false, this);
    }
}
