package androidx.compose.ui.graphics.layer;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v0 f4603a = new v0();

    private v0() {
    }

    public final void a(View view) {
        view.resetPivot();
    }

    public final void b(View view, int i11) {
        view.setOutlineAmbientShadowColor(i11);
    }

    public final void c(View view, int i11) {
        view.setOutlineSpotShadowColor(i11);
    }
}
