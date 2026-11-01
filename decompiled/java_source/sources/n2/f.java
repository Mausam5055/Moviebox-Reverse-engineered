package n2;

import androidx.media3.common.util.j0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;

/* JADX INFO: loaded from: classes2.dex */
final class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f70167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70168b;

    private f(int i11, ImmutableList immutableList) {
        this.f70168b = i11;
        this.f70167a = immutableList;
    }

    private static a a(int i11, int i12, j0 j0Var) {
        switch (i11) {
            case 1718776947:
                return g.d(i12, j0Var);
            case 1751742049:
                return c.b(j0Var);
            case 1752331379:
                return d.c(j0Var);
            case 1852994675:
                return h.a(j0Var);
            default:
                return null;
        }
    }

    public static f c(int i11, j0 j0Var) {
        ImmutableList.a aVar = new ImmutableList.a();
        int iG = j0Var.g();
        int iB = -2;
        while (j0Var.a() > 8) {
            int iU = j0Var.u();
            int iF = j0Var.f() + j0Var.u();
            j0Var.V(iF);
            a aVarC = iU == 1414744396 ? c(j0Var.u(), j0Var) : a(iU, iB, j0Var);
            if (aVarC != null) {
                if (aVarC.getType() == 1752331379) {
                    iB = ((d) aVarC).b();
                }
                aVar.a(aVarC);
            }
            j0Var.W(iF);
            j0Var.V(iG);
        }
        return new f(i11, aVar.e());
    }

    public a b(Class cls) {
        r4 it = this.f70167a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.getClass() == cls) {
                return aVar;
            }
        }
        return null;
    }

    @Override // n2.a
    public int getType() {
        return this.f70168b;
    }
}
