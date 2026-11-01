package androidx.collection;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f2367a = new Object();

    public static final Object c(y0 y0Var, int i11) {
        Object obj;
        Intrinsics.h(y0Var, "<this>");
        int iA = n.a.a(y0Var.f2364b, y0Var.f2366d, i11);
        if (iA < 0 || (obj = y0Var.f2365c[iA]) == f2367a) {
            return null;
        }
        return obj;
    }

    public static final Object d(y0 y0Var, int i11, Object obj) {
        Object obj2;
        Intrinsics.h(y0Var, "<this>");
        int iA = n.a.a(y0Var.f2364b, y0Var.f2366d, i11);
        return (iA < 0 || (obj2 = y0Var.f2365c[iA]) == f2367a) ? obj : obj2;
    }

    public static final void e(y0 y0Var, int i11) {
        Intrinsics.h(y0Var, "<this>");
        int iA = n.a.a(y0Var.f2364b, y0Var.f2366d, i11);
        if (iA >= 0) {
            Object[] objArr = y0Var.f2365c;
            Object obj = objArr[iA];
            Object obj2 = f2367a;
            if (obj != obj2) {
                objArr[iA] = obj2;
                y0Var.f2363a = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(y0 y0Var) {
        int i11 = y0Var.f2366d;
        int[] iArr = y0Var.f2364b;
        Object[] objArr = y0Var.f2365c;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            Object obj = objArr[i13];
            if (obj != f2367a) {
                if (i13 != i12) {
                    iArr[i12] = iArr[i13];
                    objArr[i12] = obj;
                    objArr[i13] = null;
                }
                i12++;
            }
        }
        y0Var.f2363a = false;
        y0Var.f2366d = i12;
    }
}
