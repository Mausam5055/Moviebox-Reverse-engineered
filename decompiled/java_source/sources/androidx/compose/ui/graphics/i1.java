package androidx.compose.ui.graphics;

import android.graphics.BlendModeColorFilter;

/* JADX INFO: loaded from: classes.dex */
final class i1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i1 f4451a = new i1();

    private i1() {
    }

    public final BlendModeColorFilter a(long j11, int i11) {
        f1.a();
        return e1.a(w1.j(j11), f0.a(i11));
    }

    public final d1 b(BlendModeColorFilter blendModeColorFilter) {
        return new d1(w1.b(blendModeColorFilter.getColor()), f0.b(blendModeColorFilter.getMode()), blendModeColorFilter, null);
    }
}
