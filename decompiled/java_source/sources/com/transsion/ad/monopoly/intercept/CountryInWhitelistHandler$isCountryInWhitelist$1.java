package com.transsion.ad.monopoly.intercept;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.intercept.CountryInWhitelistHandler", f = "CountryInWhitelistHandler.kt", l = {47}, m = "isCountryInWhitelist")
final class CountryInWhitelistHandler$isCountryInWhitelist$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CountryInWhitelistHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CountryInWhitelistHandler$isCountryInWhitelist$1(CountryInWhitelistHandler countryInWhitelistHandler, Continuation<? super CountryInWhitelistHandler$isCountryInWhitelist$1> continuation) {
        super(continuation);
        this.this$0 = countryInWhitelistHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.h(null, null, this);
    }
}
