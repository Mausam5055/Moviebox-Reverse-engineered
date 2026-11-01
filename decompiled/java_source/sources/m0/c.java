package m0;

import java.util.Map;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f69091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f69092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f69093c;

    @JvmOverloads
    public c() {
        this(0, 1, null);
    }

    public c(int i11) {
        if (i11 == 0) {
            this.f69091a = a.f69079a;
            this.f69092b = a.f69080b;
        } else {
            this.f69091a = new int[i11];
            this.f69092b = new Object[i11 << 1];
        }
        this.f69093c = 0;
    }

    public /* synthetic */ c(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    public final boolean a(Object obj) {
        return d(obj) >= 0;
    }

    public final Object b(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return this.f69092b[(iD << 1) + 1];
        }
        return null;
    }

    protected final int c(Object obj, int i11) {
        int i12 = this.f69093c;
        if (i12 == 0) {
            return -1;
        }
        int iA = a.a(this.f69091a, i12, i11);
        if (iA < 0 || Intrinsics.c(obj, this.f69092b[iA << 1])) {
            return iA;
        }
        int i13 = iA + 1;
        while (i13 < i12 && this.f69091a[i13] == i11) {
            if (Intrinsics.c(obj, this.f69092b[i13 << 1])) {
                return i13;
            }
            i13++;
        }
        for (int i14 = iA - 1; i14 >= 0 && this.f69091a[i14] == i11; i14--) {
            if (Intrinsics.c(obj, this.f69092b[i14 << 1])) {
                return i14;
            }
        }
        return ~i13;
    }

    public final int d(Object obj) {
        return obj == null ? e() : c(obj, obj.hashCode());
    }

    protected final int e() {
        int i11 = this.f69093c;
        if (i11 == 0) {
            return -1;
        }
        int iA = a.a(this.f69091a, i11, 0);
        if (iA < 0 || this.f69092b[iA << 1] == null) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.f69091a[i12] == 0) {
            if (this.f69092b[i12 << 1] == null) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.f69091a[i13] == 0; i13--) {
            if (this.f69092b[i13 << 1] == null) {
                return i13;
            }
        }
        return ~i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof c) {
                c cVar = (c) obj;
                int i11 = this.f69093c;
                if (i11 != cVar.f69093c) {
                    return false;
                }
                for (int i12 = 0; i12 < i11; i12++) {
                    Object objG = g(i12);
                    Object objH = h(i12);
                    Object objB = cVar.b(objG);
                    if (objH == null) {
                        if (objB != null || !cVar.a(objG)) {
                            return false;
                        }
                    } else if (!Intrinsics.c(objH, objB)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.f69093c != ((Map) obj).size()) {
                return false;
            }
            int i13 = this.f69093c;
            for (int i14 = 0; i14 < i13; i14++) {
                Object objG2 = g(i14);
                Object objH2 = h(i14);
                Object obj2 = ((Map) obj).get(objG2);
                if (objH2 == null) {
                    if (obj2 != null || !((Map) obj).containsKey(objG2)) {
                        return false;
                    }
                } else if (!Intrinsics.c(objH2, obj2)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final boolean f() {
        return this.f69093c <= 0;
    }

    public final Object g(int i11) {
        return this.f69092b[i11 << 1];
    }

    public final Object h(int i11) {
        return this.f69092b[(i11 << 1) + 1];
    }

    public int hashCode() {
        int[] iArr = this.f69091a;
        Object[] objArr = this.f69092b;
        int i11 = this.f69093c;
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

    public String toString() {
        if (f()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f69093c * 28);
        sb2.append('{');
        int i11 = this.f69093c;
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            Object objG = g(i12);
            if (objG != this) {
                sb2.append(objG);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            Object objH = h(i12);
            if (objH != this) {
                sb2.append(objH);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }
}
