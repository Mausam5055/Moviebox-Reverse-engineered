package com.transsion.member;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.member.MemberProvider", f = "MemberProvider.kt", l = {TTAdConstant.LANDING_PAGE_TYPE_CODE, TTAdConstant.PACKAGE_NAME_CODE}, m = "checkMemberRights")
final class MemberProvider$checkMemberRights$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MemberProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberProvider$checkMemberRights$1(MemberProvider memberProvider, Continuation<? super MemberProvider$checkMemberRights$1> continuation) {
        super(continuation);
        this.this$0 = memberProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.e(null, null, null, this);
    }
}
