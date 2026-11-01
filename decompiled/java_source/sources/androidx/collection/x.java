package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class x implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ boolean f2358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ long[] f2359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f2360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ int f2361d;

    @JvmOverloads
    public x() {
        this(0, 1, null);
    }

    public x(int i11) {
        if (i11 == 0) {
            this.f2359b = n.a.f70052b;
            this.f2360c = n.a.f70053c;
        } else {
            int iF = n.a.f(i11);
            this.f2359b = new long[iF];
            this.f2360c = new Object[iF];
        }
    }

    public /* synthetic */ x(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 10 : i11);
    }

    public void a(long j11, Object obj) {
        int i11 = this.f2361d;
        if (i11 != 0 && j11 <= this.f2359b[i11 - 1]) {
            k(j11, obj);
            return;
        }
        if (this.f2358a) {
            long[] jArr = this.f2359b;
            if (i11 >= jArr.length) {
                Object[] objArr = this.f2360c;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj2 = objArr[i13];
                    if (obj2 != y.f2362a) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj2;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                this.f2358a = false;
                this.f2361d = i12;
            }
        }
        int i14 = this.f2361d;
        if (i14 >= this.f2359b.length) {
            int iF = n.a.f(i14 + 1);
            long[] jArrCopyOf = Arrays.copyOf(this.f2359b, iF);
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f2359b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2360c, iF);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2360c = objArrCopyOf;
        }
        this.f2359b[i14] = j11;
        this.f2360c[i14] = obj;
        this.f2361d = i14 + 1;
    }

    public void b() {
        int i11 = this.f2361d;
        Object[] objArr = this.f2360c;
        for (int i12 = 0; i12 < i11; i12++) {
            objArr[i12] = null;
        }
        this.f2361d = 0;
        this.f2358a = false;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public x clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        Intrinsics.f(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        x xVar = (x) objClone;
        xVar.f2359b = (long[]) this.f2359b.clone();
        xVar.f2360c = (Object[]) this.f2360c.clone();
        return xVar;
    }

    public boolean d(long j11) {
        return g(j11) >= 0;
    }

    public Object e(long j11) {
        int iB = n.a.b(this.f2359b, this.f2361d, j11);
        if (iB < 0 || this.f2360c[iB] == y.f2362a) {
            return null;
        }
        return this.f2360c[iB];
    }

    public Object f(long j11, Object obj) {
        int iB = n.a.b(this.f2359b, this.f2361d, j11);
        return (iB < 0 || this.f2360c[iB] == y.f2362a) ? obj : this.f2360c[iB];
    }

    public int g(long j11) {
        if (this.f2358a) {
            int i11 = this.f2361d;
            long[] jArr = this.f2359b;
            Object[] objArr = this.f2360c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != y.f2362a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f2358a = false;
            this.f2361d = i12;
        }
        return n.a.b(this.f2359b, this.f2361d, j11);
    }

    public boolean i() {
        return n() == 0;
    }

    public long j(int i11) {
        if (!(i11 >= 0 && i11 < this.f2361d)) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i11);
        }
        if (this.f2358a) {
            int i12 = this.f2361d;
            long[] jArr = this.f2359b;
            Object[] objArr = this.f2360c;
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++) {
                Object obj = objArr[i14];
                if (obj != y.f2362a) {
                    if (i14 != i13) {
                        jArr[i13] = jArr[i14];
                        objArr[i13] = obj;
                        objArr[i14] = null;
                    }
                    i13++;
                }
            }
            this.f2358a = false;
            this.f2361d = i13;
        }
        return this.f2359b[i11];
    }

    public void k(long j11, Object obj) {
        int iB = n.a.b(this.f2359b, this.f2361d, j11);
        if (iB >= 0) {
            this.f2360c[iB] = obj;
            return;
        }
        int i11 = ~iB;
        if (i11 < this.f2361d && this.f2360c[i11] == y.f2362a) {
            this.f2359b[i11] = j11;
            this.f2360c[i11] = obj;
            return;
        }
        if (this.f2358a) {
            int i12 = this.f2361d;
            long[] jArr = this.f2359b;
            if (i12 >= jArr.length) {
                Object[] objArr = this.f2360c;
                int i13 = 0;
                for (int i14 = 0; i14 < i12; i14++) {
                    Object obj2 = objArr[i14];
                    if (obj2 != y.f2362a) {
                        if (i14 != i13) {
                            jArr[i13] = jArr[i14];
                            objArr[i13] = obj2;
                            objArr[i14] = null;
                        }
                        i13++;
                    }
                }
                this.f2358a = false;
                this.f2361d = i13;
                i11 = ~n.a.b(this.f2359b, i13, j11);
            }
        }
        int i15 = this.f2361d;
        if (i15 >= this.f2359b.length) {
            int iF = n.a.f(i15 + 1);
            long[] jArrCopyOf = Arrays.copyOf(this.f2359b, iF);
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f2359b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2360c, iF);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2360c = objArrCopyOf;
        }
        int i16 = this.f2361d;
        if (i16 - i11 != 0) {
            long[] jArr2 = this.f2359b;
            int i17 = i11 + 1;
            ArraysKt.m(jArr2, jArr2, i17, i11, i16);
            Object[] objArr2 = this.f2360c;
            ArraysKt.n(objArr2, objArr2, i17, i11, this.f2361d);
        }
        this.f2359b[i11] = j11;
        this.f2360c[i11] = obj;
        this.f2361d++;
    }

    public void l(long j11) {
        int iB = n.a.b(this.f2359b, this.f2361d, j11);
        if (iB < 0 || this.f2360c[iB] == y.f2362a) {
            return;
        }
        this.f2360c[iB] = y.f2362a;
        this.f2358a = true;
    }

    public void m(int i11) {
        if (this.f2360c[i11] != y.f2362a) {
            this.f2360c[i11] = y.f2362a;
            this.f2358a = true;
        }
    }

    public int n() {
        if (this.f2358a) {
            int i11 = this.f2361d;
            long[] jArr = this.f2359b;
            Object[] objArr = this.f2360c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != y.f2362a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f2358a = false;
            this.f2361d = i12;
        }
        return this.f2361d;
    }

    public Object o(int i11) {
        if (!(i11 >= 0 && i11 < this.f2361d)) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i11);
        }
        if (this.f2358a) {
            int i12 = this.f2361d;
            long[] jArr = this.f2359b;
            Object[] objArr = this.f2360c;
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++) {
                Object obj = objArr[i14];
                if (obj != y.f2362a) {
                    if (i14 != i13) {
                        jArr[i13] = jArr[i14];
                        objArr[i13] = obj;
                        objArr[i14] = null;
                    }
                    i13++;
                }
            }
            this.f2358a = false;
            this.f2361d = i13;
        }
        return this.f2360c[i11];
    }

    public String toString() {
        if (n() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f2361d * 28);
        sb2.append('{');
        int i11 = this.f2361d;
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            sb2.append(j(i12));
            sb2.append('=');
            Object objO = o(i12);
            if (objO != sb2) {
                sb2.append(objO);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }
}
