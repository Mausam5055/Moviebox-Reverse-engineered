package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class x0 {
    static {
        y0.a aVar = y0.f5461d1;
    }

    public static /* synthetic */ w0 a(y0 y0Var, Function2 function2, Function0 function0, GraphicsLayer graphicsLayer, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createLayer");
        }
        if ((i11 & 4) != 0) {
            graphicsLayer = null;
        }
        return y0Var.createLayer(function2, function0, graphicsLayer);
    }

    public static /* synthetic */ void b(y0 y0Var, LayoutNode layoutNode, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: forceMeasureTheSubtree");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        y0Var.forceMeasureTheSubtree(layoutNode, z10);
    }

    public static /* synthetic */ void c(y0 y0Var, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: measureAndLayout");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        y0Var.measureAndLayout(z10);
    }

    public static /* synthetic */ void d(y0 y0Var, LayoutNode layoutNode, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onRequestMeasure");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        if ((i11 & 8) != 0) {
            z12 = true;
        }
        y0Var.onRequestMeasure(layoutNode, z10, z11, z12);
    }

    public static /* synthetic */ void e(y0 y0Var, LayoutNode layoutNode, boolean z10, boolean z11, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onRequestRelayout");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        y0Var.onRequestRelayout(layoutNode, z10, z11);
    }
}
