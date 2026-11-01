package kotlin.time;

import androidx.collection.s;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.AbstractLongTimeSource;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b'\u0018\u00002\u00020\u0001:\u0001\rB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H$¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u0011\u001a\u0004\b\u0012\u0010\b¨\u0006\u0014"}, d2 = {"Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/DurationUnit;", "unit", "<init>", "(Lkotlin/time/DurationUnit;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()J", "f", "Lkotlin/time/ComparableTimeMark;", "e", "()Lkotlin/time/ComparableTimeMark;", "a", "Lkotlin/time/DurationUnit;", "c", "()Lkotlin/time/DurationUnit;", "Lkotlin/Lazy;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "zero", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@WasExperimental
public abstract class AbstractLongTimeSource implements TimeSource.WithComparableMarks {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final DurationUnit unit;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy zero;

    private static final class a implements ComparableTimeMark {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f67578a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AbstractLongTimeSource f67579b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f67580c;

        private a(long j11, AbstractLongTimeSource timeSource, long j12) {
            Intrinsics.h(timeSource, "timeSource");
            this.f67578a = j11;
            this.f67579b = timeSource;
            this.f67580c = j12;
        }

        public /* synthetic */ a(long j11, AbstractLongTimeSource abstractLongTimeSource, long j12, DefaultConstructorMarker defaultConstructorMarker) {
            this(j11, abstractLongTimeSource, j12);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(ComparableTimeMark comparableTimeMark) {
            return ComparableTimeMark.DefaultImpls.a(this, comparableTimeMark);
        }

        @Override // kotlin.time.ComparableTimeMark
        public long c(ComparableTimeMark other) {
            Intrinsics.h(other, "other");
            if (other instanceof a) {
                a aVar = (a) other;
                if (Intrinsics.c(this.f67579b, aVar.f67579b)) {
                    return Duration.G(LongSaturatedMathKt.c(this.f67578a, aVar.f67578a, this.f67579b.getUnit()), Duration.F(this.f67580c, aVar.f67580c));
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && Intrinsics.c(this.f67579b, ((a) obj).f67579b) && Duration.l(c((ComparableTimeMark) obj), Duration.INSTANCE.c());
        }

        public int hashCode() {
            return (Duration.y(this.f67580c) * 37) + s.a(this.f67578a);
        }

        public String toString() {
            return "LongTimeMark(" + this.f67578a + DurationUnitKt__DurationUnitKt.f(this.f67579b.getUnit()) + " + " + ((Object) Duration.J(this.f67580c)) + ", " + this.f67579b + ')';
        }
    }

    public AbstractLongTimeSource(DurationUnit unit) {
        Intrinsics.h(unit, "unit");
        this.unit = unit;
        this.zero = LazyKt.b(new Function0() { // from class: zz.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(AbstractLongTimeSource.g(this.f79607a));
            }
        });
    }

    private final long b() {
        return f() - d();
    }

    private final long d() {
        return ((Number) this.zero.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long g(AbstractLongTimeSource abstractLongTimeSource) {
        return abstractLongTimeSource.f();
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    protected final DurationUnit getUnit() {
        return this.unit;
    }

    public ComparableTimeMark e() {
        return new a(b(), this, Duration.INSTANCE.c(), null);
    }

    protected abstract long f();
}
