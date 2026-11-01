package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class y0 implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ boolean f2363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ int[] f2364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f2365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ int f2366d;

    @JvmOverloads
    public y0() {
        this(0, 1, null);
    }

    public y0(int i11) {
        if (i11 == 0) {
            this.f2364b = n.a.f70051a;
            this.f2365c = n.a.f70053c;
        } else {
            int iE = n.a.e(i11);
            this.f2364b = new int[iE];
            this.f2365c = new Object[iE];
        }
    }

    public /* synthetic */ y0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 10 : i11);
    }

    public void a(int i11, Object obj) {
        int i12 = this.f2366d;
        if (i12 != 0 && i11 <= this.f2364b[i12 - 1]) {
            l(i11, obj);
            return;
        }
        if (this.f2363a && i12 >= this.f2364b.length) {
            z0.f(this);
        }
        int i13 = this.f2366d;
        if (i13 >= this.f2364b.length) {
            int iE = n.a.e(i13 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.f2364b, iE);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f2364b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2365c, iE);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2365c = objArrCopyOf;
        }
        this.f2364b[i13] = i11;
        this.f2365c[i13] = obj;
        this.f2366d = i13 + 1;
    }

    public void b() {
        int i11 = this.f2366d;
        Object[] objArr = this.f2365c;
        for (int i12 = 0; i12 < i11; i12++) {
            objArr[i12] = null;
        }
        this.f2366d = 0;
        this.f2363a = false;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public y0 clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        Intrinsics.f(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        y0 y0Var = (y0) objClone;
        y0Var.f2364b = (int[]) this.f2364b.clone();
        y0Var.f2365c = (Object[]) this.f2365c.clone();
        return y0Var;
    }

    public boolean d(int i11) {
        return i(i11) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    public boolean e(Object obj) {
        if (this.f2363a) {
            z0.f(this);
        }
        int i11 = this.f2366d;
        int i12 = 0;
        while (i12 < i11) {
            if (this.f2365c[i12] == obj) {
                if (i12 >= 0) {
                    return true;
                }
                return false;
            }
            i12++;
        }
        i12 = -1;
        if (i12 >= 0) {
            return true;
        }
        return false;
    }

    public Object f(int i11) {
        return z0.c(this, i11);
    }

    public Object g(int i11, Object obj) {
        return z0.d(this, i11, obj);
    }

    public int i(int i11) {
        if (this.f2363a) {
            z0.f(this);
        }
        return n.a.a(this.f2364b, this.f2366d, i11);
    }

    public int j(Object obj) {
        if (this.f2363a) {
            z0.f(this);
        }
        int i11 = this.f2366d;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.f2365c[i12] == obj) {
                return i12;
            }
        }
        return -1;
    }

    public int k(int i11) {
        if (this.f2363a) {
            z0.f(this);
        }
        return this.f2364b[i11];
    }

    public void l(int i11, Object obj) {
        int iA = n.a.a(this.f2364b, this.f2366d, i11);
        if (iA >= 0) {
            this.f2365c[iA] = obj;
            return;
        }
        int i12 = ~iA;
        if (i12 < this.f2366d && this.f2365c[i12] == z0.f2367a) {
            this.f2364b[i12] = i11;
            this.f2365c[i12] = obj;
            return;
        }
        if (this.f2363a && this.f2366d >= this.f2364b.length) {
            z0.f(this);
            i12 = ~n.a.a(this.f2364b, this.f2366d, i11);
        }
        int i13 = this.f2366d;
        if (i13 >= this.f2364b.length) {
            int iE = n.a.e(i13 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.f2364b, iE);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f2364b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2365c, iE);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2365c = objArrCopyOf;
        }
        int i14 = this.f2366d;
        if (i14 - i12 != 0) {
            int[] iArr = this.f2364b;
            int i15 = i12 + 1;
            ArraysKt.l(iArr, iArr, i15, i12, i14);
            Object[] objArr = this.f2365c;
            ArraysKt.n(objArr, objArr, i15, i12, this.f2366d);
        }
        this.f2364b[i12] = i11;
        this.f2365c[i12] = obj;
        this.f2366d++;
    }

    public void m(int i11) {
        z0.e(this, i11);
    }

    public void n(int i11) {
        if (this.f2365c[i11] != z0.f2367a) {
            this.f2365c[i11] = z0.f2367a;
            this.f2363a = true;
        }
    }

    public Object o(int i11, Object obj) {
        int i12 = i(i11);
        if (i12 < 0) {
            return null;
        }
        Object[] objArr = this.f2365c;
        Object obj2 = objArr[i12];
        objArr[i12] = obj;
        return obj2;
    }

    public int p() {
        if (this.f2363a) {
            z0.f(this);
        }
        return this.f2366d;
    }

    public Object q(int i11) {
        if (this.f2363a) {
            z0.f(this);
        }
        return this.f2365c[i11];
    }

    public String toString() {
        if (p() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f2366d * 28);
        sb2.append('{');
        int i11 = this.f2366d;
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            sb2.append(k(i12));
            sb2.append('=');
            Object objQ = q(i12);
            if (objQ != this) {
                sb2.append(objQ);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "buffer.toString()");
        return string;
    }
}
