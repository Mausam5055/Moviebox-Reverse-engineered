package androidx.compose.foundation;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.s4;
import androidx.compose.ui.graphics.x0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class BorderKt {
    public static final androidx.compose.ui.f e(androidx.compose.ui.f fVar, float f11, long j11, a5 a5Var) {
        return f(fVar, f11, new b5(j11, null), a5Var);
    }

    public static final androidx.compose.ui.f f(androidx.compose.ui.f fVar, float f11, j1 j1Var, a5 a5Var) {
        return fVar.e(new BorderModifierNodeElement(f11, j1Var, a5Var, null));
    }

    private static final y.k g(float f11, y.k kVar) {
        return new y.k(f11, f11, kVar.j() - f11, kVar.d() - f11, k(kVar.h(), f11), k(kVar.i(), f11), k(kVar.c(), f11), k(kVar.b(), f11), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Path h(Path path, y.k kVar, float f11, boolean z10) {
        path.reset();
        o4.b(path, kVar, null, 2, null);
        if (!z10) {
            Path pathA = x0.a();
            o4.b(pathA, g(f11, kVar), null, 2, null);
            path.l(path, pathA, s4.f4638a.a());
        }
        return path;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.ui.draw.h i(androidx.compose.ui.draw.c cVar) {
        return cVar.v(new Function1<z.c, Unit>() { // from class: androidx.compose.foundation.BorderKt$drawContentWithoutBorder$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z.c) obj);
                return Unit.f67061a;
            }

            public final void invoke(z.c cVar2) {
                cVar2.Y0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.ui.draw.h j(androidx.compose.ui.draw.c cVar, final j1 j1Var, long j11, long j12, boolean z10, float f11) {
        final long jC = z10 ? y.g.f78470b.c() : j11;
        final long jI = z10 ? cVar.i() : j12;
        final z.h mVar = z10 ? z.l.f79114a : new z.m(f11, 0.0f, 0, 0, null, 30, null);
        return cVar.v(new Function1<z.c, Unit>() { // from class: androidx.compose.foundation.BorderKt$drawRectBorder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z.c) obj);
                return Unit.f67061a;
            }

            public final void invoke(z.c cVar2) {
                cVar2.Y0();
                z.f.i(cVar2, j1Var, jC, jI, 0.0f, mVar, null, 0, 104, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long k(long j11, float f11) {
        return y.b.a(Math.max(0.0f, y.a.d(j11) - f11), Math.max(0.0f, y.a.e(j11) - f11));
    }
}
