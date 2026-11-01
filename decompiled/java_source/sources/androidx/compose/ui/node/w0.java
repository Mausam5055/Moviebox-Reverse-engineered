package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.x4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface w0 {
    void destroy();

    void drawLayer(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer);

    void invalidate();

    /* JADX INFO: renamed from: isInLayer-k-4lQ0M, reason: not valid java name */
    boolean mo138isInLayerk4lQ0M(long j11);

    void mapBounds(y.e eVar, boolean z10);

    /* JADX INFO: renamed from: mapOffset-8S9VItk, reason: not valid java name */
    long mo139mapOffset8S9VItk(long j11, boolean z10);

    /* JADX INFO: renamed from: move--gyyYBs, reason: not valid java name */
    void mo140movegyyYBs(long j11);

    /* JADX INFO: renamed from: resize-ozmzZPI, reason: not valid java name */
    void mo141resizeozmzZPI(long j11);

    void reuseLayer(Function2 function2, Function0 function0);

    void updateDisplayList();

    void updateLayerProperties(x4 x4Var);
}
