package androidx.compose.foundation.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class h implements g, f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o0.e f2856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f2857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ BoxScopeInstance f2858c;

    private h(o0.e eVar, long j11) {
        this.f2856a = eVar;
        this.f2857b = j11;
        this.f2858c = BoxScopeInstance.f2744a;
    }

    public /* synthetic */ h(o0.e eVar, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, j11);
    }

    @Override // androidx.compose.foundation.layout.g
    public long a() {
        return this.f2857b;
    }

    @Override // androidx.compose.foundation.layout.f
    public androidx.compose.ui.f b(androidx.compose.ui.f fVar, androidx.compose.ui.b bVar) {
        return this.f2858c.b(fVar, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.c(this.f2856a, hVar.f2856a) && o0.b.f(this.f2857b, hVar.f2857b);
    }

    public int hashCode() {
        return (this.f2856a.hashCode() * 31) + o0.b.o(this.f2857b);
    }

    public String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.f2856a + ", constraints=" + ((Object) o0.b.q(this.f2857b)) + ')';
    }
}
