package com.transsion.usercenter.devicemanagement.repository;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.usercenter.devicemanagement.repository.DeviceManagementRepository", f = "DeviceManagementRepository.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE}, m = "getLinkedDevicesOrLocal")
final class DeviceManagementRepository$getLinkedDevicesOrLocal$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DeviceManagementRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeviceManagementRepository$getLinkedDevicesOrLocal$1(DeviceManagementRepository deviceManagementRepository, Continuation<? super DeviceManagementRepository$getLinkedDevicesOrLocal$1> continuation) {
        super(continuation);
        this.this$0 = deviceManagementRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(this);
    }
}
