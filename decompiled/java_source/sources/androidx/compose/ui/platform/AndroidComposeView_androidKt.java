package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.graphics.i4;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidComposeView_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Function1 f5568a = new Function1<androidx.compose.ui.text.input.y, androidx.compose.ui.text.input.y>() { // from class: androidx.compose.ui.platform.AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1
        @Override // kotlin.jvm.functions.Function1
        public final androidx.compose.ui.text.input.y invoke(androidx.compose.ui.text.input.y yVar) {
            return yVar;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(View view, View view2) {
        if (Intrinsics.c(view2, view)) {
            return false;
        }
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    private static final float f(float[] fArr, int i11, float[] fArr2, int i12) {
        int i13 = i11 * 4;
        return (fArr[i13] * fArr2[i12]) + (fArr[i13 + 1] * fArr2[4 + i12]) + (fArr[i13 + 2] * fArr2[8 + i12]) + (fArr[i13 + 3] * fArr2[12 + i12]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.ui.platform.coreshims.d g(View view) {
        androidx.compose.ui.platform.coreshims.e.c(view, 1);
        return androidx.compose.ui.platform.coreshims.e.b(view);
    }

    public static final Function1 h() {
        return f5568a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(float[] fArr, float[] fArr2) {
        float f11 = f(fArr2, 0, fArr, 0);
        float f12 = f(fArr2, 0, fArr, 1);
        float f13 = f(fArr2, 0, fArr, 2);
        float f14 = f(fArr2, 0, fArr, 3);
        float f15 = f(fArr2, 1, fArr, 0);
        float f16 = f(fArr2, 1, fArr, 1);
        float f17 = f(fArr2, 1, fArr, 2);
        float f18 = f(fArr2, 1, fArr, 3);
        float f19 = f(fArr2, 2, fArr, 0);
        float f20 = f(fArr2, 2, fArr, 1);
        float f21 = f(fArr2, 2, fArr, 2);
        float f22 = f(fArr2, 2, fArr, 3);
        float f23 = f(fArr2, 3, fArr, 0);
        float f24 = f(fArr2, 3, fArr, 1);
        float f25 = f(fArr2, 3, fArr, 2);
        float f26 = f(fArr2, 3, fArr, 3);
        fArr[0] = f11;
        fArr[1] = f12;
        fArr[2] = f13;
        fArr[3] = f14;
        fArr[4] = f15;
        fArr[5] = f16;
        fArr[6] = f17;
        fArr[7] = f18;
        fArr[8] = f19;
        fArr[9] = f20;
        fArr[10] = f21;
        fArr[11] = f22;
        fArr[12] = f23;
        fArr[13] = f24;
        fArr[14] = f25;
        fArr[15] = f26;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(float[] fArr, float f11, float f12, float[] fArr2) {
        i4.h(fArr2);
        i4.q(fArr2, f11, f12, 0.0f, 4, null);
        i(fArr, fArr2);
    }
}
