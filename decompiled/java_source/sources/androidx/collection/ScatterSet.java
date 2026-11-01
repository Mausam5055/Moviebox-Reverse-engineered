package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class ScatterSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f2247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2249d;

    public class a implements Set, KMappedMarker {
        public a() {
        }

        public int a() {
            return ScatterSet.this.f2249d;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return ScatterSet.this.a(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            ScatterSet scatterSet = ScatterSet.this;
            Iterator it = elements.iterator();
            while (it.hasNext()) {
                if (!scatterSet.a(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return ScatterSet.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public final /* bridge */ int size() {
            return a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray(Object[] array) {
            Intrinsics.h(array, "array");
            return CollectionToArray.b(this, array);
        }
    }

    private ScatterSet() {
        this.f2246a = v0.f2353a;
        this.f2247b = n.a.f70053c;
    }

    public /* synthetic */ ScatterSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ String g(ScatterSet scatterSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i12 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i12 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i12 & 4) == 0 ? charSequence3 : "";
        if ((i12 & 8) != 0) {
            i11 = -1;
        }
        int i13 = i11;
        if ((i12 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i12 & 32) != 0) {
            function1 = null;
        }
        return scatterSet.f(charSequence, charSequence5, charSequence6, i13, charSequence7, function1);
    }

    public final boolean a(Object obj) {
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
        return iNumberOfTrailingZeros >= 0;
    }

    public final int b() {
        return this.f2248c;
    }

    public final int c() {
        return this.f2249d;
    }

    public final boolean d() {
        return this.f2249d == 0;
    }

    public final boolean e() {
        return this.f2249d != 0;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x005e A[LOOP:0: B:14:0x0025->B:26:0x005e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0061 A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScatterSet)) {
            return false;
        }
        ScatterSet scatterSet = (ScatterSet) obj;
        if (scatterSet.c() != c()) {
            return false;
        }
        Object[] objArr = this.f2247b;
        long[] jArr = this.f2246a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128 && !scatterSet.a(objArr[(i11 << 3) + i13])) {
                            return false;
                        }
                        j11 >>= 8;
                    }
                    if (i12 == 8) {
                        if (i11 != length) {
                            i11++;
                        }
                    }
                } else if (i11 != length) {
                    i11++;
                }
            }
        }
        return true;
    }

    public final String f(CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) {
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.f2247b;
        long[] jArr = this.f2246a;
        int length = jArr.length - 2;
        if (length < 0) {
            sb2.append(postfix);
            break;
        }
        int i12 = 0;
        int i13 = 0;
        loop0: while (true) {
            long j11 = jArr[i12];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i14 = 8;
                int i15 = 8 - ((~(i12 - length)) >>> 31);
                for (int i16 = 0; i16 < i15; i16++) {
                    if ((j11 & 255) < 128) {
                        Object obj = objArr[(i12 << 3) + i16];
                        if (i13 == i11) {
                            sb2.append(truncated);
                            break loop0;
                        }
                        if (i13 != 0) {
                            sb2.append(separator);
                        }
                        if (function1 == null) {
                            sb2.append(obj);
                        } else {
                            sb2.append((CharSequence) function1.invoke(obj));
                        }
                        i13++;
                        i14 = 8;
                    }
                    j11 >>= i14;
                }
                if (i15 == i14) {
                }
                sb2.append(postfix);
                break;
            }
            if (i12 == length) {
                sb2.append(postfix);
                break;
            }
            i12++;
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public int hashCode() {
        Object[] objArr = this.f2247b;
        long[] jArr = this.f2246a;
        int length = jArr.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int iHashCode = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            Object obj = objArr[(i12 << 3) + i14];
                            iHashCode += obj != null ? obj.hashCode() : 0;
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        return iHashCode;
                    }
                }
                if (i12 != length) {
                    i12++;
                } else {
                    i11 = iHashCode;
                }
            }
        }
        return i11;
    }

    public String toString() {
        return g(this, null, "[", "]", 0, null, new Function1<Object, CharSequence>() { // from class: androidx.collection.ScatterSet.toString.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Object obj) {
                return obj == ScatterSet.this ? "(this)" : String.valueOf(obj);
            }
        }, 25, null);
    }
}
