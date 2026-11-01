package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
public abstract class r0 {
    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.ui.f.c b(f fVar, int i11, int i12) {
        androidx.compose.ui.f.c cVarB1 = fVar.getNode().b1();
        if (cVarB1 == null || (cVarB1.a1() & i11) == 0) {
            return null;
        }
        while (cVarB1 != null) {
            int iF1 = cVarB1.f1();
            if ((iF1 & i12) != 0) {
                return null;
            }
            if ((iF1 & i11) != 0) {
                return cVarB1;
            }
            cVarB1 = cVarB1.b1();
        }
        return null;
    }
}
