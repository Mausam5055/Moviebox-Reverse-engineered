package androidx.compose.runtime;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4051a;

    /* JADX WARN: Multi-variable type inference failed */
    public u() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public u(androidx.compose.runtime.tooling.c cVar, boolean z10) {
        this.f4051a = z10;
    }

    public /* synthetic */ u(androidx.compose.runtime.tooling.c cVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : cVar, (i11 & 2) != 0 ? false : z10);
    }

    public final androidx.compose.runtime.tooling.c a() {
        return null;
    }

    public final boolean b() {
        return this.f4051a;
    }

    public final void c(androidx.compose.runtime.tooling.c cVar) {
    }
}
