package androidx.compose.foundation;

import androidx.compose.ui.focus.FocusRequesterModifierNodeKt;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class FocusableNode extends androidx.compose.ui.node.i implements androidx.compose.ui.focus.c, i1, androidx.compose.ui.node.p, androidx.compose.ui.focus.q {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f2594p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private androidx.compose.ui.focus.r f2595q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final FocusableInteractionNode f2596r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final FocusablePinnableContainerNode f2597s = (FocusablePinnableContainerNode) D1(new FocusablePinnableContainerNode());

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final s f2598t = (s) D1(new s());

    public FocusableNode(p.i iVar) {
        this.f2596r = (FocusableInteractionNode) D1(new FocusableInteractionNode(iVar));
        D1(androidx.compose.ui.focus.t.a());
    }

    public final void J1(p.i iVar) {
        this.f2596r.G1(iVar);
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean O() {
        return h1.a(this);
    }

    @Override // androidx.compose.ui.node.i1
    public void R0(androidx.compose.ui.semantics.n nVar) {
        androidx.compose.ui.focus.r rVar = this.f2595q;
        boolean z10 = false;
        if (rVar != null && rVar.isFocused()) {
            z10 = true;
        }
        SemanticsPropertiesKt.w(nVar, z10);
        SemanticsPropertiesKt.o(nVar, null, new Function0<Boolean>() { // from class: androidx.compose.foundation.FocusableNode$applySemantics$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(FocusRequesterModifierNodeKt.a(this.this$0));
            }
        }, 1, null);
    }

    @Override // androidx.compose.ui.focus.c
    public void S0(androidx.compose.ui.focus.r rVar) {
        if (Intrinsics.c(this.f2595q, rVar)) {
            return;
        }
        boolean zIsFocused = rVar.isFocused();
        if (zIsFocused) {
            kotlinx.coroutines.k.d(d1(), null, null, new FocusableNode$onFocusEvent$1(this, null), 3, null);
        }
        if (k1()) {
            j1.b(this);
        }
        this.f2596r.F1(zIsFocused);
        this.f2598t.F1(zIsFocused);
        this.f2597s.E1(zIsFocused);
        this.f2595q = rVar;
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean W0() {
        return h1.b(this);
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f2594p;
    }

    @Override // androidx.compose.ui.node.p
    public void v(androidx.compose.ui.layout.l lVar) {
        this.f2598t.v(lVar);
    }
}
