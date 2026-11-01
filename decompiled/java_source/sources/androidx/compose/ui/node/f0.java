package androidx.compose.ui.node;

import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final o0.e f5386a = o0.g.b(1.0f, 0.0f, 2, null);

    public static final y0 b(LayoutNode layoutNode) {
        y0 y0VarG0 = layoutNode.g0();
        if (y0VarG0 != null) {
            return y0VarG0;
        }
        g0.a.c("LayoutNode should be attached to an owner");
        throw new KotlinNothingValueException();
    }
}
