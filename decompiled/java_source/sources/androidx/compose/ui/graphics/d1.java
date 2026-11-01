package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class d1 extends v1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f4427c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4428d;

    private d1(long j11, int i11) {
        this(j11, i11, i0.a(j11, i11), null);
    }

    private d1(long j11, int i11, ColorFilter colorFilter) {
        super(colorFilter);
        this.f4427c = j11;
        this.f4428d = i11;
    }

    public /* synthetic */ d1(long j11, int i11, ColorFilter colorFilter, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, i11, colorFilter);
    }

    public /* synthetic */ d1(long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, i11);
    }

    public final int b() {
        return this.f4428d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d1)) {
            return false;
        }
        d1 d1Var = (d1) obj;
        return u1.m(this.f4427c, d1Var.f4427c) && c1.E(this.f4428d, d1Var.f4428d);
    }

    public int hashCode() {
        return (u1.s(this.f4427c) * 31) + c1.F(this.f4428d);
    }

    public String toString() {
        return "BlendModeColorFilter(color=" + ((Object) u1.t(this.f4427c)) + ", blendMode=" + ((Object) c1.G(this.f4428d)) + ')';
    }
}
