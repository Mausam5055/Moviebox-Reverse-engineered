package androidx.media3.common.util;

import android.os.SystemClock;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f10436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f10437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f10438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadLocal f10439d = new ThreadLocal();

    public p0(long j11) {
        i(j11);
    }

    public static long h(long j11) {
        return a1.e1(j11, 1000000L, 90000L);
    }

    public static long k(long j11) {
        return a1.e1(j11, 90000L, 1000000L);
    }

    public static long l(long j11) {
        return k(j11) % 8589934592L;
    }

    public synchronized long a(long j11) {
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (!g()) {
                long jLongValue = this.f10436a;
                if (jLongValue == 9223372036854775806L) {
                    jLongValue = ((Long) a.e((Long) this.f10439d.get())).longValue();
                }
                this.f10437b = jLongValue - j11;
                notifyAll();
            }
            this.f10438c = j11;
            return j11 + this.f10437b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long b(long j11) {
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j12 = this.f10438c;
            if (j12 != C.TIME_UNSET) {
                long jK = k(j12);
                long j13 = (TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE + jK) / 8589934592L;
                long j14 = ((j13 - 1) * 8589934592L) + j11;
                j11 += j13 * 8589934592L;
                if (Math.abs(j14 - jK) < Math.abs(j11 - jK)) {
                    j11 = j14;
                }
            }
            return a(h(j11));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long c(long j11) {
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j12 = this.f10438c;
        if (j12 != C.TIME_UNSET) {
            long jK = k(j12);
            long j13 = jK / 8589934592L;
            Long.signum(j13);
            long j14 = (j13 * 8589934592L) + j11;
            j11 += (j13 + 1) * 8589934592L;
            if (j14 >= jK) {
                j11 = j14;
            }
        }
        return a(h(j11));
    }

    public synchronized long d() {
        long j11;
        j11 = this.f10436a;
        if (j11 == Long.MAX_VALUE || j11 == 9223372036854775806L) {
            j11 = C.TIME_UNSET;
        }
        return j11;
    }

    public synchronized long e() {
        long j11;
        try {
            j11 = this.f10438c;
        } catch (Throwable th2) {
            throw th2;
        }
        return j11 != C.TIME_UNSET ? j11 + this.f10437b : d();
    }

    public synchronized long f() {
        return this.f10437b;
    }

    public synchronized boolean g() {
        return this.f10437b != C.TIME_UNSET;
    }

    public synchronized void i(long j11) {
        this.f10436a = j11;
        this.f10437b = j11 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f10438c = C.TIME_UNSET;
    }

    public synchronized void j(boolean z10, long j11, long j12) {
        try {
            a.g(this.f10436a == 9223372036854775806L);
            if (g()) {
                return;
            }
            if (z10) {
                this.f10439d.set(Long.valueOf(j11));
            } else {
                long jElapsedRealtime = 0;
                long j13 = j12;
                while (!g()) {
                    if (j12 == 0) {
                        wait();
                    } else {
                        a.g(j13 > 0);
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        wait(j13);
                        jElapsedRealtime += SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime >= j12 && !g()) {
                            throw new TimeoutException("TimestampAdjuster failed to initialize in " + j12 + " milliseconds");
                        }
                        j13 = j12 - jElapsedRealtime;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
