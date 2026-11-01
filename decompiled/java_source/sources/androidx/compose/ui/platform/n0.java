package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import androidx.compose.ui.graphics.i4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class n0 implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f5845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f5846b;

    private n0(float[] fArr) {
        this.f5845a = fArr;
        this.f5846b = new int[2];
    }

    public /* synthetic */ n0(float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(fArr);
    }

    private final void b(float[] fArr, Matrix matrix) {
        androidx.compose.ui.graphics.r0.b(this.f5845a, matrix);
        AndroidComposeView_androidKt.i(fArr, this.f5845a);
    }

    private final void c(float[] fArr, float f11, float f12) {
        AndroidComposeView_androidKt.j(fArr, f11, f12, this.f5845a);
    }

    private final void d(View view, float[] fArr) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            d((View) parent, fArr);
            c(fArr, -view.getScrollX(), -view.getScrollY());
            c(fArr, view.getLeft(), view.getTop());
        } else {
            int[] iArr = this.f5846b;
            view.getLocationInWindow(iArr);
            c(fArr, -view.getScrollX(), -view.getScrollY());
            c(fArr, iArr[0], iArr[1]);
        }
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            return;
        }
        b(fArr, matrix);
    }

    @Override // androidx.compose.ui.platform.m0
    public void a(View view, float[] fArr) {
        i4.h(fArr);
        d(view, fArr);
    }
}
