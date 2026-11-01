package androidx.compose.material.ripple;

import androidx.compose.foundation.y;
import androidx.compose.runtime.a3;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
public abstract class RippleIndicationInstance implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final StateLayer f3471b;

    public RippleIndicationInstance(boolean z10, final a3 a3Var) {
        this.f3470a = z10;
        this.f3471b = new StateLayer(z10, new Function0<c>() { // from class: androidx.compose.material.ripple.RippleIndicationInstance$stateLayer$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final c invoke() {
                return (c) a3Var.getValue();
            }
        });
    }

    public abstract void b(p.k.b bVar, n0 n0Var);

    public final void c(z.g gVar, float f11, long j11) {
        this.f3471b.b(gVar, Float.isNaN(f11) ? d.a(gVar, this.f3470a, gVar.i()) : gVar.E0(f11), j11);
    }

    public abstract void d(p.k.b bVar);

    public final void e(p.f fVar, n0 n0Var) {
        this.f3471b.c(fVar, n0Var);
    }
}
