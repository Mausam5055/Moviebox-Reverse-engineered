package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public class k0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67864b = AtomicIntegerFieldUpdater.newUpdater(k0.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l0[] f67865a;

    private final l0[] g() {
        l0[] l0VarArr = this.f67865a;
        if (l0VarArr == null) {
            l0[] l0VarArr2 = new l0[4];
            this.f67865a = l0VarArr2;
            return l0VarArr2;
        }
        if (c() < l0VarArr.length) {
            return l0VarArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(l0VarArr, c() * 2);
        Intrinsics.g(objArrCopyOf, "copyOf(...)");
        l0[] l0VarArr3 = (l0[]) objArrCopyOf;
        this.f67865a = l0VarArr3;
        return l0VarArr3;
    }

    private final void k(int i11) {
        f67864b.set(this, i11);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002b  */
    private final void l(int i11) {
        while (true) {
            int i12 = i11 * 2;
            int i13 = i12 + 1;
            if (i13 >= c()) {
                return;
            }
            l0[] l0VarArr = this.f67865a;
            Intrinsics.e(l0VarArr);
            int i14 = i12 + 2;
            if (i14 < c()) {
                l0 l0Var = l0VarArr[i14];
                Intrinsics.e(l0Var);
                l0 l0Var2 = l0VarArr[i13];
                Intrinsics.e(l0Var2);
                if (((Comparable) l0Var).compareTo(l0Var2) >= 0) {
                    i14 = i13;
                }
            } else {
                i14 = i13;
            }
            l0 l0Var3 = l0VarArr[i11];
            Intrinsics.e(l0Var3);
            l0 l0Var4 = l0VarArr[i14];
            Intrinsics.e(l0Var4);
            if (((Comparable) l0Var3).compareTo(l0Var4) <= 0) {
                return;
            }
            n(i11, i14);
            i11 = i14;
        }
    }

    private final void m(int i11) {
        while (i11 > 0) {
            l0[] l0VarArr = this.f67865a;
            Intrinsics.e(l0VarArr);
            int i12 = (i11 - 1) / 2;
            l0 l0Var = l0VarArr[i12];
            Intrinsics.e(l0Var);
            l0 l0Var2 = l0VarArr[i11];
            Intrinsics.e(l0Var2);
            if (((Comparable) l0Var).compareTo(l0Var2) <= 0) {
                return;
            }
            n(i11, i12);
            i11 = i12;
        }
    }

    private final void n(int i11, int i12) {
        l0[] l0VarArr = this.f67865a;
        Intrinsics.e(l0VarArr);
        l0 l0Var = l0VarArr[i12];
        Intrinsics.e(l0Var);
        l0 l0Var2 = l0VarArr[i11];
        Intrinsics.e(l0Var2);
        l0VarArr[i11] = l0Var;
        l0VarArr[i12] = l0Var2;
        l0Var.setIndex(i11);
        l0Var2.setIndex(i12);
    }

    public final void a(l0 l0Var) {
        l0Var.setHeap(this);
        l0[] l0VarArrG = g();
        int iC = c();
        k(iC + 1);
        l0VarArrG[iC] = l0Var;
        l0Var.setIndex(iC);
        m(iC);
    }

    public final l0 b() {
        l0[] l0VarArr = this.f67865a;
        if (l0VarArr != null) {
            return l0VarArr[0];
        }
        return null;
    }

    public final int c() {
        return f67864b.get(this);
    }

    public final boolean e() {
        return c() == 0;
    }

    public final l0 f() {
        l0 l0VarB;
        synchronized (this) {
            l0VarB = b();
        }
        return l0VarB;
    }

    public final boolean h(l0 l0Var) {
        boolean z10;
        synchronized (this) {
            if (l0Var.getHeap() == null) {
                z10 = false;
            } else {
                i(l0Var.getIndex());
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    public final l0 i(int i11) {
        l0[] l0VarArr = this.f67865a;
        Intrinsics.e(l0VarArr);
        k(c() - 1);
        if (i11 < c()) {
            n(i11, c());
            int i12 = (i11 - 1) / 2;
            if (i11 > 0) {
                l0 l0Var = l0VarArr[i11];
                Intrinsics.e(l0Var);
                l0 l0Var2 = l0VarArr[i12];
                Intrinsics.e(l0Var2);
                if (((Comparable) l0Var).compareTo(l0Var2) < 0) {
                    n(i11, i12);
                    m(i12);
                } else {
                    l(i11);
                }
            } else {
                l(i11);
            }
        }
        l0 l0Var3 = l0VarArr[c()];
        Intrinsics.e(l0Var3);
        l0Var3.setHeap(null);
        l0Var3.setIndex(-1);
        l0VarArr[c()] = null;
        return l0Var3;
    }

    public final l0 j() {
        l0 l0VarI;
        synchronized (this) {
            l0VarI = c() > 0 ? i(0) : null;
        }
        return l0VarI;
    }
}
