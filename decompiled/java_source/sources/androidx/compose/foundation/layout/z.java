package androidx.compose.foundation.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m f2888c;

    public z() {
        this(0.0f, false, null, null, 15, null);
    }

    public z(float f11, boolean z10, m mVar, p pVar) {
        this.f2886a = f11;
        this.f2887b = z10;
        this.f2888c = mVar;
    }

    public /* synthetic */ z(float f11, boolean z10, m mVar, p pVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0.0f : f11, (i11 & 2) != 0 ? true : z10, (i11 & 4) != 0 ? null : mVar, (i11 & 8) != 0 ? null : pVar);
    }

    public final m a() {
        return this.f2888c;
    }

    public final boolean b() {
        return this.f2887b;
    }

    public final p c() {
        return null;
    }

    public final float d() {
        return this.f2886a;
    }

    public final void e(m mVar) {
        this.f2888c = mVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return Float.compare(this.f2886a, zVar.f2886a) == 0 && this.f2887b == zVar.f2887b && Intrinsics.c(this.f2888c, zVar.f2888c) && Intrinsics.c(null, null);
    }

    public final void f(boolean z10) {
        this.f2887b = z10;
    }

    public final void g(float f11) {
        this.f2886a = f11;
    }

    public int hashCode() {
        int iFloatToIntBits = ((Float.floatToIntBits(this.f2886a) * 31) + androidx.compose.foundation.e.a(this.f2887b)) * 31;
        m mVar = this.f2888c;
        return (iFloatToIntBits + (mVar == null ? 0 : mVar.hashCode())) * 31;
    }

    public String toString() {
        return "RowColumnParentData(weight=" + this.f2886a + ", fill=" + this.f2887b + ", crossAxisAlignment=" + this.f2888c + ", flowLayoutData=" + ((Object) null) + ')';
    }
}
