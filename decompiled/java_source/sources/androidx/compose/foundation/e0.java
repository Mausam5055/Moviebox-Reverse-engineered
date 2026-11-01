package androidx.compose.foundation;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f2622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.foundation.layout.t f2623b;

    private e0(long j11, androidx.compose.foundation.layout.t tVar) {
        this.f2622a = j11;
        this.f2623b = tVar;
    }

    public /* synthetic */ e0(long j11, androidx.compose.foundation.layout.t tVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? w1.d(4284900966L) : j11, (i11 & 2) != 0 ? PaddingKt.c(0.0f, 0.0f, 3, null) : tVar, null);
    }

    public /* synthetic */ e0(long j11, androidx.compose.foundation.layout.t tVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, tVar);
    }

    public final androidx.compose.foundation.layout.t a() {
        return this.f2623b;
    }

    public final long b() {
        return this.f2622a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(e0.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.foundation.OverscrollConfiguration");
        e0 e0Var = (e0) obj;
        return u1.m(this.f2622a, e0Var.f2622a) && Intrinsics.c(this.f2623b, e0Var.f2623b);
    }

    public int hashCode() {
        return (u1.s(this.f2622a) * 31) + this.f2623b.hashCode();
    }

    public String toString() {
        return "OverscrollConfiguration(glowColor=" + ((Object) u1.t(this.f2622a)) + ", drawPadding=" + this.f2623b + ')';
    }
}
