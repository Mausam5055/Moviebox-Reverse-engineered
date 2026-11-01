package androidx.collection;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class x0 {
    private Object[] array;
    private int[] hashes;
    private int size;

    @JvmOverloads
    public x0() {
        this(0, 1, null);
    }

    public x0(int i11) {
        this.hashes = i11 == 0 ? n.a.f70051a : new int[i11];
        this.array = i11 == 0 ? n.a.f70053c : new Object[i11 << 1];
    }

    public /* synthetic */ x0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    public x0(x0 x0Var) {
        this(0, 1, null);
        if (x0Var != null) {
            putAll(x0Var);
        }
    }

    private final int a(Object obj, int i11) {
        int i12 = this.size;
        if (i12 == 0) {
            return -1;
        }
        int iA = n.a.a(this.hashes, i12, i11);
        if (iA < 0 || Intrinsics.c(obj, this.array[iA << 1])) {
            return iA;
        }
        int i13 = iA + 1;
        while (i13 < i12 && this.hashes[i13] == i11) {
            if (Intrinsics.c(obj, this.array[i13 << 1])) {
                return i13;
            }
            i13++;
        }
        for (int i14 = iA - 1; i14 >= 0 && this.hashes[i14] == i11; i14--) {
            if (Intrinsics.c(obj, this.array[i14 << 1])) {
                return i14;
            }
        }
        return ~i13;
    }

    private final int c() {
        int i11 = this.size;
        if (i11 == 0) {
            return -1;
        }
        int iA = n.a.a(this.hashes, i11, 0);
        if (iA < 0 || this.array[iA << 1] == null) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.hashes[i12] == 0) {
            if (this.array[i12 << 1] == null) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.hashes[i13] == 0; i13--) {
            if (this.array[i13 << 1] == null) {
                return i13;
            }
        }
        return ~i12;
    }

    @JvmName
    public final int __restricted$indexOfValue(Object obj) {
        int i11 = this.size * 2;
        Object[] objArr = this.array;
        if (obj == null) {
            for (int i12 = 1; i12 < i11; i12 += 2) {
                if (objArr[i12] == null) {
                    return i12 >> 1;
                }
            }
            return -1;
        }
        for (int i13 = 1; i13 < i11; i13 += 2) {
            if (Intrinsics.c(obj, objArr[i13])) {
                return i13 >> 1;
            }
        }
        return -1;
    }

    public void clear() {
        if (this.size > 0) {
            this.hashes = n.a.f70051a;
            this.array = n.a.f70053c;
            this.size = 0;
        }
        if (this.size > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return __restricted$indexOfValue(obj) >= 0;
    }

    public void ensureCapacity(int i11) {
        int i12 = this.size;
        int[] iArr = this.hashes;
        if (iArr.length < i11) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, i11);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.array, i11 * 2);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.array = objArrCopyOf;
        }
        if (this.size != i12) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof x0) {
                if (size() != ((x0) obj).size()) {
                    return false;
                }
                x0 x0Var = (x0) obj;
                int i11 = this.size;
                for (int i12 = 0; i12 < i11; i12++) {
                    Object objKeyAt = keyAt(i12);
                    Object objValueAt = valueAt(i12);
                    Object obj2 = x0Var.get(objKeyAt);
                    if (objValueAt == null) {
                        if (obj2 != null || !x0Var.containsKey(objKeyAt)) {
                            return false;
                        }
                    } else if (!Intrinsics.c(objValueAt, obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || size() != ((Map) obj).size()) {
                return false;
            }
            int i13 = this.size;
            for (int i14 = 0; i14 < i13; i14++) {
                Object objKeyAt2 = keyAt(i14);
                Object objValueAt2 = valueAt(i14);
                Object obj3 = ((Map) obj).get(objKeyAt2);
                if (objValueAt2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(objKeyAt2)) {
                        return false;
                    }
                } else if (!Intrinsics.c(objValueAt2, obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public Object get(Object obj) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return this.array[(iIndexOfKey << 1) + 1];
        }
        return null;
    }

    public Object getOrDefault(Object obj, Object obj2) {
        int iIndexOfKey = indexOfKey(obj);
        return iIndexOfKey >= 0 ? this.array[(iIndexOfKey << 1) + 1] : obj2;
    }

    public int hashCode() {
        int[] iArr = this.hashes;
        Object[] objArr = this.array;
        int i11 = this.size;
        int i12 = 1;
        int i13 = 0;
        int iHashCode = 0;
        while (i13 < i11) {
            Object obj = objArr[i12];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i13];
            i13++;
            i12 += 2;
        }
        return iHashCode;
    }

    public int indexOfKey(Object obj) {
        return obj == null ? c() : a(obj, obj.hashCode());
    }

    public boolean isEmpty() {
        return this.size <= 0;
    }

    public Object keyAt(int i11) {
        boolean z10 = false;
        if (i11 >= 0 && i11 < this.size) {
            z10 = true;
        }
        if (!z10) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i11);
        }
        return this.array[i11 << 1];
    }

    public Object put(Object obj, Object obj2) {
        int i11 = this.size;
        int iHashCode = obj != null ? obj.hashCode() : 0;
        int iA = obj != null ? a(obj, iHashCode) : c();
        if (iA >= 0) {
            int i12 = (iA << 1) + 1;
            Object[] objArr = this.array;
            Object obj3 = objArr[i12];
            objArr[i12] = obj2;
            return obj3;
        }
        int i13 = ~iA;
        int[] iArr = this.hashes;
        if (i11 >= iArr.length) {
            int i14 = 8;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i14 = 4;
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i14);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.array, i14 << 1);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.array = objArrCopyOf;
            if (i11 != this.size) {
                throw new ConcurrentModificationException();
            }
        }
        if (i13 < i11) {
            int[] iArr2 = this.hashes;
            int i15 = i13 + 1;
            ArraysKt.l(iArr2, iArr2, i15, i13, i11);
            Object[] objArr2 = this.array;
            ArraysKt.n(objArr2, objArr2, i15 << 1, i13 << 1, this.size << 1);
        }
        int i16 = this.size;
        if (i11 == i16) {
            int[] iArr3 = this.hashes;
            if (i13 < iArr3.length) {
                iArr3[i13] = iHashCode;
                Object[] objArr3 = this.array;
                int i17 = i13 << 1;
                objArr3[i17] = obj;
                objArr3[i17 + 1] = obj2;
                this.size = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(x0 map) {
        Intrinsics.h(map, "map");
        int i11 = map.size;
        ensureCapacity(this.size + i11);
        if (this.size != 0) {
            for (int i12 = 0; i12 < i11; i12++) {
                put(map.keyAt(i12), map.valueAt(i12));
            }
        } else if (i11 > 0) {
            ArraysKt.l(map.hashes, this.hashes, 0, 0, i11);
            ArraysKt.n(map.array, this.array, 0, 0, i11 << 1);
            this.size = i11;
        }
    }

    public Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return removeAt(iIndexOfKey);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey < 0 || !Intrinsics.c(obj2, valueAt(iIndexOfKey))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public Object removeAt(int i11) {
        if (!(i11 >= 0 && i11 < this.size)) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i11);
        }
        Object[] objArr = this.array;
        int i12 = i11 << 1;
        Object obj = objArr[i12 + 1];
        int i13 = this.size;
        if (i13 <= 1) {
            clear();
        } else {
            int i14 = i13 - 1;
            int[] iArr = this.hashes;
            if (iArr.length <= 8 || i13 >= iArr.length / 3) {
                if (i11 < i14) {
                    int i15 = i11 + 1;
                    ArraysKt.l(iArr, iArr, i11, i15, i13);
                    Object[] objArr2 = this.array;
                    ArraysKt.n(objArr2, objArr2, i12, i15 << 1, i13 << 1);
                }
                Object[] objArr3 = this.array;
                int i16 = i14 << 1;
                objArr3[i16] = null;
                objArr3[i16 + 1] = null;
            } else {
                int i17 = i13 > 8 ? i13 + (i13 >> 1) : 8;
                int[] iArrCopyOf = Arrays.copyOf(iArr, i17);
                Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
                this.hashes = iArrCopyOf;
                Object[] objArrCopyOf = Arrays.copyOf(this.array, i17 << 1);
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
                this.array = objArrCopyOf;
                if (i13 != this.size) {
                    throw new ConcurrentModificationException();
                }
                if (i11 > 0) {
                    ArraysKt.l(iArr, this.hashes, 0, 0, i11);
                    ArraysKt.n(objArr, this.array, 0, 0, i12);
                }
                if (i11 < i14) {
                    int i18 = i11 + 1;
                    ArraysKt.l(iArr, this.hashes, i11, i18, i13);
                    ArraysKt.n(objArr, this.array, i12, i18 << 1, i13 << 1);
                }
            }
            if (i13 != this.size) {
                throw new ConcurrentModificationException();
            }
            this.size = i14;
        }
        return obj;
    }

    public Object replace(Object obj, Object obj2) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return setValueAt(iIndexOfKey, obj2);
        }
        return null;
    }

    public boolean replace(Object obj, Object obj2, Object obj3) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey < 0 || !Intrinsics.c(obj2, valueAt(iIndexOfKey))) {
            return false;
        }
        setValueAt(iIndexOfKey, obj3);
        return true;
    }

    public Object setValueAt(int i11, Object obj) {
        boolean z10 = false;
        if (i11 >= 0 && i11 < this.size) {
            z10 = true;
        }
        if (!z10) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i11);
        }
        int i12 = (i11 << 1) + 1;
        Object[] objArr = this.array;
        Object obj2 = objArr[i12];
        objArr[i12] = obj;
        return obj2;
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.size * 28);
        sb2.append('{');
        int i11 = this.size;
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            Object objKeyAt = keyAt(i12);
            if (objKeyAt != sb2) {
                sb2.append(objKeyAt);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            Object objValueAt = valueAt(i12);
            if (objValueAt != sb2) {
                sb2.append(objValueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public Object valueAt(int i11) {
        boolean z10 = false;
        if (i11 >= 0 && i11 < this.size) {
            z10 = true;
        }
        if (!z10) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i11);
        }
        return this.array[(i11 << 1) + 1];
    }
}
