package k0;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f66501a = new d();

    private d() {
    }

    @JvmStatic
    public static final BoringLayout a(CharSequence charSequence, TextPaint textPaint, int i11, Layout.Alignment alignment, float f11, float f12, BoringLayout.Metrics metrics, boolean z10, boolean z11, TextUtils.TruncateAt truncateAt, int i12) {
        return a.a(charSequence, textPaint, i11, alignment, f11, f12, metrics, z10, truncateAt, i12, z11);
    }

    @JvmStatic
    public static final BoringLayout.Metrics b(CharSequence charSequence, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic) {
        return BoringLayout.isBoring(charSequence, textPaint, textDirectionHeuristic, true, null);
    }

    @JvmStatic
    public static final boolean c(BoringLayout boringLayout) {
        return boringLayout.isFallbackLineSpacingEnabled();
    }
}
