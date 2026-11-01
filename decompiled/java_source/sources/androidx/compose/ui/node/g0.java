package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {
    public static final boolean a(LayoutNode layoutNode) {
        if (layoutNode.V() != null) {
            LayoutNode layoutNodeH0 = layoutNode.h0();
            if ((layoutNodeH0 != null ? layoutNodeH0.V() : null) == null || layoutNode.P().w()) {
                return true;
            }
        }
        return false;
    }
}
