package k0;

import android.os.Build;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f66507a = new e();

    private e() {
    }

    public final BoringLayout a(CharSequence charSequence, TextPaint textPaint, int i11, BoringLayout.Metrics metrics, Layout.Alignment alignment, boolean z10, boolean z11, TextUtils.TruncateAt truncateAt, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException("negative width");
        }
        if (i12 >= 0) {
            return Build.VERSION.SDK_INT >= 33 ? d.a(charSequence, textPaint, i11, alignment, 1.0f, 0.0f, metrics, z10, z11, truncateAt, i12) : f.a(charSequence, textPaint, i11, alignment, 1.0f, 0.0f, metrics, z10, truncateAt, i12);
        }
        throw new IllegalArgumentException("negative ellipsized width");
    }

    public final boolean b(BoringLayout boringLayout) {
        if (Build.VERSION.SDK_INT >= 33) {
            return d.c(boringLayout);
        }
        return false;
    }

    public final BoringLayout.Metrics c(CharSequence charSequence, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic) {
        return Build.VERSION.SDK_INT >= 33 ? d.b(charSequence, textPaint, textDirectionHeuristic) : f.b(charSequence, textPaint, textDirectionHeuristic);
    }
}
