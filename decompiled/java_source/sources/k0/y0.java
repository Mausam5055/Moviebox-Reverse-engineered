package k0;

import android.text.StaticLayout;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes2.dex */
final class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y0 f66551a = new y0();

    private y0() {
    }

    @JvmStatic
    public static final boolean a(StaticLayout staticLayout) {
        return staticLayout.isFallbackLineSpacingEnabled();
    }

    @JvmStatic
    public static final void b(StaticLayout.Builder builder, int i11, int i12) {
        builder.setLineBreakConfig(s0.a().setLineBreakStyle(i11).setLineBreakWordStyle(i12).build());
    }
}
