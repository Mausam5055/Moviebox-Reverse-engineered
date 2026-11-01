package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes.dex */
public final class MutableScatterSet extends ScatterSet {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2239e;

    private final class MutableSetWrapper extends ScatterSet.a implements Set, KMutableSet {
        public MutableSetWrapper() {
            super();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Object obj) {
            return MutableScatterSet.this.h(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            return MutableScatterSet.this.j(elements);
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            MutableScatterSet.this.m();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new MutableScatterSet$MutableSetWrapper$iterator$1(MutableScatterSet.this);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            return MutableScatterSet.this.x(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            int iC = MutableScatterSet.this.c();
            Iterator it = elements.iterator();
            while (it.hasNext()) {
                MutableScatterSet.this.t(it.next());
            }
            return iC != MutableScatterSet.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            MutableScatterSet mutableScatterSet = MutableScatterSet.this;
            long[] jArr = mutableScatterSet.f2246a;
            int length = jArr.length - 2;
            boolean z10 = false;
            if (length >= 0) {
                int i11 = 0;
                boolean z11 = false;
                while (true) {
                    long j11 = jArr[i11];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i12 = 8 - ((~(i11 - length)) >>> 31);
                        for (int i13 = 0; i13 < i12; i13++) {
                            if ((255 & j11) < 128) {
                                int i14 = (i11 << 3) + i13;
                                if (!elements.contains(mutableScatterSet.f2247b[i14])) {
                                    mutableScatterSet.y(i14);
                                    z11 = true;
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i12 != 8) {
                            return z11;
                        }
                    }
                    if (i11 != length) {
                        i11++;
                    } else {
                        z10 = z11;
                    }
                }
            }
            return z10;
        }
    }

    public MutableScatterSet() {
        this(0, 1, null);
    }

    public MutableScatterSet(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        s(v0.g(i11));
    }

    public /* synthetic */ MutableScatterSet(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final int o(Object obj) {
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 >>> 7;
        int i13 = i11 & 127;
        int i14 = this.f2248c;
        int i15 = i12 & i14;
        int i16 = 0;
        while (true) {
            long[] jArr = this.f2246a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j11 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j12 = i13;
            int i19 = i13;
            long j13 = j11 ^ (j12 * 72340172838076673L);
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                int iNumberOfTrailingZeros = (i15 + (Long.numberOfTrailingZeros(j14) >> 3)) & i14;
                if (Intrinsics.c(this.f2247b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j11) << 6) & j11 & (-9187201950435737472L)) != 0) {
                int iP = p(i12);
                if (this.f2239e == 0 && ((this.f2246a[iP >> 3] >> ((iP & 7) << 3)) & 255) != 254) {
                    k();
                    iP = p(i12);
                }
                this.f2249d++;
                int i20 = this.f2239e;
                long[] jArr2 = this.f2246a;
                int i21 = iP >> 3;
                long j15 = jArr2[i21];
                int i22 = (iP & 7) << 3;
                this.f2239e = i20 - (((j15 >> i22) & 255) == 128 ? 1 : 0);
                int i23 = this.f2248c;
                long j16 = ((~(255 << i22)) & j15) | (j12 << i22);
                jArr2[i21] = j16;
                jArr2[(((iP - 7) & i23) + (i23 & 7)) >> 3] = j16;
                return iP;
            }
            i16 += 8;
            i15 = (i15 + i16) & i14;
            i13 = i19;
        }
    }

    private final int p(int i11) {
        int i12 = this.f2248c;
        int i13 = i11 & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.f2246a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j11 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j12 = j11 & ((~j11) << 7) & (-9187201950435737472L);
            if (j12 != 0) {
                return (i13 + (Long.numberOfTrailingZeros(j12) >> 3)) & i12;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
    }

    private final void q() {
        this.f2239e = v0.c(b()) - this.f2249d;
    }

    private final void r(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2246a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        q();
    }

    private final void s(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2248c = iMax;
        r(iMax);
        this.f2247b = new Object[iMax];
    }

    public final boolean h(Object obj) {
        int iC = c();
        this.f2247b[o(obj)] = obj;
        return c() != iC;
    }

    public final boolean i(ScatterSet elements) {
        Intrinsics.h(elements, "elements");
        int iC = c();
        u(elements);
        return iC != c();
    }

    public final boolean j(Iterable elements) {
        Intrinsics.h(elements, "elements");
        int iC = c();
        v(elements);
        return iC != c();
    }

    public final void k() {
        if (this.f2248c <= 8 || Long.compare(ULong.b(ULong.b(this.f2249d) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2248c) * 25) ^ Long.MIN_VALUE) > 0) {
            z(v0.e(this.f2248c));
        } else {
            n();
        }
    }

    public final Set l() {
        return new MutableSetWrapper();
    }

    public final void m() {
        this.f2249d = 0;
        long[] jArr = this.f2246a;
        if (jArr != v0.f2353a) {
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2246a;
            int i11 = this.f2248c;
            int i12 = i11 >> 3;
            long j11 = 255 << ((i11 & 7) << 3);
            jArr2[i12] = (jArr2[i12] & (~j11)) | j11;
        }
        ArraysKt.w(this.f2247b, null, 0, this.f2248c);
        q();
    }

    public final void n() {
        int i11;
        long[] jArr = this.f2246a;
        int i12 = this.f2248c;
        Object[] objArr = this.f2247b;
        v0.a(jArr, i12);
        int i13 = 0;
        int i14 = 0;
        int iB = -1;
        while (i14 != i12) {
            int i15 = i14 >> 3;
            int i16 = (i14 & 7) << 3;
            long j11 = (jArr[i15] >> i16) & 255;
            if (j11 == 128) {
                iB = i14;
                i14++;
            } else {
                if (j11 == 254) {
                    Object obj = objArr[i14];
                    int iHashCode = (obj != null ? obj.hashCode() : i13) * (-862048943);
                    int i17 = iHashCode ^ (iHashCode << 16);
                    int i18 = i17 >>> 7;
                    int iP = p(i18);
                    int i19 = i18 & i12;
                    if (((iP - i19) & i12) / 8 == ((i14 - i19) & i12) / 8) {
                        jArr[i15] = (((long) (i17 & 127)) << i16) | ((~(255 << i16)) & jArr[i15]);
                        jArr[ArraysKt.a0(jArr)] = (jArr[i13] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i20 = iP >> 3;
                        long j12 = jArr[i20];
                        int i21 = (iP & 7) << 3;
                        if (((j12 >> i21) & 255) == 128) {
                            int i22 = i14;
                            jArr[i20] = (((long) (i17 & 127)) << i21) | (j12 & (~(255 << i21)));
                            jArr[i15] = (jArr[i15] & (~(255 << i16))) | (128 << i16);
                            objArr[iP] = objArr[i22];
                            objArr[i22] = null;
                            i11 = i22;
                            iB = i11;
                        } else {
                            int i23 = i14;
                            jArr[i20] = (((long) (i17 & 127)) << i21) | (j12 & (~(255 << i21)));
                            if (iB == -1) {
                                iB = v0.b(jArr, i23 + 1, i12);
                            }
                            objArr[iB] = objArr[iP];
                            objArr[iP] = objArr[i23];
                            objArr[i23] = objArr[iB];
                            i11 = i23 - 1;
                        }
                        jArr[ArraysKt.a0(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i14 = i11 + 1;
                        i13 = 0;
                    }
                }
                i14++;
            }
        }
        q();
    }

    public final void t(Object obj) {
        int iNumberOfTrailingZeros;
        int i11 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i12 = iHashCode ^ (iHashCode << 16);
        int i13 = i12 & 127;
        int i14 = this.f2248c;
        int i15 = i12 >>> 7;
        loop0: while (true) {
            int i16 = i15 & i14;
            long[] jArr = this.f2246a;
            int i17 = i16 >> 3;
            int i18 = (i16 & 7) << 3;
            long j11 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j12 = (((long) i13) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i16) & i14;
                if (Intrinsics.c(this.f2247b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            } else {
                i11 += 8;
                i15 = i16 + i11;
            }
        }
        if (iNumberOfTrailingZeros >= 0) {
            y(iNumberOfTrailingZeros);
        }
    }

    public final void u(ScatterSet elements) {
        Intrinsics.h(elements, "elements");
        Object[] objArr = elements.f2247b;
        long[] jArr = elements.f2246a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j11) < 128) {
                        w(objArr[(i11 << 3) + i13]);
                    }
                    j11 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    public final void v(Iterable elements) {
        Intrinsics.h(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            w(it.next());
        }
    }

    public final void w(Object obj) {
        this.f2247b[o(obj)] = obj;
    }

    public final boolean x(Object obj) {
        int iNumberOfTrailingZeros;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 & 127;
        int i13 = this.f2248c;
        int i14 = (i11 >>> 7) & i13;
        int i15 = 0;
        loop0: while (true) {
            long[] jArr = this.f2246a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j11 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j12 = (((long) i12) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i14) & i13;
                if (Intrinsics.c(this.f2247b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i15 += 8;
            i14 = (i14 + i15) & i13;
        }
        boolean z10 = iNumberOfTrailingZeros >= 0;
        if (z10) {
            y(iNumberOfTrailingZeros);
        }
        return z10;
    }

    public final void y(int i11) {
        this.f2249d--;
        long[] jArr = this.f2246a;
        int i12 = this.f2248c;
        int i13 = i11 >> 3;
        int i14 = (i11 & 7) << 3;
        long j11 = (jArr[i13] & (~(255 << i14))) | (254 << i14);
        jArr[i13] = j11;
        jArr[(((i11 - 7) & i12) + (i12 & 7)) >> 3] = j11;
        this.f2247b[i11] = null;
    }

    public final void z(int i11) {
        long[] jArr = this.f2246a;
        Object[] objArr = this.f2247b;
        int i12 = this.f2248c;
        s(i11);
        long[] jArr2 = this.f2246a;
        Object[] objArr2 = this.f2247b;
        int i13 = this.f2248c;
        for (int i14 = 0; i14 < i12; i14++) {
            if (((jArr[i14 >> 3] >> ((i14 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i14];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
                int i15 = iHashCode ^ (iHashCode << 16);
                int iP = p(i15 >>> 7);
                long j11 = i15 & 127;
                int i16 = iP >> 3;
                int i17 = (iP & 7) << 3;
                long j12 = (jArr2[i16] & (~(255 << i17))) | (j11 << i17);
                jArr2[i16] = j12;
                jArr2[(((iP - 7) & i13) + (i13 & 7)) >> 3] = j12;
                objArr2[iP] = obj;
            }
        }
    }
}
