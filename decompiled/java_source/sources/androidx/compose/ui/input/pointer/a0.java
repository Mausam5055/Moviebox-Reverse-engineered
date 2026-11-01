package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.LayoutNode;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutNode f4974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f4975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f4976c = new x();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.ui.node.q f4977d = new androidx.compose.ui.node.q();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4978e;

    public a0(LayoutNode layoutNode) {
        this.f4974a = layoutNode;
        this.f4975b = new f(layoutNode.o());
    }

    public final void a() {
        this.f4975b.b();
    }

    public final int b(y yVar, i0 i0Var, boolean z10) {
        int i11;
        boolean z11;
        if (this.f4978e) {
            return b0.a(false, false);
        }
        boolean z12 = true;
        try {
            this.f4978e = true;
            g gVarB = this.f4976c.b(yVar, i0Var);
            int iN = gVarB.b().n();
            while (true) {
                if (i11 >= iN) {
                    z11 = true;
                    break;
                }
                w wVar = (w) gVarB.b().o(i11);
                i11 = (wVar.i() || wVar.l()) ? 0 : i11 + 1;
                z11 = false;
                break;
            }
            int iN2 = gVarB.b().n();
            for (int i12 = 0; i12 < iN2; i12++) {
                w wVar2 = (w) gVarB.b().o(i12);
                if (z11 || p.b(wVar2)) {
                    LayoutNode.r0(this.f4974a, wVar2.h(), this.f4977d, h0.g(wVar2.n(), h0.f4998a.d()), false, 8, null);
                    if (!this.f4977d.isEmpty()) {
                        this.f4975b.a(wVar2.f(), this.f4977d, p.b(wVar2));
                        this.f4977d.clear();
                    }
                }
            }
            this.f4975b.e();
            boolean zC = this.f4975b.c(gVarB, z10);
            if (gVarB.d()) {
                z12 = false;
                break;
            }
            int iN3 = gVarB.b().n();
            int i13 = 0;
            while (true) {
                if (i13 >= iN3) {
                    z12 = false;
                    break;
                }
                w wVar3 = (w) gVarB.b().o(i13);
                if (p.j(wVar3) && wVar3.p()) {
                    break;
                }
                i13++;
            }
            return b0.a(zC, z12);
        } finally {
            this.f4978e = false;
        }
    }

    public final void c() {
        if (this.f4978e) {
            return;
        }
        this.f4976c.a();
        this.f4975b.d();
    }
}
