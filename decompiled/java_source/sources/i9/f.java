package i9;

import com.google.android.exoplayer2.util.d0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;

/* JADX INFO: loaded from: classes4.dex */
final class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f65075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f65076b;

    private f(int i11, ImmutableList immutableList) {
        this.f65076b = i11;
        this.f65075a = immutableList;
    }

    private static a a(int i11, int i12, d0 d0Var) {
        switch (i11) {
            case 1718776947:
                return g.d(i12, d0Var);
            case 1751742049:
                return c.b(d0Var);
            case 1752331379:
                return d.c(d0Var);
            case 1852994675:
                return h.a(d0Var);
            default:
                return null;
        }
    }

    public static f c(int i11, d0 d0Var) {
        ImmutableList.a aVar = new ImmutableList.a();
        int iF = d0Var.f();
        int iB = -2;
        while (d0Var.a() > 8) {
            int iQ = d0Var.q();
            int iE = d0Var.e() + d0Var.q();
            d0Var.O(iE);
            a aVarC = iQ == 1414744396 ? c(d0Var.q(), d0Var) : a(iQ, iB, d0Var);
            if (aVarC != null) {
                if (aVarC.getType() == 1752331379) {
                    iB = ((d) aVarC).b();
                }
                aVar.a(aVarC);
            }
            d0Var.P(iE);
            d0Var.O(iF);
        }
        return new f(i11, aVar.e());
    }

    public a b(Class cls) {
        r4 it = this.f65075a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.getClass() == cls) {
                return aVar;
            }
        }
        return null;
    }

    @Override // i9.a
    public int getType() {
        return this.f65076b;
    }
}
