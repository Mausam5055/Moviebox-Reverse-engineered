package com.cloud.tmc.kernel.annotation;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Target({ElementType.METHOD})
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0002\u0018\u00002\u00020\u0001B\n\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/cloud/tmc/kernel/annotation/ThreadType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lcom/cloud/tmc/kernel/executor/ExecutorType;", "()Lcom/cloud/tmc/kernel/executor/ExecutorType;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@kotlin.annotation.Target
@Retention(RetentionPolicy.RUNTIME)
@kotlin.annotation.Retention
public @interface ThreadType {
    ExecutorType value() default ExecutorType.SYNC;
}
