package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f5057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f5058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f5060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f5061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f5062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f5063h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f5064i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f5065j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List f5066k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f5067l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private d f5068m;

    private w(long j11, long j12, long j13, boolean z10, float f11, long j14, long j15, boolean z11, boolean z12, int i11, long j16) {
        this.f5056a = j11;
        this.f5057b = j12;
        this.f5058c = j13;
        this.f5059d = z10;
        this.f5060e = f11;
        this.f5061f = j14;
        this.f5062g = j15;
        this.f5063h = z11;
        this.f5064i = i11;
        this.f5065j = j16;
        this.f5067l = y.g.f78470b.c();
        this.f5068m = new d(z12, z12);
    }

    public /* synthetic */ w(long j11, long j12, long j13, boolean z10, float f11, long j14, long j15, boolean z11, boolean z12, int i11, long j16, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13, z10, f11, j14, j15, z11, z12, (i12 & 512) != 0 ? h0.f4998a.d() : i11, (i12 & 1024) != 0 ? y.g.f78470b.c() : j16, null);
    }

    public /* synthetic */ w(long j11, long j12, long j13, boolean z10, float f11, long j14, long j15, boolean z11, boolean z12, int i11, long j16, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13, z10, f11, j14, j15, z11, z12, i11, j16);
    }

    private w(long j11, long j12, long j13, boolean z10, float f11, long j14, long j15, boolean z11, boolean z12, int i11, List list, long j16, long j17) {
        this(j11, j12, j13, z10, f11, j14, j15, z11, z12, i11, j16, null);
        this.f5066k = list;
        this.f5067l = j17;
    }

    public /* synthetic */ w(long j11, long j12, long j13, boolean z10, float f11, long j14, long j15, boolean z11, boolean z12, int i11, List list, long j16, long j17, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13, z10, f11, j14, j15, z11, z12, i11, list, j16, j17);
    }

    public final void a() {
        this.f5068m.c(true);
        this.f5068m.d(true);
    }

    public final w b(long j11, long j12, long j13, boolean z10, long j14, long j15, boolean z11, int i11, List list, long j16) {
        return d(j11, j12, j13, z10, this.f5060e, j14, j15, z11, i11, list, j16);
    }

    public final w d(long j11, long j12, long j13, boolean z10, float f11, long j14, long j15, boolean z11, int i11, List list, long j16) {
        w wVar = new w(j11, j12, j13, z10, f11, j14, j15, z11, false, i11, list, j16, this.f5067l, null);
        wVar.f5068m = this.f5068m;
        return wVar;
    }

    public final List e() {
        List list = this.f5066k;
        return list == null ? CollectionsKt.l() : list;
    }

    public final long f() {
        return this.f5056a;
    }

    public final long g() {
        return this.f5067l;
    }

    public final long h() {
        return this.f5058c;
    }

    public final boolean i() {
        return this.f5059d;
    }

    public final float j() {
        return this.f5060e;
    }

    public final long k() {
        return this.f5062g;
    }

    public final boolean l() {
        return this.f5063h;
    }

    public final long m() {
        return this.f5065j;
    }

    public final int n() {
        return this.f5064i;
    }

    public final long o() {
        return this.f5057b;
    }

    public final boolean p() {
        return this.f5068m.a() || this.f5068m.b();
    }

    public String toString() {
        return "PointerInputChange(id=" + ((Object) v.f(this.f5056a)) + ", uptimeMillis=" + this.f5057b + ", position=" + ((Object) y.g.t(this.f5058c)) + ", pressed=" + this.f5059d + ", pressure=" + this.f5060e + ", previousUptimeMillis=" + this.f5061f + ", previousPosition=" + ((Object) y.g.t(this.f5062g)) + ", previousPressed=" + this.f5063h + ", isConsumed=" + p() + ", type=" + ((Object) h0.i(this.f5064i)) + ", historical=" + e() + ",scrollDelta=" + ((Object) y.g.t(this.f5065j)) + ')';
    }
}
