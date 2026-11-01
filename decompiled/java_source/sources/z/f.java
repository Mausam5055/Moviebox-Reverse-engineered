package z;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.p4;
import androidx.compose.ui.graphics.v1;
import java.util.List;
import o0.p;
import o0.u;
import y.n;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class f {
    static {
        g.a aVar = g.f79110o1;
    }

    public static long a(g gVar) {
        return n.b(gVar.H0().i());
    }

    public static long b(g gVar) {
        return gVar.H0().i();
    }

    public static long c(g gVar, long j11, long j12) {
        return n.a(y.m.i(j11) - y.g.m(j12), y.m.g(j11) - y.g.n(j12));
    }

    public static /* synthetic */ void d(g gVar, long j11, float f11, long j12, float f12, h hVar, v1 v1Var, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg");
        }
        gVar.K0(j11, (i12 & 2) != 0 ? y.m.h(gVar.i()) / 2.0f : f11, (i12 & 4) != 0 ? gVar.O0() : j12, (i12 & 8) != 0 ? 1.0f : f12, (i12 & 16) != 0 ? l.f79114a : hVar, (i12 & 32) != 0 ? null : v1Var, (i12 & 64) != 0 ? g.f79110o1.a() : i11);
    }

    public static /* synthetic */ void e(g gVar, e4 e4Var, long j11, long j12, long j13, long j14, float f11, h hVar, v1 v1Var, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs");
        }
        long jA = (i13 & 2) != 0 ? p.f70615b.a() : j11;
        long jA2 = (i13 & 4) != 0 ? u.a(e4Var.getWidth(), e4Var.getHeight()) : j12;
        gVar.U0(e4Var, jA, jA2, (i13 & 8) != 0 ? p.f70615b.a() : j13, (i13 & 16) != 0 ? jA2 : j14, (i13 & 32) != 0 ? 1.0f : f11, (i13 & 64) != 0 ? l.f79114a : hVar, (i13 & 128) != 0 ? null : v1Var, (i13 & 256) != 0 ? g.f79110o1.a() : i11, (i13 & 512) != 0 ? g.f79110o1.b() : i12);
    }

    public static /* synthetic */ void f(g gVar, long j11, long j12, long j13, float f11, int i11, p4 p4Var, float f12, v1 v1Var, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0");
        }
        gVar.q0(j11, j12, j13, (i13 & 8) != 0 ? 0.0f : f11, (i13 & 16) != 0 ? m.f79115e.a() : i11, (i13 & 32) != 0 ? null : p4Var, (i13 & 64) != 0 ? 1.0f : f12, (i13 & 128) != 0 ? null : v1Var, (i13 & 256) != 0 ? g.f79110o1.a() : i12);
    }

    public static /* synthetic */ void g(g gVar, Path path, j1 j1Var, float f11, h hVar, v1 v1Var, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU");
        }
        if ((i12 & 4) != 0) {
            f11 = 1.0f;
        }
        float f12 = f11;
        if ((i12 & 8) != 0) {
            hVar = l.f79114a;
        }
        h hVar2 = hVar;
        if ((i12 & 16) != 0) {
            v1Var = null;
        }
        v1 v1Var2 = v1Var;
        if ((i12 & 32) != 0) {
            i11 = g.f79110o1.a();
        }
        gVar.i0(path, j1Var, f12, hVar2, v1Var2, i11);
    }

    public static /* synthetic */ void h(g gVar, List list, int i11, long j11, float f11, int i12, p4 p4Var, float f12, v1 v1Var, int i13, int i14, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPoints-F8ZwMP8");
        }
        gVar.G0(list, i11, j11, (i14 & 8) != 0 ? 0.0f : f11, (i14 & 16) != 0 ? c5.f4318a.a() : i12, (i14 & 32) != 0 ? null : p4Var, (i14 & 64) != 0 ? 1.0f : f12, (i14 & 128) != 0 ? null : v1Var, (i14 & 256) != 0 ? g.f79110o1.a() : i13);
    }

    public static /* synthetic */ void i(g gVar, j1 j1Var, long j11, long j12, float f11, h hVar, v1 v1Var, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-AsUm42w");
        }
        long jC = (i12 & 2) != 0 ? y.g.f78470b.c() : j11;
        gVar.N0(j1Var, jC, (i12 & 4) != 0 ? c(gVar, gVar.i(), jC) : j12, (i12 & 8) != 0 ? 1.0f : f11, (i12 & 16) != 0 ? l.f79114a : hVar, (i12 & 32) != 0 ? null : v1Var, (i12 & 64) != 0 ? g.f79110o1.a() : i11);
    }

    public static /* synthetic */ void j(g gVar, long j11, long j12, long j13, float f11, h hVar, v1 v1Var, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0");
        }
        long jC = (i12 & 2) != 0 ? y.g.f78470b.c() : j12;
        gVar.L0(j11, jC, (i12 & 4) != 0 ? c(gVar, gVar.i(), jC) : j13, (i12 & 8) != 0 ? 1.0f : f11, (i12 & 16) != 0 ? l.f79114a : hVar, (i12 & 32) != 0 ? null : v1Var, (i12 & 64) != 0 ? g.f79110o1.a() : i11);
    }

    public static /* synthetic */ void k(g gVar, j1 j1Var, long j11, long j12, long j13, float f11, h hVar, v1 v1Var, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ");
        }
        long jC = (i12 & 2) != 0 ? y.g.f78470b.c() : j11;
        gVar.V0(j1Var, jC, (i12 & 4) != 0 ? c(gVar, gVar.i(), jC) : j12, (i12 & 8) != 0 ? y.a.f78464a.a() : j13, (i12 & 16) != 0 ? 1.0f : f11, (i12 & 32) != 0 ? l.f79114a : hVar, (i12 & 64) != 0 ? null : v1Var, (i12 & 128) != 0 ? g.f79110o1.a() : i11);
    }
}
