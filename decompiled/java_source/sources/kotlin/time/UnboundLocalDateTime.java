package kotlin.time;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class UnboundLocalDateTime {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f67605h = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f67606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f67607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f67608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f67609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f67610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f67611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f67612g;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/time/UnboundLocalDateTime$Companion;", "", "<init>", "()V", "Lkotlin/time/Instant;", "instant", "Lkotlin/time/UnboundLocalDateTime;", "a", "(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UnboundLocalDateTime a(Instant instant) {
            long j11;
            Intrinsics.h(instant, "instant");
            long epochSeconds = instant.getEpochSeconds();
            long j12 = epochSeconds / 86400;
            if ((epochSeconds ^ 86400) < 0 && j12 * 86400 != epochSeconds) {
                j12--;
            }
            long j13 = epochSeconds % 86400;
            int i11 = (int) (j13 + (86400 & (((j13 ^ 86400) & ((-j13) | j13)) >> 63)));
            long j14 = (j12 + ((long) 719528)) - ((long) 60);
            if (j14 < 0) {
                long j15 = 146097;
                long j16 = ((j14 + 1) / j15) - 1;
                j11 = ((long) 400) * j16;
                j14 += (-j16) * j15;
            } else {
                j11 = 0;
            }
            long j17 = 400;
            long j18 = ((j17 * j14) + ((long) 591)) / ((long) 146097);
            long j19 = 365;
            long j20 = 4;
            long j21 = 100;
            long j22 = j14 - ((((j19 * j18) + (j18 / j20)) - (j18 / j21)) + (j18 / j17));
            if (j22 < 0) {
                j18--;
                j22 = j14 - ((((j19 * j18) + (j18 / j20)) - (j18 / j21)) + (j18 / j17));
            }
            int i12 = (int) j22;
            int i13 = ((i12 * 5) + 2) / 153;
            int i14 = (i12 - (((i13 * 306) + 5) / 10)) + 1;
            int i15 = i11 / 3600;
            int i16 = i11 - (i15 * 3600);
            int i17 = i16 / 60;
            return new UnboundLocalDateTime((int) (j18 + j11 + ((long) (i13 / 10))), ((i13 + 2) % 12) + 1, i14, i15, i17, i16 - (i17 * 60), instant.getNanosecondsOfSecond());
        }
    }

    public UnboundLocalDateTime(int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.f67606a = i11;
        this.f67607b = i12;
        this.f67608c = i13;
        this.f67609d = i14;
        this.f67610e = i15;
        this.f67611f = i16;
        this.f67612g = i17;
    }

    public final int a() {
        return this.f67608c;
    }

    public final int b() {
        return this.f67609d;
    }

    public final int c() {
        return this.f67610e;
    }

    public final int d() {
        return this.f67607b;
    }

    public final int e() {
        return this.f67612g;
    }

    public final int f() {
        return this.f67611f;
    }

    public final int g() {
        return this.f67606a;
    }

    public String toString() {
        return "UnboundLocalDateTime(" + this.f67606a + '-' + this.f67607b + '-' + this.f67608c + ' ' + this.f67609d + ':' + this.f67610e + ':' + this.f67611f + '.' + this.f67612g + ')';
    }
}
