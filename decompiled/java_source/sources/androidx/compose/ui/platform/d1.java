package androidx.compose.ui.platform;

import android.graphics.Matrix;
import androidx.compose.ui.graphics.i4;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2 f5766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Matrix f5767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Matrix f5768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f5769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float[] f5770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5771f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5772g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5773h = true;

    public d1(Function2 function2) {
        this.f5766a = function2;
    }

    public final float[] a(Object obj) {
        float[] fArrC = this.f5770e;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f5770e = fArrC;
        }
        if (this.f5772g) {
            this.f5773h = b1.a(b(obj), fArrC);
            this.f5772g = false;
        }
        if (this.f5773h) {
            return fArrC;
        }
        return null;
    }

    public final float[] b(Object obj) {
        float[] fArrC = this.f5769d;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f5769d = fArrC;
        }
        if (!this.f5771f) {
            return fArrC;
        }
        Matrix matrix = this.f5767b;
        if (matrix == null) {
            matrix = new Matrix();
            this.f5767b = matrix;
        }
        this.f5766a.invoke(obj, matrix);
        Matrix matrix2 = this.f5768c;
        if (matrix2 == null || !Intrinsics.c(matrix, matrix2)) {
            androidx.compose.ui.graphics.r0.b(fArrC, matrix);
            this.f5767b = matrix2;
            this.f5768c = matrix;
        }
        this.f5771f = false;
        return fArrC;
    }

    public final void c() {
        this.f5771f = true;
        this.f5772g = true;
    }
}
