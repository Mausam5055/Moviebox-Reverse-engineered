package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateList;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class u2 {
    public static final SnapshotStateList a() {
        return new SnapshotStateList();
    }

    public static final i1 b(Object obj, q2 q2Var) {
        return ActualAndroid_androidKt.c(obj, q2Var);
    }

    public static /* synthetic */ i1 c(Object obj, q2 q2Var, int i11, Object obj2) {
        if ((i11 & 2) != 0) {
            q2Var = r2.j();
        }
        return r2.e(obj, q2Var);
    }

    public static final a3 d(Object obj, i iVar, int i11) {
        if (k.H()) {
            k.Q(-1058319986, i11, -1, "androidx.compose.runtime.rememberUpdatedState (SnapshotState.kt:309)");
        }
        Object objY = iVar.y();
        if (objY == i.f3736a.a()) {
            objY = c(obj, null, 2, null);
            iVar.p(objY);
        }
        i1 i1Var = (i1) objY;
        i1Var.setValue(obj);
        if (k.H()) {
            k.P();
        }
        return i1Var;
    }
}
