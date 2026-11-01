package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f5078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f5079c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f5080d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5081e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f5082f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f5083g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f5084h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f5085i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f5086j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f5087k;

    private z(long j11, long j12, long j13, long j14, boolean z10, float f11, int i11, boolean z11, List list, long j15, long j16) {
        this.f5077a = j11;
        this.f5078b = j12;
        this.f5079c = j13;
        this.f5080d = j14;
        this.f5081e = z10;
        this.f5082f = f11;
        this.f5083g = i11;
        this.f5084h = z11;
        this.f5085i = list;
        this.f5086j = j15;
        this.f5087k = j16;
    }

    public /* synthetic */ z(long j11, long j12, long j13, long j14, boolean z10, float f11, int i11, boolean z11, List list, long j15, long j16, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13, j14, z10, f11, i11, z11, list, j15, j16);
    }

    public final boolean a() {
        return this.f5084h;
    }

    public final boolean b() {
        return this.f5081e;
    }

    public final List c() {
        return this.f5085i;
    }

    public final long d() {
        return this.f5077a;
    }

    public final long e() {
        return this.f5087k;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return v.d(this.f5077a, zVar.f5077a) && this.f5078b == zVar.f5078b && y.g.j(this.f5079c, zVar.f5079c) && y.g.j(this.f5080d, zVar.f5080d) && this.f5081e == zVar.f5081e && Float.compare(this.f5082f, zVar.f5082f) == 0 && h0.g(this.f5083g, zVar.f5083g) && this.f5084h == zVar.f5084h && Intrinsics.c(this.f5085i, zVar.f5085i) && y.g.j(this.f5086j, zVar.f5086j) && y.g.j(this.f5087k, zVar.f5087k);
    }

    public final long f() {
        return this.f5080d;
    }

    public final long g() {
        return this.f5079c;
    }

    public final float h() {
        return this.f5082f;
    }

    public int hashCode() {
        return (((((((((((((((((((v.e(this.f5077a) * 31) + androidx.collection.s.a(this.f5078b)) * 31) + y.g.o(this.f5079c)) * 31) + y.g.o(this.f5080d)) * 31) + androidx.compose.foundation.e.a(this.f5081e)) * 31) + Float.floatToIntBits(this.f5082f)) * 31) + h0.h(this.f5083g)) * 31) + androidx.compose.foundation.e.a(this.f5084h)) * 31) + this.f5085i.hashCode()) * 31) + y.g.o(this.f5086j)) * 31) + y.g.o(this.f5087k);
    }

    public final long i() {
        return this.f5086j;
    }

    public final int j() {
        return this.f5083g;
    }

    public final long k() {
        return this.f5078b;
    }

    public String toString() {
        return "PointerInputEventData(id=" + ((Object) v.f(this.f5077a)) + ", uptime=" + this.f5078b + ", positionOnScreen=" + ((Object) y.g.t(this.f5079c)) + ", position=" + ((Object) y.g.t(this.f5080d)) + ", down=" + this.f5081e + ", pressure=" + this.f5082f + ", type=" + ((Object) h0.i(this.f5083g)) + ", activeHover=" + this.f5084h + ", historical=" + this.f5085i + ", scrollDelta=" + ((Object) y.g.t(this.f5086j)) + ", originalEventPosition=" + ((Object) y.g.t(this.f5087k)) + ')';
    }
}
