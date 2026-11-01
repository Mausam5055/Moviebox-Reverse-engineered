package kotlin.annotation;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.annotation.ElementType;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;

/* JADX WARN: Method from annotation default annotation not found: value */
/* JADX INFO: loaded from: classes7.dex */
@java.lang.annotation.Target({ElementType.ANNOTATION_TYPE})
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/annotation/Retention;", "", "Lkotlin/annotation/AnnotationRetention;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "<init>", "(Lkotlin/annotation/AnnotationRetention;)V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Target
@java.lang.annotation.Retention(RetentionPolicy.RUNTIME)
public @interface Retention {
}
