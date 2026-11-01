package com.google.android.exoplayer2.util;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f27603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f27604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f27605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadLocal f27606d = new ThreadLocal();

    public l0(long j11) {
        g(j11);
    }

    public static long f(long j11) {
        return (j11 * 1000000) / 90000;
    }

    public static long i(long j11) {
        return (j11 * 90000) / 1000000;
    }

    public static long j(long j11) {
        return i(j11) % 8589934592L;
    }

    public synchronized long a(long j11) {
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (this.f27604b == C.TIME_UNSET) {
                long jLongValue = this.f27603a;
                if (jLongValue == 9223372036854775806L) {
                    jLongValue = ((Long) a.e((Long) this.f27606d.get())).longValue();
                }
                this.f27604b = jLongValue - j11;
                notifyAll();
            }
            this.f27605c = j11;
            return j11 + this.f27604b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long b(long j11) {
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j12 = this.f27605c;
            if (j12 != C.TIME_UNSET) {
                long jI = i(j12);
                long j13 = (TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE + jI) / 8589934592L;
                long j14 = ((j13 - 1) * 8589934592L) + j11;
                j11 += j13 * 8589934592L;
                if (Math.abs(j14 - jI) < Math.abs(j11 - jI)) {
                    j11 = j14;
                }
            }
            return a(f(j11));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long c() {
        long j11;
        j11 = this.f27603a;
        if (j11 == Long.MAX_VALUE || j11 == 9223372036854775806L) {
            j11 = C.TIME_UNSET;
        }
        return j11;
    }

    public synchronized long d() {
        long j11;
        try {
            j11 = this.f27605c;
        } catch (Throwable th2) {
            throw th2;
        }
        return j11 != C.TIME_UNSET ? j11 + this.f27604b : c();
    }

    public synchronized long e() {
        return this.f27604b;
    }

    public synchronized void g(long j11) {
        this.f27603a = j11;
        this.f27604b = j11 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f27605c = C.TIME_UNSET;
    }

    public synchronized void h(boolean z10, long j11) {
        try {
            a.g(this.f27603a == 9223372036854775806L);
            if (this.f27604b != C.TIME_UNSET) {
                return;
            }
            if (z10) {
                this.f27606d.set(Long.valueOf(j11));
            } else {
                while (this.f27604b == C.TIME_UNSET) {
                    wait();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
