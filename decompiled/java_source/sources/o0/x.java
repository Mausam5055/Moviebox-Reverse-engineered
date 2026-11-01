package o0;

import com.cloud.tmc.kernel.constants.TmcConstants;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x {
    public static final long a(float f11, long j11) {
        return e(j11, f11);
    }

    public static final long b(float f11) {
        return e(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE, f11);
    }

    public static final long c(int i11) {
        return e(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE, i11);
    }

    public static final boolean d(long j11) {
        return w.f(j11) == 0;
    }

    public static final long e(long j11, float f11) {
        return w.c(j11 | (((long) Float.floatToIntBits(f11)) & 4294967295L));
    }
}
