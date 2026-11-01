package kotlin.time;

import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0019\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\u0007H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001cH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\""}, d2 = {"Lkotlin/time/Instant;", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "epochSeconds", "", "nanosecondsOfSecond", "", "<init>", "(JI)V", "getEpochSeconds", "()J", "getNanosecondsOfSecond", "()I", "toEpochMilliseconds", "plus", "duration", "Lkotlin/time/Duration;", "plus-LRDsOJo", "(J)Lkotlin/time/Instant;", "minus", "minus-LRDsOJo", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "minus-UwyO8pc", "(Lkotlin/time/Instant;)J", "compareTo", "equals", "", "", "hashCode", "toString", "", "writeReplace", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
@ExperimentalTime
public final class Instant implements Comparable<Instant>, Serializable {
    private final long epochSeconds;
    private final int nanosecondsOfSecond;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Instant MIN = new Instant(-31557014167219200L, 0);
    private static final Instant MAX = new Instant(31556889864403199L, 999999999);

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u0013"}, d2 = {"Lkotlin/time/Instant$Companion;", "", "<init>", "()V", "", "epochSeconds", "nanosecondAdjustment", "Lkotlin/time/Instant;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(JJ)Lkotlin/time/Instant;", "", "a", "(JI)Lkotlin/time/Instant;", "MIN", "Lkotlin/time/Instant;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lkotlin/time/Instant;", "MAX", "c", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Instant a(long epochSeconds, int nanosecondAdjustment) {
            return b(epochSeconds, nanosecondAdjustment);
        }

        public final Instant b(long epochSeconds, long nanosecondAdjustment) {
            long j11 = nanosecondAdjustment / C.NANOS_PER_SECOND;
            if ((nanosecondAdjustment ^ C.NANOS_PER_SECOND) < 0 && j11 * C.NANOS_PER_SECOND != nanosecondAdjustment) {
                j11--;
            }
            long j12 = epochSeconds + j11;
            if ((epochSeconds ^ j12) < 0 && (j11 ^ epochSeconds) >= 0) {
                return epochSeconds > 0 ? Instant.INSTANCE.c() : Instant.INSTANCE.d();
            }
            if (j12 < -31557014167219200L) {
                return d();
            }
            if (j12 > 31556889864403199L) {
                return c();
            }
            long j13 = nanosecondAdjustment % C.NANOS_PER_SECOND;
            return new Instant(j12, (int) (j13 + ((((j13 ^ C.NANOS_PER_SECOND) & ((-j13) | j13)) >> 63) & C.NANOS_PER_SECOND)));
        }

        public final Instant c() {
            return Instant.MAX;
        }

        public final Instant d() {
            return Instant.MIN;
        }
    }

    public Instant(long j11, int i11) {
        this.epochSeconds = j11;
        this.nanosecondsOfSecond = i11;
        if (-31557014167219200L > j11 || j11 >= 31556889864403200L) {
            throw new IllegalArgumentException("Instant exceeds minimum or maximum instant");
        }
    }

    private final Object writeReplace() {
        return InstantJvmKt.a(this);
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant other) {
        Intrinsics.h(other, "other");
        int iK = Intrinsics.k(this.epochSeconds, other.epochSeconds);
        return iK != 0 ? iK : Intrinsics.j(this.nanosecondsOfSecond, other.nanosecondsOfSecond);
    }

    public boolean equals(Object other) {
        if (this != other) {
            if (other instanceof Instant) {
                Instant instant = (Instant) other;
                if (this.epochSeconds != instant.epochSeconds || this.nanosecondsOfSecond != instant.nanosecondsOfSecond) {
                }
            }
            return false;
        }
        return true;
    }

    public final long getEpochSeconds() {
        return this.epochSeconds;
    }

    public final int getNanosecondsOfSecond() {
        return this.nanosecondsOfSecond;
    }

    public int hashCode() {
        return s.a(this.epochSeconds) + (this.nanosecondsOfSecond * 51);
    }

    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public final Instant m465minusLRDsOJo(long duration) {
        return m467plusLRDsOJo(Duration.K(duration));
    }

    /* JADX INFO: renamed from: minus-UwyO8pc, reason: not valid java name */
    public final long m466minusUwyO8pc(Instant other) {
        Intrinsics.h(other, "other");
        Duration.Companion companion = Duration.INSTANCE;
        return Duration.G(DurationKt.t(this.epochSeconds - other.epochSeconds, DurationUnit.SECONDS), DurationKt.s(this.nanosecondsOfSecond - other.nanosecondsOfSecond, DurationUnit.NANOSECONDS));
    }

    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public final Instant m467plusLRDsOJo(long duration) {
        long jS = Duration.s(duration);
        int iU = Duration.u(duration);
        if (jS == 0 && iU == 0) {
            return this;
        }
        long j11 = this.epochSeconds;
        long j12 = j11 + jS;
        if ((j11 ^ j12) >= 0 || (jS ^ j11) < 0) {
            return INSTANCE.a(j12, this.nanosecondsOfSecond + iU);
        }
        return Duration.E(duration) ? MAX : MIN;
    }

    public final long toEpochMilliseconds() {
        long j11 = this.epochSeconds;
        long j12 = 1000;
        if (j11 >= 0) {
            if (j11 != 1) {
                if (j11 != 0) {
                    long j13 = j11 * 1000;
                    if (j13 / 1000 != j11) {
                        return Long.MAX_VALUE;
                    }
                    j12 = j13;
                } else {
                    j12 = 0;
                }
            }
            long j14 = this.nanosecondsOfSecond / 1000000;
            long j15 = j12 + j14;
            if ((j12 ^ j15) >= 0 || (j14 ^ j12) < 0) {
                return j15;
            }
            return Long.MAX_VALUE;
        }
        long j16 = j11 + 1;
        if (j16 != 1) {
            if (j16 != 0) {
                long j17 = j16 * 1000;
                if (j17 / 1000 != j16) {
                    return Long.MIN_VALUE;
                }
                j12 = j17;
            } else {
                j12 = 0;
            }
        }
        long j18 = (this.nanosecondsOfSecond / 1000000) - 1000;
        long j19 = j12 + j18;
        if ((j12 ^ j19) >= 0 || (j18 ^ j12) < 0) {
            return j19;
        }
        return Long.MIN_VALUE;
    }

    public String toString() {
        return InstantKt.b(this);
    }
}
