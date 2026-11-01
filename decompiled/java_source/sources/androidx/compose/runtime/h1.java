package androidx.compose.runtime;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
final class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.collection.n0 f3734a;

    private /* synthetic */ h1(androidx.collection.n0 n0Var) {
        this.f3734a = n0Var;
    }

    public static final /* synthetic */ h1 a(androidx.collection.n0 n0Var) {
        return new h1(n0Var);
    }

    public static androidx.collection.n0 b(androidx.collection.n0 n0Var) {
        return n0Var;
    }

    public static boolean c(androidx.collection.n0 n0Var, Object obj) {
        return (obj instanceof h1) && Intrinsics.c(n0Var, ((h1) obj).h());
    }

    public static int d(androidx.collection.n0 n0Var) {
        return n0Var.hashCode();
    }

    public static final Object e(androidx.collection.n0 n0Var, Object obj) {
        Object objB = n0Var.b(obj);
        if (objB == null) {
            return null;
        }
        if (TypeIntrinsics.l(objB)) {
            List listC = TypeIntrinsics.c(objB);
            Object objRemove = listC.remove(0);
            if (listC.isEmpty()) {
                n0Var.o(obj);
            }
            objB = objRemove;
        } else {
            n0Var.o(obj);
        }
        Intrinsics.f(objB, "null cannot be cast to non-null type V of androidx.compose.runtime.MutableScatterMultiMap.pop_impl$lambda$1");
        return objB;
    }

    public static final void f(androidx.collection.n0 n0Var, Object obj, Object obj2) {
        int iK = n0Var.k(obj);
        boolean z10 = iK < 0;
        Object obj3 = z10 ? null : n0Var.f2346c[iK];
        if (obj3 != null) {
            if (TypeIntrinsics.l(obj3)) {
                Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.collections.MutableList<V of androidx.compose.runtime.MutableScatterMultiMap.put_impl$lambda$0>");
                List listC = TypeIntrinsics.c(obj3);
                listC.add(obj2);
                obj2 = listC;
            } else {
                obj2 = CollectionsKt.q(obj3, obj2);
            }
        }
        if (!z10) {
            n0Var.f2346c[iK] = obj2;
            return;
        }
        int i11 = ~iK;
        n0Var.f2345b[i11] = obj;
        n0Var.f2346c[i11] = obj2;
    }

    public static String g(androidx.collection.n0 n0Var) {
        return "MutableScatterMultiMap(map=" + n0Var + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f3734a, obj);
    }

    public final /* synthetic */ androidx.collection.n0 h() {
        return this.f3734a;
    }

    public int hashCode() {
        return d(this.f3734a);
    }

    public String toString() {
        return g(this.f3734a);
    }
}
