package ak;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f655a = new w();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f656b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f657c;

    private w() {
    }

    private final long a() {
        return System.currentTimeMillis();
    }

    private final long c(long j11) {
        long jA = a();
        while (jA <= j11) {
            jA = a();
        }
        return jA;
    }

    public final synchronized long b() {
        long jA;
        try {
            jA = a();
            long j11 = f656b;
            if (jA < j11) {
                throw new IllegalStateException(("系统时钟回拨，拒绝生成 ID（lastTimestamp=" + j11 + ", now=" + jA + "）").toString());
            }
            if (jA == j11) {
                long j12 = (f657c + 1) & 4095;
                f657c = j12;
                if (j12 == 0) {
                    jA = c(j11);
                }
            } else {
                f657c = 0L;
            }
            f656b = jA;
        } catch (Throwable th2) {
            throw th2;
        }
        return ((jA - 1704067200000L) << 22) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM | f657c;
    }
}
