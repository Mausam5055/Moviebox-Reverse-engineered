package androidx.compose.ui.platform;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g0 f5785a = new g0();

    private g0() {
    }

    public final void a(View view, int i11, boolean z10) {
        view.setFocusable(i11);
        view.setDefaultFocusHighlightEnabled(z10);
    }
}
