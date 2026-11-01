package k0;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f66525a = new f();

    private f() {
    }

    @JvmStatic
    public static final BoringLayout a(CharSequence charSequence, TextPaint textPaint, int i11, Layout.Alignment alignment, float f11, float f12, BoringLayout.Metrics metrics, boolean z10, TextUtils.TruncateAt truncateAt, int i12) {
        return new BoringLayout(charSequence, textPaint, i11, alignment, f11, f12, metrics, z10, truncateAt, i12);
    }

    @JvmStatic
    public static final BoringLayout.Metrics b(CharSequence charSequence, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic.isRtl(charSequence, 0, charSequence.length())) {
            return null;
        }
        return BoringLayout.isBoring(charSequence, textPaint, null);
    }
}
