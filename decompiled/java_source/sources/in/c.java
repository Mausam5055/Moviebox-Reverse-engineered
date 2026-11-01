package in;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f65271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65272b;

    /* JADX WARN: Illegal instructions before constructor call */
    public c() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public c(boolean z10, boolean z11) {
        this.f65271a = z10;
        this.f65272b = z11;
    }

    public /* synthetic */ c(boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? false : z11);
    }

    public final boolean a() {
        return this.f65271a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f65271a == cVar.f65271a && this.f65272b == cVar.f65272b;
    }

    public int hashCode() {
        return (e.a(this.f65271a) * 31) + e.a(this.f65272b);
    }

    public String toString() {
        return "LocalParam(isSubMoreTipBean=" + this.f65271a + ", isSubMoreLoading=" + this.f65272b + ")";
    }
}
