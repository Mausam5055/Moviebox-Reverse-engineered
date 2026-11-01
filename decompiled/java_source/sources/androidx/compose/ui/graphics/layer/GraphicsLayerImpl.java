package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public interface GraphicsLayerImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f4493a = Companion.f4494a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ Companion f4494a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Function1 f4495b = new Function1<z.g, Unit>() { // from class: androidx.compose.ui.graphics.layer.GraphicsLayerImpl$Companion$DefaultDrawBlock$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z.g) obj);
                return Unit.f67061a;
            }

            public final void invoke(z.g gVar) {
                z.f.j(gVar, u1.f4658b.d(), 0L, 0L, 0.0f, null, null, 0, 126, null);
            }
        };

        private Companion() {
        }

        public final Function1 a() {
            return f4495b;
        }
    }

    float A();

    void B(int i11, int i12, long j11);

    long C();

    long D();

    Matrix E();

    void F(boolean z10);

    void G(Outline outline, long j11);

    void H(long j11);

    void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1);

    void J(int i11);

    float K();

    void L(m1 m1Var);

    void a(float f11);

    void b(float f11);

    void c(w4 w4Var);

    void d(float f11);

    void e(float f11);

    void f(float f11);

    void g(float f11);

    float getAlpha();

    void h(float f11);

    v1 i();

    void j(float f11);

    void k();

    int l();

    float m();

    boolean n();

    float o();

    void p(long j11);

    float q();

    void r(boolean z10);

    void s(long j11);

    void setAlpha(float f11);

    float t();

    void u(float f11);

    w4 v();

    float w();

    float x();

    float y();

    int z();
}
