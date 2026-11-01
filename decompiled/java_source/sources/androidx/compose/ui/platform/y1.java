package androidx.compose.ui.platform;

import android.view.RenderNode;

/* JADX INFO: loaded from: classes.dex */
final class y1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y1 f5883a = new y1();

    private y1() {
    }

    public final void a(RenderNode renderNode) {
        renderNode.destroyDisplayListData();
    }
}
