package androidx.compose.ui.platform;

import android.view.RenderNode;

/* JADX INFO: loaded from: classes.dex */
final class z1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z1 f5891a = new z1();

    private z1() {
    }

    public final void a(RenderNode renderNode) {
        renderNode.discardDisplayList();
    }
}
