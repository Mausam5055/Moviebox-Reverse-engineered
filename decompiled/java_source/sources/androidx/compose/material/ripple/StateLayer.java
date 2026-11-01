package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import y.m;

/* JADX INFO: loaded from: classes.dex */
final class StateLayer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f3490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Animatable f3491c = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f3492d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p.f f3493e;

    public StateLayer(boolean z10, Function0 function0) {
        this.f3489a = z10;
        this.f3490b = function0;
    }

    public final void b(z.g gVar, float f11, long j11) {
        long j12;
        float fFloatValue = ((Number) this.f3491c.k()).floatValue();
        if (fFloatValue <= 0.0f) {
            return;
        }
        long jK = u1.k(j11, fFloatValue, 0.0f, 0.0f, 0.0f, 14, null);
        if (!this.f3489a) {
            z.f.d(gVar, jK, f11, 0L, 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
            return;
        }
        float fI = m.i(gVar.i());
        float fG = m.g(gVar.i());
        int iB = t1.f4647a.b();
        z.d dVarH0 = gVar.H0();
        long jI = dVarH0.i();
        dVarH0.e().n();
        try {
            dVarH0.c().a(0.0f, 0.0f, fI, fG, iB);
            j12 = jI;
            try {
                z.f.d(gVar, jK, f11, 0L, 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
                dVarH0.e().j();
                dVarH0.f(j12);
            } catch (Throwable th2) {
                th = th2;
                dVarH0.e().j();
                dVarH0.f(j12);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j12 = jI;
        }
    }

    public final void c(p.f fVar, n0 n0Var) {
        float fA;
        boolean z10 = fVar instanceof p.d;
        if (z10) {
            this.f3492d.add(fVar);
        } else if (fVar instanceof p.e) {
            this.f3492d.remove(((p.e) fVar).a());
        } else if (fVar instanceof p.b) {
            this.f3492d.add(fVar);
        } else if (fVar instanceof p.c) {
            this.f3492d.remove(((p.c) fVar).a());
        } else if (fVar instanceof p.a.b) {
            this.f3492d.add(fVar);
        } else if (fVar instanceof p.a.c) {
            this.f3492d.remove(((p.a.c) fVar).a());
        } else if (!(fVar instanceof p.a.C0879a)) {
            return;
        } else {
            this.f3492d.remove(((p.a.C0879a) fVar).a());
        }
        p.f fVar2 = (p.f) CollectionsKt.v0(this.f3492d);
        if (Intrinsics.c(this.f3493e, fVar2)) {
            return;
        }
        if (fVar2 != null) {
            c cVar = (c) this.f3490b.invoke();
            if (z10) {
                fA = cVar.c();
            } else if (fVar instanceof p.b) {
                fA = cVar.b();
            } else {
                fA = fVar instanceof p.a.b ? cVar.a() : 0.0f;
            }
            kotlinx.coroutines.k.d(n0Var, null, null, new StateLayer$handleInteraction$1(this, fA, h.d(fVar2), null), 3, null);
        } else {
            kotlinx.coroutines.k.d(n0Var, null, null, new StateLayer$handleInteraction$2(this, h.e(this.f3493e), null), 3, null);
        }
        this.f3493e = fVar2;
    }
}
