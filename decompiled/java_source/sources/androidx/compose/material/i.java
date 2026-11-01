package androidx.compose.material;

import androidx.compose.foundation.b0;
import androidx.compose.foundation.w;
import androidx.compose.foundation.y;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class i implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f3414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x1 f3415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3416d;

    static final class a implements x1 {
        a() {
        }

        @Override // androidx.compose.ui.graphics.x1
        public final long a() {
            return i.this.f3416d;
        }
    }

    private i(boolean z10, float f11, long j11) {
        this(z10, f11, (x1) null, j11);
    }

    public /* synthetic */ i(boolean z10, float f11, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f11, j11);
    }

    private i(boolean z10, float f11, x1 x1Var, long j11) {
        this.f3413a = z10;
        this.f3414b = f11;
        this.f3415c = x1Var;
        this.f3416d = j11;
    }

    @Override // androidx.compose.foundation.x
    public /* synthetic */ y a(p.g gVar, androidx.compose.runtime.i iVar, int i11) {
        return w.a(this, gVar, iVar, i11);
    }

    @Override // androidx.compose.foundation.b0
    public androidx.compose.ui.node.f b(p.g gVar) {
        x1 aVar = this.f3415c;
        if (aVar == null) {
            aVar = new a();
        }
        return new DelegatingThemeAwareRippleNode(gVar, this.f3413a, this.f3414b, aVar, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f3413a == iVar.f3413a && o0.i.i(this.f3414b, iVar.f3414b) && Intrinsics.c(this.f3415c, iVar.f3415c)) {
            return u1.m(this.f3416d, iVar.f3416d);
        }
        return false;
    }

    public int hashCode() {
        int iA = ((androidx.compose.foundation.e.a(this.f3413a) * 31) + o0.i.j(this.f3414b)) * 31;
        x1 x1Var = this.f3415c;
        return ((iA + (x1Var != null ? x1Var.hashCode() : 0)) * 31) + u1.s(this.f3416d);
    }
}
