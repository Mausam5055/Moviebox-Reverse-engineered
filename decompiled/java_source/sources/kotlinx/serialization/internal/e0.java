package kotlinx.serialization.internal;

import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f68126e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long[] f68127f = new long[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function2 f68129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f68130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long[] f68131d;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public e0(kotlinx.serialization.descriptors.f descriptor, Function2 readIfAbsent) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(readIfAbsent, "readIfAbsent");
        this.f68128a = descriptor;
        this.f68129b = readIfAbsent;
        int iE = descriptor.e();
        if (iE <= 64) {
            this.f68130c = iE != 64 ? (-1) << iE : 0L;
            this.f68131d = f68127f;
        } else {
            this.f68130c = 0L;
            this.f68131d = e(iE);
        }
    }

    private final void b(int i11) {
        int i12 = (i11 >>> 6) - 1;
        long[] jArr = this.f68131d;
        jArr[i12] = jArr[i12] | (1 << (i11 & 63));
    }

    private final int c() {
        int length = this.f68131d.length;
        int i11 = 0;
        while (i11 < length) {
            int i12 = i11 + 1;
            int i13 = i12 * 64;
            long j11 = this.f68131d[i11];
            while (j11 != -1) {
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j11);
                j11 |= 1 << iNumberOfTrailingZeros;
                int i14 = iNumberOfTrailingZeros + i13;
                if (((Boolean) this.f68129b.invoke(this.f68128a, Integer.valueOf(i14))).booleanValue()) {
                    this.f68131d[i11] = j11;
                    return i14;
                }
            }
            this.f68131d[i11] = j11;
            i11 = i12;
        }
        return -1;
    }

    private final long[] e(int i11) {
        long[] jArr = new long[(i11 - 1) >>> 6];
        if ((i11 & 63) != 0) {
            jArr[ArraysKt.a0(jArr)] = (-1) << i11;
        }
        return jArr;
    }

    public final void a(int i11) {
        if (i11 < 64) {
            this.f68130c |= 1 << i11;
        } else {
            b(i11);
        }
    }

    public final int d() {
        int iNumberOfTrailingZeros;
        int iE = this.f68128a.e();
        do {
            long j11 = this.f68130c;
            if (j11 == -1) {
                if (iE > 64) {
                    return c();
                }
                return -1;
            }
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j11);
            this.f68130c |= 1 << iNumberOfTrailingZeros;
        } while (!((Boolean) this.f68129b.invoke(this.f68128a, Integer.valueOf(iNumberOfTrailingZeros))).booleanValue());
        return iNumberOfTrailingZeros;
    }
}
