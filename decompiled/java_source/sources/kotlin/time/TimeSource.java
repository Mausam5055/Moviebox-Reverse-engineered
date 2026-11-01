package kotlin.time;

import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/time/TimeSource;", "", "WithComparableMarks", "Monotonic", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@WasExperimental
public interface TimeSource {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ Companion f67600a = new Companion();

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource$WithComparableMarks;", "<init>", "()V", "", "toString", "()Ljava/lang/String;", "ValueTimeMark", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Monotonic implements WithComparableMarks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Monotonic f67601a = new Monotonic();

        @SinceKotlin
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087@\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u00060\u0012j\u0002`\u00138\u0000X\u0080\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\u0088\u0001\u0016\u0092\u0001\u00060\u0012j\u0002`\u0013¨\u0006\u0017"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/ComparableTimeMark;", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "Lkotlin/time/Duration;", "f", "(JLkotlin/time/ComparableTimeMark;)J", "e", "(JJ)J", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "", "equals", "(Ljava/lang/Object;)Z", "", "Lkotlin/time/ValueTimeMarkReading;", "a", "J", "reading", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        @JvmInline
        @WasExperimental
        public static final class ValueTimeMark implements ComparableTimeMark {

            /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
            private final long reading;

            public static boolean b(long j11, Object obj) {
                return (obj instanceof ValueTimeMark) && j11 == ((ValueTimeMark) obj).getReading();
            }

            public static int d(long j11) {
                return s.a(j11);
            }

            public static final long e(long j11, long j12) {
                return MonotonicTimeSource.f67597a.a(j11, j12);
            }

            public static long f(long j11, ComparableTimeMark other) {
                Intrinsics.h(other, "other");
                if (other instanceof ValueTimeMark) {
                    return e(j11, ((ValueTimeMark) other).getReading());
                }
                throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) g(j11)) + " and " + other);
            }

            public static String g(long j11) {
                return "ValueTimeMark(reading=" + j11 + ')';
            }

            @Override // java.lang.Comparable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compareTo(ComparableTimeMark comparableTimeMark) {
                return ComparableTimeMark.DefaultImpls.a(this, comparableTimeMark);
            }

            @Override // kotlin.time.ComparableTimeMark
            public long c(ComparableTimeMark other) {
                Intrinsics.h(other, "other");
                return f(this.reading, other);
            }

            public boolean equals(Object other) {
                return b(this.reading, other);
            }

            /* JADX INFO: renamed from: h, reason: from getter */
            public final /* synthetic */ long getReading() {
                return this.reading;
            }

            public int hashCode() {
                return d(this.reading);
            }

            public String toString() {
                return g(this.reading);
            }
        }

        private Monotonic() {
        }

        public String toString() {
            return MonotonicTimeSource.f67597a.toString();
        }
    }

    @SinceKotlin
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/TimeSource;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @WasExperimental
    public interface WithComparableMarks extends TimeSource {
    }
}
