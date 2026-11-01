package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.l0;
import androidx.compose.ui.input.pointer.n0;
import androidx.compose.ui.node.d1;
import androidx.compose.ui.node.e1;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractClickableNode extends androidx.compose.ui.node.i implements e1, d0.e, androidx.compose.ui.focus.c, i1, m1 {
    public static final a H = new a(null);
    public static final int I = 8;
    private p.k.b A;
    private p.d B;
    private final Map C;
    private long D;
    private p.i E;
    private boolean F;
    private final Object G;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private p.i f2524p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private b0 f2525q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f2526r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private androidx.compose.ui.semantics.f f2527s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f2528t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Function0 f2529u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f2530v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final q f2531w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final FocusableNode f2532x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private n0 f2533y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private androidx.compose.ui.node.f f2534z;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private AbstractClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        this.f2524p = iVar;
        this.f2525q = b0Var;
        this.f2526r = str;
        this.f2527s = fVar;
        this.f2528t = z10;
        this.f2529u = function0;
        this.f2531w = new q();
        this.f2532x = new FocusableNode(this.f2524p);
        this.C = new LinkedHashMap();
        this.D = y.g.f78470b.c();
        this.E = this.f2524p;
        this.F = a2();
        this.G = H;
    }

    public /* synthetic */ AbstractClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, b0Var, z10, str, fVar, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean R1() {
        return ClickableKt.e(this) || f.c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T1() {
        if (this.B == null) {
            p.d dVar = new p.d();
            p.i iVar = this.f2524p;
            if (iVar != null) {
                kotlinx.coroutines.k.d(d1(), null, null, new AbstractClickableNode$emitHoverEnter$1$1(iVar, dVar, null), 3, null);
            }
            this.B = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U1() {
        p.d dVar = this.B;
        if (dVar != null) {
            p.e eVar = new p.e(dVar);
            p.i iVar = this.f2524p;
            if (iVar != null) {
                kotlinx.coroutines.k.d(d1(), null, null, new AbstractClickableNode$emitHoverExit$1$1$1(iVar, eVar, null), 3, null);
            }
            this.B = null;
        }
    }

    private final void Y1() {
        b0 b0Var;
        if (this.f2534z == null && (b0Var = this.f2525q) != null) {
            if (this.f2524p == null) {
                this.f2524p = p.h.a();
            }
            this.f2532x.J1(this.f2524p);
            p.i iVar = this.f2524p;
            Intrinsics.e(iVar);
            androidx.compose.ui.node.f fVarB = b0Var.b(iVar);
            D1(fVarB);
            this.f2534z = fVarB;
        }
    }

    private final boolean a2() {
        return this.E == null && this.f2525q != null;
    }

    @Override // androidx.compose.ui.node.m1
    public Object D() {
        return this.G;
    }

    @Override // androidx.compose.ui.node.e1
    public final void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j11) {
        long jB = o0.u.b(j11);
        this.D = y.h.a(o0.p.h(jB), o0.p.i(jB));
        Y1();
        if (this.f2528t && pointerEventPass == PointerEventPass.Main) {
            int iE = oVar.e();
            androidx.compose.ui.input.pointer.q.a aVar = androidx.compose.ui.input.pointer.q.f5023a;
            if (androidx.compose.ui.input.pointer.q.i(iE, aVar.a())) {
                kotlinx.coroutines.k.d(d1(), null, null, new AbstractClickableNode$onPointerEvent$1(this, null), 3, null);
            } else if (androidx.compose.ui.input.pointer.q.i(iE, aVar.b())) {
                kotlinx.coroutines.k.d(d1(), null, null, new AbstractClickableNode$onPointerEvent$2(this, null), 3, null);
            }
        }
        if (this.f2533y == null) {
            this.f2533y = (n0) D1(l0.a(new AbstractClickableNode$onPointerEvent$3(this, null)));
        }
        n0 n0Var = this.f2533y;
        if (n0Var != null) {
            n0Var.M(oVar, pointerEventPass, j11);
        }
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean O() {
        return h1.a(this);
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ boolean P0() {
        return d1.d(this);
    }

    public void P1(androidx.compose.ui.semantics.n nVar) {
    }

    public abstract Object Q1(androidx.compose.ui.input.pointer.e0 e0Var, Continuation continuation);

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ boolean R() {
        return d1.a(this);
    }

    @Override // androidx.compose.ui.node.i1
    public final void R0(androidx.compose.ui.semantics.n nVar) {
        androidx.compose.ui.semantics.f fVar = this.f2527s;
        if (fVar != null) {
            Intrinsics.e(fVar);
            SemanticsPropertiesKt.B(nVar, fVar.n());
        }
        SemanticsPropertiesKt.l(nVar, this.f2526r, new Function0<Boolean>() { // from class: androidx.compose.foundation.AbstractClickableNode$applySemantics$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                this.this$0.W1().invoke();
                return Boolean.TRUE;
            }
        });
        if (this.f2528t) {
            this.f2532x.R0(nVar);
        } else {
            SemanticsPropertiesKt.f(nVar);
        }
        P1(nVar);
    }

    @Override // androidx.compose.ui.focus.c
    public final void S0(androidx.compose.ui.focus.r rVar) {
        if (rVar.isFocused()) {
            Y1();
        }
        if (this.f2528t) {
            this.f2532x.S0(rVar);
        }
    }

    protected final void S1() {
        p.i iVar = this.f2524p;
        if (iVar != null) {
            p.k.b bVar = this.A;
            if (bVar != null) {
                iVar.a(new p.k.a(bVar));
            }
            p.d dVar = this.B;
            if (dVar != null) {
                iVar.a(new p.e(dVar));
            }
            Iterator it = this.C.values().iterator();
            while (it.hasNext()) {
                iVar.a(new p.k.a((p.k.b) it.next()));
            }
        }
        this.A = null;
        this.B = null;
        this.C.clear();
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void T0() {
        d1.c(this);
    }

    protected final boolean V1() {
        return this.f2528t;
    }

    @Override // androidx.compose.ui.node.i1
    public final boolean W0() {
        return true;
    }

    protected final Function0 W1() {
        return this.f2529u;
    }

    protected final Object X1(androidx.compose.foundation.gestures.i iVar, long j11, Continuation continuation) {
        Object objE;
        p.i iVar2 = this.f2524p;
        return (iVar2 == null || (objE = o0.e(new AbstractClickableNode$handlePressInteraction$2$1(iVar, j11, iVar2, this, null), continuation)) != IntrinsicsKt.f()) ? Unit.f67061a : objE;
    }

    protected final Unit Z1() {
        n0 n0Var = this.f2533y;
        if (n0Var == null) {
            return null;
        }
        n0Var.j0();
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    protected final void b2(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        boolean z11;
        boolean z12;
        androidx.compose.ui.node.f fVar2;
        if (Intrinsics.c(this.E, iVar)) {
            z11 = false;
        } else {
            S1();
            this.E = iVar;
            this.f2524p = iVar;
            z11 = true;
        }
        if (!Intrinsics.c(this.f2525q, b0Var)) {
            this.f2525q = b0Var;
            z11 = true;
        }
        if (this.f2528t != z10) {
            if (z10) {
                D1(this.f2531w);
                D1(this.f2532x);
            } else {
                G1(this.f2531w);
                G1(this.f2532x);
                S1();
            }
            j1.b(this);
            this.f2528t = z10;
        }
        if (!Intrinsics.c(this.f2526r, str)) {
            this.f2526r = str;
            j1.b(this);
        }
        if (!Intrinsics.c(this.f2527s, fVar)) {
            this.f2527s = fVar;
            j1.b(this);
        }
        this.f2529u = function0;
        if (this.F != a2()) {
            boolean zA2 = a2();
            this.F = zA2;
            z12 = (zA2 || this.f2534z != null) ? z11 : true;
        }
        if (z12 && ((fVar2 = this.f2534z) != null || !this.F)) {
            if (fVar2 != null) {
                G1(fVar2);
            }
            this.f2534z = null;
            Y1();
        }
        this.f2532x.J1(this.f2524p);
    }

    @Override // androidx.compose.ui.f.c
    public final boolean i1() {
        return this.f2530v;
    }

    @Override // d0.e
    public final boolean l0(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.ui.f.c
    public final void n1() {
        if (!this.F) {
            Y1();
        }
        if (this.f2528t) {
            D1(this.f2531w);
            D1(this.f2532x);
        }
    }

    @Override // androidx.compose.ui.f.c
    public final void o1() {
        S1();
        if (this.E == null) {
            this.f2524p = null;
        }
        androidx.compose.ui.node.f fVar = this.f2534z;
        if (fVar != null) {
            G1(fVar);
        }
        this.f2534z = null;
    }

    @Override // d0.e
    public final boolean s0(KeyEvent keyEvent) {
        Y1();
        if (this.f2528t && f.f(keyEvent)) {
            if (this.C.containsKey(d0.a.m(d0.d.a(keyEvent)))) {
                return false;
            }
            p.k.b bVar = new p.k.b(this.D, null);
            this.C.put(d0.a.m(d0.d.a(keyEvent)), bVar);
            if (this.f2524p != null) {
                kotlinx.coroutines.k.d(d1(), null, null, new AbstractClickableNode$onKeyEvent$1(this, bVar, null), 3, null);
            }
        } else {
            if (!this.f2528t || !f.b(keyEvent)) {
                return false;
            }
            p.k.b bVar2 = (p.k.b) this.C.remove(d0.a.m(d0.d.a(keyEvent)));
            if (bVar2 != null && this.f2524p != null) {
                kotlinx.coroutines.k.d(d1(), null, null, new AbstractClickableNode$onKeyEvent$2$1(this, bVar2, null), 3, null);
            }
            this.f2529u.invoke();
        }
        return true;
    }

    @Override // androidx.compose.ui.node.e1
    public final void t0() {
        p.d dVar;
        p.i iVar = this.f2524p;
        if (iVar != null && (dVar = this.B) != null) {
            iVar.a(new p.e(dVar));
        }
        this.B = null;
        n0 n0Var = this.f2533y;
        if (n0Var != null) {
            n0Var.t0();
        }
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void z0() {
        d1.b(this);
    }
}
