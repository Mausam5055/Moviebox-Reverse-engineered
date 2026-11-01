package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
final class p0 implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f5849a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f5850b = new int[2];

    @Override // androidx.compose.ui.platform.m0
    public void a(View view, float[] fArr) {
        this.f5849a.reset();
        view.transformMatrixToGlobal(this.f5849a);
        ViewParent parent = view.getParent();
        while (parent instanceof View) {
            view = parent;
            parent = view.getParent();
        }
        view.getLocationOnScreen(this.f5850b);
        int[] iArr = this.f5850b;
        int i11 = iArr[0];
        int i12 = iArr[1];
        view.getLocationInWindow(iArr);
        int[] iArr2 = this.f5850b;
        this.f5849a.postTranslate(iArr2[0] - i11, iArr2[1] - i12);
        androidx.compose.ui.graphics.r0.b(fArr, this.f5849a);
    }
}
