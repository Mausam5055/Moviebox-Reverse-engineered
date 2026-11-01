package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class GroupComponent extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f4679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f4680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f4682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f4683f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4684g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Path f4685h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Function1 f4686i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Function1 f4687j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f4688k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f4689l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f4690m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f4691n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f4692o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f4693p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f4694q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f4695r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f4696s;

    public GroupComponent() {
        super(null);
        this.f4680c = new ArrayList();
        this.f4681d = true;
        this.f4682e = u1.f4658b.e();
        this.f4683f = k.d();
        this.f4684g = true;
        this.f4687j = new Function1<i, Unit>() { // from class: androidx.compose.ui.graphics.vector.GroupComponent$wrappedListener$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((i) obj);
                return Unit.f67061a;
            }

            public final void invoke(i iVar) {
                this.this$0.n(iVar);
                Function1 function1B = this.this$0.b();
                if (function1B != null) {
                    function1B.invoke(iVar);
                }
            }
        };
        this.f4688k = "";
        this.f4692o = 1.0f;
        this.f4693p = 1.0f;
        this.f4696s = true;
    }

    private final boolean h() {
        return !this.f4683f.isEmpty();
    }

    private final void k() {
        this.f4681d = false;
        this.f4682e = u1.f4658b.e();
    }

    private final void l(j1 j1Var) {
        if (this.f4681d && j1Var != null) {
            if (j1Var instanceof b5) {
                m(((b5) j1Var).b());
            } else {
                k();
            }
        }
    }

    private final void m(long j11) {
        if (this.f4681d && j11 != 16) {
            long j12 = this.f4682e;
            if (j12 == 16) {
                this.f4682e = j11;
            } else {
                if (k.e(j12, j11)) {
                    return;
                }
                k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(i iVar) {
        if (iVar instanceof PathComponent) {
            PathComponent pathComponent = (PathComponent) iVar;
            l(pathComponent.e());
            l(pathComponent.g());
        } else if (iVar instanceof GroupComponent) {
            GroupComponent groupComponent = (GroupComponent) iVar;
            if (groupComponent.f4681d && this.f4681d) {
                m(groupComponent.f4682e);
            } else {
                k();
            }
        }
    }

    private final void x() {
        if (h()) {
            Path pathA = this.f4685h;
            if (pathA == null) {
                pathA = x0.a();
                this.f4685h = pathA;
            }
            h.c(this.f4683f, pathA);
        }
    }

    private final void y() {
        float[] fArrC = this.f4679b;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f4679b = fArrC;
        } else {
            i4.h(fArrC);
        }
        i4.q(fArrC, this.f4690m + this.f4694q, this.f4691n + this.f4695r, 0.0f, 4, null);
        i4.k(fArrC, this.f4689l);
        i4.l(fArrC, this.f4692o, this.f4693p, 1.0f);
        i4.q(fArrC, -this.f4690m, -this.f4691n, 0.0f, 4, null);
    }

    @Override // androidx.compose.ui.graphics.vector.i
    public void a(z.g gVar) {
        if (this.f4696s) {
            y();
            this.f4696s = false;
        }
        if (this.f4684g) {
            x();
            this.f4684g = false;
        }
        z.d dVarH0 = gVar.H0();
        long jI = dVarH0.i();
        dVarH0.e().n();
        try {
            z.j jVarC = dVarH0.c();
            float[] fArr = this.f4679b;
            if (fArr != null) {
                jVarC.d(i4.a(fArr).r());
            }
            Path path = this.f4685h;
            if (h() && path != null) {
                z.i.a(jVarC, path, 0, 2, null);
            }
            List list = this.f4680c;
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((i) list.get(i11)).a(gVar);
            }
        } finally {
            dVarH0.e().j();
            dVarH0.f(jI);
        }
    }

    @Override // androidx.compose.ui.graphics.vector.i
    public Function1 b() {
        return this.f4686i;
    }

    @Override // androidx.compose.ui.graphics.vector.i
    public void d(Function1 function1) {
        this.f4686i = function1;
    }

    public final int f() {
        return this.f4680c.size();
    }

    public final long g() {
        return this.f4682e;
    }

    public final void i(int i11, i iVar) {
        if (i11 < f()) {
            this.f4680c.set(i11, iVar);
        } else {
            this.f4680c.add(iVar);
        }
        n(iVar);
        iVar.d(this.f4687j);
        c();
    }

    public final boolean j() {
        return this.f4681d;
    }

    public final void o(List list) {
        this.f4683f = list;
        this.f4684g = true;
        c();
    }

    public final void p(String str) {
        this.f4688k = str;
        c();
    }

    public final void q(float f11) {
        this.f4690m = f11;
        this.f4696s = true;
        c();
    }

    public final void r(float f11) {
        this.f4691n = f11;
        this.f4696s = true;
        c();
    }

    public final void s(float f11) {
        this.f4689l = f11;
        this.f4696s = true;
        c();
    }

    public final void t(float f11) {
        this.f4692o = f11;
        this.f4696s = true;
        c();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("VGroup: ");
        sb2.append(this.f4688k);
        List list = this.f4680c;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) list.get(i11);
            sb2.append("\t");
            sb2.append(iVar.toString());
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final void u(float f11) {
        this.f4693p = f11;
        this.f4696s = true;
        c();
    }

    public final void v(float f11) {
        this.f4694q = f11;
        this.f4696s = true;
        c();
    }

    public final void w(float f11) {
        this.f4695r = f11;
        this.f4696s = true;
        c();
    }
}
