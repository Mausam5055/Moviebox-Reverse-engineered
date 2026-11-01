package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4981b;

    /* JADX WARN: Illegal instructions before constructor call */
    public d() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public d(boolean z10, boolean z11) {
        this.f4980a = z10;
        this.f4981b = z11;
    }

    public /* synthetic */ d(boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? false : z11);
    }

    public final boolean a() {
        return this.f4981b;
    }

    public final boolean b() {
        return this.f4980a;
    }

    public final void c(boolean z10) {
        this.f4981b = z10;
    }

    public final void d(boolean z10) {
        this.f4980a = z10;
    }
}
