package androidx.compose.ui.graphics;

import android.graphics.Shader;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class y4 extends j1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Shader f4916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4917d;

    public y4() {
        super(null);
        this.f4917d = y.m.f78491b.a();
    }

    @Override // androidx.compose.ui.graphics.j1
    public final void a(long j11, m4 m4Var, float f11) {
        Shader shaderB = this.f4916c;
        if (shaderB == null || !y.m.f(this.f4917d, j11)) {
            if (y.m.k(j11)) {
                shaderB = null;
                this.f4916c = null;
                this.f4917d = y.m.f78491b.a();
            } else {
                shaderB = b(j11);
                this.f4916c = shaderB;
                this.f4917d = j11;
            }
        }
        long jA = m4Var.a();
        u1.a aVar = u1.f4658b;
        if (!u1.m(jA, aVar.a())) {
            m4Var.s(aVar.a());
        }
        if (!Intrinsics.c(m4Var.y(), shaderB)) {
            m4Var.x(shaderB);
        }
        if (m4Var.getAlpha() == f11) {
            return;
        }
        m4Var.setAlpha(f11);
    }

    public abstract Shader b(long j11);
}
