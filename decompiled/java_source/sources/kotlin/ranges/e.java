package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.RandomKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class e extends d {
    public static double d(double d11, double d12) {
        return d11 < d12 ? d12 : d11;
    }

    public static float e(float f11, float f12) {
        return f11 < f12 ? f12 : f11;
    }

    public static int f(int i11, int i12) {
        return i11 < i12 ? i12 : i11;
    }

    public static long g(long j11, long j12) {
        return j11 < j12 ? j12 : j11;
    }

    public static float h(float f11, float f12) {
        return f11 > f12 ? f12 : f11;
    }

    public static int i(int i11, int i12) {
        return i11 > i12 ? i12 : i11;
    }

    public static long j(long j11, long j12) {
        return j11 > j12 ? j12 : j11;
    }

    public static double k(double d11, double d12, double d13) {
        if (d12 <= d13) {
            if (d11 < d12) {
                return d12;
            }
            return d11 > d13 ? d13 : d11;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d13 + " is less than minimum " + d12 + '.');
    }

    public static float l(float f11, float f12, float f13) {
        if (f12 <= f13) {
            if (f11 < f12) {
                return f12;
            }
            return f11 > f13 ? f13 : f11;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f13 + " is less than minimum " + f12 + '.');
    }

    public static int m(int i11, int i12, int i13) {
        if (i12 <= i13) {
            if (i11 < i12) {
                return i12;
            }
            return i11 > i13 ? i13 : i11;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i13 + " is less than minimum " + i12 + '.');
    }

    public static long n(long j11, long j12, long j13) {
        if (j12 <= j13) {
            if (j11 < j12) {
                return j12;
            }
            return j11 > j13 ? j13 : j11;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j13 + " is less than minimum " + j12 + '.');
    }

    public static Comparable o(Comparable comparable, ClosedFloatingPointRange range) {
        Intrinsics.h(comparable, "<this>");
        Intrinsics.h(range, "range");
        if (!range.isEmpty()) {
            if (!range.c(comparable, range.j()) || range.c(range.j(), comparable)) {
                return (!range.c(range.e(), comparable) || range.c(comparable, range.e())) ? comparable : range.e();
            }
            return range.j();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static IntProgression p(int i11, int i12) {
        return IntProgression.INSTANCE.a(i11, i12, -1);
    }

    public static int q(IntRange intRange, Random random) {
        Intrinsics.h(intRange, "<this>");
        Intrinsics.h(random, "random");
        try {
            return RandomKt.f(random, intRange);
        } catch (IllegalArgumentException e11) {
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    public static IntProgression r(IntProgression intProgression) {
        Intrinsics.h(intProgression, "<this>");
        return IntProgression.INSTANCE.a(intProgression.getLast(), intProgression.getFirst(), -intProgression.getStep());
    }

    public static IntProgression s(IntProgression intProgression, int i11) {
        Intrinsics.h(intProgression, "<this>");
        d.a(i11 > 0, Integer.valueOf(i11));
        IntProgression.Companion companion = IntProgression.INSTANCE;
        int iF = intProgression.getFirst();
        int iH = intProgression.getLast();
        if (intProgression.getStep() <= 0) {
            i11 = -i11;
        }
        return companion.a(iF, iH, i11);
    }

    public static IntRange t(int i11, int i12) {
        return i12 <= Integer.MIN_VALUE ? IntRange.INSTANCE.a() : new IntRange(i11, i12 - 1);
    }
}
