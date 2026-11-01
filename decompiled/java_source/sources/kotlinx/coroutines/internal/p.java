package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlinx.coroutines.a2;

/* JADX INFO: loaded from: classes7.dex */
public abstract class p {
    private static final q a(Throwable th2, String str) throws Throwable {
        if (th2 != null) {
            throw th2;
        }
        d();
        throw new KotlinNothingValueException();
    }

    static /* synthetic */ q b(Throwable th2, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            th2 = null;
        }
        if ((i11 & 2) != 0) {
            str = null;
        }
        return a(th2, str);
    }

    public static final boolean c(a2 a2Var) {
        return a2Var.d() instanceof q;
    }

    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final a2 e(n nVar, List list) {
        try {
            return nVar.b(list);
        } catch (Throwable th2) {
            return a(th2, nVar.a());
        }
    }
}
