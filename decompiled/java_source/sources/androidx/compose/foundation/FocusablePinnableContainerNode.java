package androidx.compose.foundation;

import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
final class FocusablePinnableContainerNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, u0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private androidx.compose.ui.layout.f0.a f2599n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f2600o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f2601p;

    private final androidx.compose.ui.layout.f0 D1() {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        v0.a(this, new Function0<Unit>() { // from class: androidx.compose.foundation.FocusablePinnableContainerNode$retrievePinnableContainer$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m27invoke();
                return Unit.f67061a;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m27invoke() {
                objectRef.element = androidx.compose.ui.node.e.a(this, PinnableContainerKt.a());
            }
        });
        return (androidx.compose.ui.layout.f0) objectRef.element;
    }

    public final void E1(boolean z10) {
        if (z10) {
            androidx.compose.ui.layout.f0 f0VarD1 = D1();
            this.f2599n = f0VarD1 != null ? f0VarD1.a() : null;
        } else {
            androidx.compose.ui.layout.f0.a aVar = this.f2599n;
            if (aVar != null) {
                aVar.release();
            }
            this.f2599n = null;
        }
        this.f2600o = z10;
    }

    @Override // androidx.compose.ui.node.u0
    public void Z() {
        androidx.compose.ui.layout.f0 f0VarD1 = D1();
        if (this.f2600o) {
            androidx.compose.ui.layout.f0.a aVar = this.f2599n;
            if (aVar != null) {
                aVar.release();
            }
            this.f2599n = f0VarD1 != null ? f0VarD1.a() : null;
        }
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f2601p;
    }

    @Override // androidx.compose.ui.f.c
    public void p1() {
        androidx.compose.ui.layout.f0.a aVar = this.f2599n;
        if (aVar != null) {
            aVar.release();
        }
        this.f2599n = null;
    }
}
