package androidx.compose.ui.window;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f6559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SecureFlagPolicy f6560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f6561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f6562e;

    public c() {
        this(false, false, null, false, false, 31, null);
    }

    public c(boolean z10, boolean z11, SecureFlagPolicy secureFlagPolicy, boolean z12, boolean z13) {
        this.f6558a = z10;
        this.f6559b = z11;
        this.f6560c = secureFlagPolicy;
        this.f6561d = z12;
        this.f6562e = z13;
    }

    public /* synthetic */ c(boolean z10, boolean z11, SecureFlagPolicy secureFlagPolicy, boolean z12, boolean z13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? true : z10, (i11 & 2) != 0 ? true : z11, (i11 & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i11 & 8) != 0 ? true : z12, (i11 & 16) != 0 ? true : z13);
    }

    public c(boolean z10, boolean z11, boolean z12) {
        this(z10, z11, SecureFlagPolicy.Inherit, z12, true);
    }

    public /* synthetic */ c(boolean z10, boolean z11, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? true : z10, (i11 & 2) != 0 ? true : z11, (i11 & 4) != 0 ? true : z12);
    }

    public final boolean a() {
        return this.f6562e;
    }

    public final boolean b() {
        return this.f6558a;
    }

    public final boolean c() {
        return this.f6559b;
    }

    public final SecureFlagPolicy d() {
        return this.f6560c;
    }

    public final boolean e() {
        return this.f6561d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f6558a == cVar.f6558a && this.f6559b == cVar.f6559b && this.f6560c == cVar.f6560c && this.f6561d == cVar.f6561d && this.f6562e == cVar.f6562e;
    }

    public int hashCode() {
        return (((((((androidx.compose.foundation.e.a(this.f6558a) * 31) + androidx.compose.foundation.e.a(this.f6559b)) * 31) + this.f6560c.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f6561d)) * 31) + androidx.compose.foundation.e.a(this.f6562e);
    }
}
