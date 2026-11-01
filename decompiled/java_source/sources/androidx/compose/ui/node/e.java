package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public static final Object a(d dVar, androidx.compose.runtime.q qVar) {
        if (!dVar.getNode().k1()) {
            g0.a.b("Cannot read CompositionLocal because the Modifier node is not currently attached.");
        }
        return g.m(dVar).G().a(qVar);
    }
}
