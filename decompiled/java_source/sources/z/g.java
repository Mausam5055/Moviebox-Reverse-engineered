package z;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.p4;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.x3;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface g extends o0.e {

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public static final a f79110o1 = a.f79111a;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f79111a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f79112b = c1.f4292a.B();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f79113c = x3.f4879a.a();

        private a() {
        }

        public final int a() {
            return f79112b;
        }

        public final int b() {
            return f79113c;
        }
    }

    void D0(Path path, long j11, float f11, h hVar, v1 v1Var, int i11);

    void G0(List list, int i11, long j11, float f11, int i12, p4 p4Var, float f12, v1 v1Var, int i13);

    d H0();

    void K0(long j11, float f11, long j12, float f12, h hVar, v1 v1Var, int i11);

    void L0(long j11, long j12, long j13, float f11, h hVar, v1 v1Var, int i11);

    void N0(j1 j1Var, long j11, long j12, float f11, h hVar, v1 v1Var, int i11);

    long O0();

    void T(long j11, long j12, long j13, long j14, h hVar, float f11, v1 v1Var, int i11);

    void U0(e4 e4Var, long j11, long j12, long j13, long j14, float f11, h hVar, v1 v1Var, int i11, int i12);

    void V0(j1 j1Var, long j11, long j12, long j13, float f11, h hVar, v1 v1Var, int i11);

    LayoutDirection getLayoutDirection();

    long i();

    void i0(Path path, j1 j1Var, float f11, h hVar, v1 v1Var, int i11);

    void q0(long j11, long j12, long j13, float f11, int i11, p4 p4Var, float f12, v1 v1Var, int i12);
}
