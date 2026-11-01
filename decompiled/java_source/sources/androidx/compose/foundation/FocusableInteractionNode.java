package androidx.compose.foundation;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
final class FocusableInteractionNode extends androidx.compose.ui.f.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private p.i f2589n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private p.b f2590o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f2591p;

    public FocusableInteractionNode(p.i iVar) {
        this.f2589n = iVar;
    }

    private final void D1() {
        p.b bVar;
        p.i iVar = this.f2589n;
        if (iVar != null && (bVar = this.f2590o) != null) {
            iVar.a(new p.c(bVar));
        }
        this.f2590o = null;
    }

    private final void E1(final p.i iVar, final p.f fVar) {
        if (!k1()) {
            iVar.a(fVar);
        } else {
            t1 t1Var = (t1) d1().getCoroutineContext().get(t1.f67996l1);
            kotlinx.coroutines.k.d(d1(), null, null, new FocusableInteractionNode$emitWithFallback$1(iVar, fVar, t1Var != null ? t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.foundation.FocusableInteractionNode$emitWithFallback$handler$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.f67061a;
                }

                public final void invoke(Throwable th2) {
                    iVar.a(fVar);
                }
            }) : null, null), 3, null);
        }
    }

    public final void F1(boolean z10) {
        p.i iVar = this.f2589n;
        if (iVar != null) {
            if (!z10) {
                p.b bVar = this.f2590o;
                if (bVar != null) {
                    E1(iVar, new p.c(bVar));
                    this.f2590o = null;
                    return;
                }
                return;
            }
            p.b bVar2 = this.f2590o;
            if (bVar2 != null) {
                E1(iVar, new p.c(bVar2));
                this.f2590o = null;
            }
            p.b bVar3 = new p.b();
            E1(iVar, bVar3);
            this.f2590o = bVar3;
        }
    }

    public final void G1(p.i iVar) {
        if (Intrinsics.c(this.f2589n, iVar)) {
            return;
        }
        D1();
        this.f2589n = iVar;
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f2591p;
    }
}
