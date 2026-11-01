package v6;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class f {
    public static /* synthetic */ long a(long j11, long j12) {
        if (j12 < 0) {
            return (j11 ^ Long.MIN_VALUE) < (j12 ^ Long.MIN_VALUE) ? j11 : j11 - j12;
        }
        if (j11 >= 0) {
            return j11 % j12;
        }
        long j13 = j11 - ((((j11 >>> 1) / j12) << 1) * j12);
        if ((j13 ^ Long.MIN_VALUE) < (j12 ^ Long.MIN_VALUE)) {
            j12 = 0;
        }
        return j13 - j12;
    }
}
