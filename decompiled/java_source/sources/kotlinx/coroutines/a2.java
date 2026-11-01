package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a2 extends i0 {
    public abstract a2 d();

    @Override // kotlinx.coroutines.i0
    public i0 limitedParallelism(int i11, String str) {
        kotlinx.coroutines.internal.i.a(i11);
        return kotlinx.coroutines.internal.i.b(this, str);
    }

    protected final String p() {
        a2 a2VarD;
        a2 a2VarC = y0.c();
        if (this == a2VarC) {
            return "Dispatchers.Main";
        }
        try {
            a2VarD = a2VarC.d();
        } catch (UnsupportedOperationException unused) {
            a2VarD = null;
        }
        if (this == a2VarD) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // kotlinx.coroutines.i0
    public String toString() {
        String strP = p();
        if (strP != null) {
            return strP;
        }
        return p0.a(this) + '@' + p0.b(this);
    }
}
