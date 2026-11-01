package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    /* JADX INFO: Access modifiers changed from: private */
    public static final o b(s0 s0Var, Object obj) {
        if (obj == null) {
            return null;
        }
        return (o) s0Var.a().invoke(obj);
    }

    public static final o0 c(float f11, float f12, Object obj) {
        return new o0(f11, f12, obj);
    }

    public static /* synthetic */ o0 d(float f11, float f12, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            f11 = 1.0f;
        }
        if ((i11 & 2) != 0) {
            f12 = 1500.0f;
        }
        if ((i11 & 4) != 0) {
            obj = null;
        }
        return c(f11, f12, obj);
    }

    public static final r0 e(int i11, int i12, z zVar) {
        return new r0(i11, i12, zVar);
    }

    public static /* synthetic */ r0 f(int i11, int i12, z zVar, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = 300;
        }
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        if ((i13 & 4) != 0) {
            zVar = b0.c();
        }
        return e(i11, i12, zVar);
    }
}
