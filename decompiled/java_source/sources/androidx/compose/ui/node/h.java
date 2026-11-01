package androidx.compose.ui.node;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    public static final View a(f fVar) {
        if (!fVar.getNode().k1()) {
            g0.a.b("Cannot get View because the Modifier node is not currently attached.");
        }
        Object objB = f0.b(g.m(fVar));
        Intrinsics.f(objB, "null cannot be cast to non-null type android.view.View");
        return (View) objB;
    }
}
