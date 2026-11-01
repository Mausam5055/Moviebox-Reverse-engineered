package androidx.compose.ui.text.platform;

import android.graphics.Paint;
import android.graphics.Shader;
import android.text.TextPaint;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.t0;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.y4;
import androidx.compose.ui.graphics.z4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidTextPaint extends TextPaint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m4 f6312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.compose.ui.text.style.i f6313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private z4 f6315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j1 f6316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a3 f6317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private y.m f6318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private z.h f6319h;

    public AndroidTextPaint(int i11, float f11) {
        super(i11);
        ((TextPaint) this).density = f11;
        this.f6313b = androidx.compose.ui.text.style.i.f6409b.c();
        this.f6314c = z.g.f79110o1.a();
        this.f6315d = z4.f4921d.a();
    }

    private final void a() {
        this.f6317f = null;
        this.f6316e = null;
        this.f6318g = null;
        setShader(null);
    }

    private final m4 c() {
        m4 m4Var = this.f6312a;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarB = t0.b(this);
        this.f6312a = m4VarB;
        return m4VarB;
    }

    public final int b() {
        return this.f6314c;
    }

    public final void d(int i11) {
        if (c1.E(i11, this.f6314c)) {
            return;
        }
        c().n(i11);
        this.f6314c = i11;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    /* JADX WARN: Code duplicated, block: B:18:0x003e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    public final void e(final j1 j1Var, final long j11, float f11) {
        if (j1Var == null) {
            a();
            return;
        }
        if (j1Var instanceof b5) {
            f(androidx.compose.ui.text.style.k.b(((b5) j1Var).b(), f11));
            return;
        }
        if (j1Var instanceof y4) {
            if (Intrinsics.c(this.f6316e, j1Var)) {
                y.m mVar = this.f6318g;
                if (!(mVar == null ? false : y.m.f(mVar.m(), j11))) {
                    if (j11 != 9205357640488583168L) {
                        this.f6316e = j1Var;
                        this.f6318g = y.m.c(j11);
                        this.f6317f = r2.c(new Function0<Shader>() { // from class: androidx.compose.ui.text.platform.AndroidTextPaint$setBrush$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Shader invoke() {
                                return ((y4) j1Var).b(j11);
                            }
                        });
                    }
                }
            } else {
                if (j11 != 9205357640488583168L) {
                    this.f6316e = j1Var;
                    this.f6318g = y.m.c(j11);
                    this.f6317f = r2.c(new Function0<Shader>() { // from class: androidx.compose.ui.text.platform.AndroidTextPaint$setBrush$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Shader invoke() {
                            return ((y4) j1Var).b(j11);
                        }
                    });
                }
            }
            m4 m4VarC = c();
            a3 a3Var = this.f6317f;
            m4VarC.x(a3Var != null ? (Shader) a3Var.getValue() : null);
            f.a(this, f11);
        }
    }

    public final void f(long j11) {
        if (j11 != 16) {
            setColor(w1.j(j11));
            a();
        }
    }

    public final void g(z.h hVar) {
        if (hVar == null || Intrinsics.c(this.f6319h, hVar)) {
            return;
        }
        this.f6319h = hVar;
        if (Intrinsics.c(hVar, z.l.f79114a)) {
            setStyle(Paint.Style.FILL);
            return;
        }
        if (hVar instanceof z.m) {
            c().C(n4.f4608a.b());
            z.m mVar = (z.m) hVar;
            c().setStrokeWidth(mVar.f());
            c().A(mVar.d());
            c().r(mVar.c());
            c().m(mVar.b());
            m4 m4VarC = c();
            mVar.e();
            m4VarC.q(null);
        }
    }

    public final void h(z4 z4Var) {
        if (z4Var == null || Intrinsics.c(this.f6315d, z4Var)) {
            return;
        }
        this.f6315d = z4Var;
        if (Intrinsics.c(z4Var, z4.f4921d.a())) {
            clearShadowLayer();
        } else {
            setShadowLayer(androidx.compose.ui.text.platform.extensions.f.b(this.f6315d.b()), y.g.m(this.f6315d.d()), y.g.n(this.f6315d.d()), w1.j(this.f6315d.c()));
        }
    }

    public final void i(androidx.compose.ui.text.style.i iVar) {
        if (iVar == null || Intrinsics.c(this.f6313b, iVar)) {
            return;
        }
        this.f6313b = iVar;
        androidx.compose.ui.text.style.i.a aVar = androidx.compose.ui.text.style.i.f6409b;
        setUnderlineText(iVar.d(aVar.d()));
        setStrikeThruText(this.f6313b.d(aVar.b()));
    }
}
