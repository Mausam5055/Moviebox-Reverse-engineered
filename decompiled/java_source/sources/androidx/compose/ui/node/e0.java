package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {
    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.ui.f.c b(f fVar) {
        int iA = s0.a(4);
        int iA2 = s0.a(2);
        androidx.compose.ui.f.c cVarB1 = fVar.getNode().b1();
        if (cVarB1 == null || (cVarB1.a1() & iA) == 0) {
            return null;
        }
        while (cVarB1 != null && (cVarB1.f1() & iA2) == 0) {
            if ((cVarB1.f1() & iA) != 0) {
                return cVarB1;
            }
            cVarB1 = cVarB1.b1();
        }
        return null;
    }
}
