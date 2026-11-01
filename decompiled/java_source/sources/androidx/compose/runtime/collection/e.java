package androidx.compose.runtime.collection;

import androidx.collection.MutableScatterSet;
import androidx.collection.n0;
import androidx.collection.v0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f3690a = v0.d();

    public final void a(Object obj, Object obj2) {
        n0 n0Var = this.f3690a;
        int iK = n0Var.k(obj);
        boolean z10 = iK < 0;
        Object obj3 = z10 ? null : n0Var.f2346c[iK];
        if (obj3 != null) {
            if (obj3 instanceof MutableScatterSet) {
                Intrinsics.f(obj3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0>");
                ((MutableScatterSet) obj3).h(obj2);
            } else if (obj3 != obj2) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet(0, 1, null);
                Intrinsics.f(obj3, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0");
                mutableScatterSet.h(obj3);
                mutableScatterSet.h(obj2);
                obj2 = mutableScatterSet;
            }
            obj2 = obj3;
        }
        if (!z10) {
            n0Var.f2346c[iK] = obj2;
            return;
        }
        int i11 = ~iK;
        n0Var.f2345b[i11] = obj;
        n0Var.f2346c[i11] = obj2;
    }

    public final void b() {
        this.f3690a.h();
    }

    public final boolean c(Object obj) {
        return this.f3690a.a(obj);
    }

    public final n0 d() {
        return this.f3690a;
    }

    public final int e() {
        return this.f3690a.d();
    }

    public final boolean f(Object obj, Object obj2) {
        Object objB = this.f3690a.b(obj);
        if (objB == null) {
            return false;
        }
        if (!(objB instanceof MutableScatterSet)) {
            if (!Intrinsics.c(objB, obj2)) {
                return false;
            }
            this.f3690a.o(obj);
            return true;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
        boolean zX = mutableScatterSet.x(obj2);
        if (zX && mutableScatterSet.d()) {
            this.f3690a.o(obj);
        }
        return zX;
    }

    public final void g(Object obj) {
        boolean zD;
        n0 n0Var = this.f3690a;
        long[] jArr = n0Var.f2344a;
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
                        int i14 = (i11 << 3) + i13;
                        Object obj2 = n0Var.f2345b[i14];
                        Object obj3 = n0Var.f2346c[i14];
                        if (obj3 instanceof MutableScatterSet) {
                            Intrinsics.f(obj3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScope$lambda$3>");
                            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
                            mutableScatterSet.x(obj);
                            zD = mutableScatterSet.d();
                        } else {
                            zD = obj3 == obj;
                        }
                        if (zD) {
                            n0Var.p(i14);
                        }
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

    public final void h(Object obj, Object obj2) {
        this.f3690a.r(obj, obj2);
    }
}
