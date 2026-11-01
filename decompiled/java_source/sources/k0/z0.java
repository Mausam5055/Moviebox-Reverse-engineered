package k0;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z0 f66552a = new z0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a1 f66553b = new n0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f66554c = 8;

    private z0() {
    }

    public final StaticLayout a(CharSequence charSequence, TextPaint textPaint, int i11, int i12, int i13, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i14, TextUtils.TruncateAt truncateAt, int i15, float f11, float f12, int i16, boolean z10, boolean z11, int i17, int i18, int i19, int i20, int[] iArr, int[] iArr2) {
        return f66553b.a(new b1(charSequence, i12, i13, textPaint, i11, textDirectionHeuristic, alignment, i14, truncateAt, i15, f11, f12, i16, z10, z11, i17, i18, i19, i20, iArr, iArr2));
    }

    public final boolean c(StaticLayout staticLayout, boolean z10) {
        return f66553b.b(staticLayout, z10);
    }
}
