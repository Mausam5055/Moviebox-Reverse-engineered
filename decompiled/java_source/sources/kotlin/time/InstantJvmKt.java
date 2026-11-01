package kotlin.time;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0003\u0010\u0004\"\u001a\u0010\t\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u0012\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lkotlin/time/Instant;", "instant", "", "a", "(Lkotlin/time/Instant;)Ljava/lang/Object;", "Lkotlin/time/Clock;", "Lkotlin/time/Clock;", "getSystemClock$annotations", "()V", "systemClock", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InstantJvmKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Clock f67592a = PlatformImplementationsKt.f67195a.c();

    public static final Object a(Instant instant) {
        Intrinsics.h(instant, "instant");
        return new InstantSerialized(instant.getEpochSeconds(), instant.getNanosecondsOfSecond());
    }
}
