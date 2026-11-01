package d1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static float a(float f11, float f12, float f13) {
        if (f11 < f12) {
            return f12;
        }
        return f11 > f13 ? f13 : f11;
    }

    public static int b(int i11, int i12, int i13) {
        if (i11 < i12) {
            return i12;
        }
        return i11 > i13 ? i13 : i11;
    }

    public static long c(long j11, long j12, long j13) {
        if (j11 < j12) {
            return j12;
        }
        return j11 > j13 ? j13 : j11;
    }
}
