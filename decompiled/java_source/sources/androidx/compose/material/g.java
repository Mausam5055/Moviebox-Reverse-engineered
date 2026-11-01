package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f3410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.material.ripple.c f3411b;

    private g(long j11, androidx.compose.material.ripple.c cVar) {
        this.f3410a = j11;
        this.f3411b = cVar;
    }

    public /* synthetic */ g(long j11, androidx.compose.material.ripple.c cVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? u1.f4658b.e() : j11, (i11 & 2) != 0 ? null : cVar, null);
    }

    public /* synthetic */ g(long j11, androidx.compose.material.ripple.c cVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, cVar);
    }

    public final long a() {
        return this.f3410a;
    }

    public final androidx.compose.material.ripple.c b() {
        return this.f3411b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return u1.m(this.f3410a, gVar.f3410a) && Intrinsics.c(this.f3411b, gVar.f3411b);
    }

    public int hashCode() {
        int iS = u1.s(this.f3410a) * 31;
        androidx.compose.material.ripple.c cVar = this.f3411b;
        return iS + (cVar != null ? cVar.hashCode() : 0);
    }

    public String toString() {
        return "RippleConfiguration(color=" + ((Object) u1.t(this.f3410a)) + ", rippleAlpha=" + this.f3411b + ')';
    }
}
