package androidx.compose.ui.graphics.layer;

import android.view.RenderNode;

/* JADX INFO: loaded from: classes.dex */
final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p0 f4600a = new p0();

    private p0() {
    }

    public final int a(RenderNode renderNode) {
        return renderNode.getAmbientShadowColor();
    }

    public final int b(RenderNode renderNode) {
        return renderNode.getSpotShadowColor();
    }

    public final void c(RenderNode renderNode, int i11) {
        renderNode.setAmbientShadowColor(i11);
    }

    public final void d(RenderNode renderNode, int i11) {
        renderNode.setSpotShadowColor(i11);
    }
}
