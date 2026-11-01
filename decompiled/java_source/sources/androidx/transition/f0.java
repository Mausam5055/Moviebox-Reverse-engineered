package androidx.transition;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
abstract class f0 extends c0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f15034d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f15035e = true;

    static class a {
        static void a(View view, Matrix matrix) {
            view.setAnimationMatrix(matrix);
        }

        static void b(View view, Matrix matrix) {
            view.transformMatrixToGlobal(matrix);
        }

        static void c(View view, Matrix matrix) {
            view.transformMatrixToLocal(matrix);
        }
    }

    f0() {
    }

    @Override // androidx.transition.c0
    public void g(View view, Matrix matrix) {
        if (f15034d) {
            try {
                a.b(view, matrix);
            } catch (NoSuchMethodError unused) {
                f15034d = false;
            }
        }
    }

    @Override // androidx.transition.c0
    public void h(View view, Matrix matrix) {
        if (f15035e) {
            try {
                a.c(view, matrix);
            } catch (NoSuchMethodError unused) {
                f15035e = false;
            }
        }
    }
}
