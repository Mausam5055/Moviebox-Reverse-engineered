package androidx.compose.material;

import androidx.compose.runtime.a3;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
final class RangeSliderLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p.i f3363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p.i f3364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a3 f3365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a3 f3366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a3 f3367e;

    public RangeSliderLogic(p.i iVar, p.i iVar2, a3 a3Var, a3 a3Var2, a3 a3Var3) {
        this.f3363a = iVar;
        this.f3364b = iVar2;
        this.f3365c = a3Var;
        this.f3366d = a3Var2;
        this.f3367e = a3Var3;
    }

    public final p.i a(boolean z10) {
        return z10 ? this.f3363a : this.f3364b;
    }

    public final void b(boolean z10, float f11, p.f fVar, n0 n0Var) {
        ((Function2) this.f3367e.getValue()).invoke(Boolean.valueOf(z10), Float.valueOf(f11 - ((Number) (z10 ? this.f3365c : this.f3366d).getValue()).floatValue()));
        kotlinx.coroutines.k.d(n0Var, null, null, new RangeSliderLogic$captureThumb$1(this, z10, fVar, null), 3, null);
    }

    public final int c(float f11) {
        return Float.compare(Math.abs(((Number) this.f3365c.getValue()).floatValue() - f11), Math.abs(((Number) this.f3366d.getValue()).floatValue() - f11));
    }
}
