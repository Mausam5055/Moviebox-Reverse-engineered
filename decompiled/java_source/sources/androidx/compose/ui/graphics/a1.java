package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.util.DisplayMetrics;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes.dex */
public final class a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a1 f4290a = new a1();

    private a1() {
    }

    @JvmStatic
    public static final androidx.compose.ui.graphics.colorspace.c a(Bitmap bitmap) {
        androidx.compose.ui.graphics.colorspace.c cVarB;
        ColorSpace colorSpace = bitmap.getColorSpace();
        return (colorSpace == null || (cVarB = j0.b(colorSpace)) == null) ? androidx.compose.ui.graphics.colorspace.g.f4353a.w() : cVarB;
    }

    @JvmStatic
    public static final Bitmap b(int i11, int i12, int i13, boolean z10, androidx.compose.ui.graphics.colorspace.c cVar) {
        return Bitmap.createBitmap((DisplayMetrics) null, i11, i12, q0.d(i13), z10, j0.a(cVar));
    }
}
