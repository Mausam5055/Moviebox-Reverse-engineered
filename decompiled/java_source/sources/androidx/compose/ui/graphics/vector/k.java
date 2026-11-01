package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d1;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.q4;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f4854a = CollectionsKt.l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4855b = c5.f4318a.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4856c = d5.f4430a.b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4857d = c1.f4292a.z();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f4858e = u1.f4658b.d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f4859f = q4.f4628a.b();

    public static final int a() {
        return f4859f;
    }

    public static final int b() {
        return f4855b;
    }

    public static final int c() {
        return f4856c;
    }

    public static final List d() {
        return f4854a;
    }

    public static final boolean e(long j11, long j12) {
        return u1.r(j11) == u1.r(j12) && u1.q(j11) == u1.q(j12) && u1.o(j11) == u1.o(j12);
    }

    public static final boolean f(v1 v1Var) {
        if (v1Var instanceof d1) {
            d1 d1Var = (d1) v1Var;
            int iB = d1Var.b();
            c1.a aVar = c1.f4292a;
            if (c1.E(iB, aVar.z()) || c1.E(d1Var.b(), aVar.B())) {
                return true;
            }
        } else if (v1Var == null) {
            return true;
        }
        return false;
    }
}
