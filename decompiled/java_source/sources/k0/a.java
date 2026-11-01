package k0;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ BoringLayout a(CharSequence charSequence, TextPaint textPaint, int i11, Layout.Alignment alignment, float f11, float f12, BoringLayout.Metrics metrics, boolean z10, TextUtils.TruncateAt truncateAt, int i12, boolean z11) {
        return new BoringLayout(charSequence, textPaint, i11, alignment, f11, f12, metrics, z10, truncateAt, i12, z11);
    }
}
