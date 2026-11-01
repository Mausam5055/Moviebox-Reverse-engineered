package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.w4;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public interface t0 {
    void A(float f11);

    void B(float f11);

    void C(Outline outline);

    void D(int i11);

    void E(boolean z10);

    void F(androidx.compose.ui.graphics.n1 n1Var, Path path, Function1 function1);

    void G(int i11);

    float H();

    void a(float f11);

    void b(float f11);

    void c(w4 w4Var);

    void d(float f11);

    void e(float f11);

    void f(float f11);

    void g(float f11);

    float getAlpha();

    int getHeight();

    int getWidth();

    void h(float f11);

    int i();

    void j(float f11);

    void k();

    void l(int i11);

    int m();

    boolean n();

    void o(Canvas canvas);

    void p(boolean z10);

    boolean q(int i11, int i12, int i13, int i14);

    void r(float f11);

    void s(int i11);

    void setAlpha(float f11);

    boolean t();

    int u();

    boolean v();

    boolean w(boolean z10);

    void x(Matrix matrix);

    void y(int i11);

    int z();
}
