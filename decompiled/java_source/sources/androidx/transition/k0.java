package androidx.transition;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
class k0 extends j0 {
    k0() {
    }

    @Override // androidx.transition.c0
    public float b(View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.transition.h0, androidx.transition.c0
    public void d(View view, int i11, int i12, int i13, int i14) {
        view.setLeftTopRightBottom(i11, i12, i13, i14);
    }

    @Override // androidx.transition.c0
    public void e(View view, float f11) {
        view.setTransitionAlpha(f11);
    }

    @Override // androidx.transition.j0, androidx.transition.c0
    public void f(View view, int i11) {
        view.setTransitionVisibility(i11);
    }

    @Override // androidx.transition.f0, androidx.transition.c0
    public void g(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.transition.f0, androidx.transition.c0
    public void h(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
