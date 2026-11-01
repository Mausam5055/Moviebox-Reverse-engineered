package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.x3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.p;
import o0.t;
import o0.u;
import y.m;
import z.f;
import z.g;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Painter {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e4 f4621g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f4622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f4623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f4624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f4625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f4626l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private v1 f4627m;

    private a(e4 e4Var, long j11, long j12) {
        this.f4621g = e4Var;
        this.f4622h = j11;
        this.f4623i = j12;
        this.f4624j = x3.f4879a.a();
        this.f4625k = k(j11, j12);
        this.f4626l = 1.0f;
    }

    public /* synthetic */ a(e4 e4Var, long j11, long j12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(e4Var, (i11 & 2) != 0 ? p.f70615b.a() : j11, (i11 & 4) != 0 ? u.a(e4Var.getWidth(), e4Var.getHeight()) : j12, null);
    }

    public /* synthetic */ a(e4 e4Var, long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(e4Var, j11, j12);
    }

    private final long k(long j11, long j12) {
        if (p.h(j11) < 0 || p.i(j11) < 0 || t.g(j12) < 0 || t.f(j12) < 0 || t.g(j12) > this.f4621g.getWidth() || t.f(j12) > this.f4621g.getHeight()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return j12;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f11) {
        this.f4626l = f11;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean b(v1 v1Var) {
        this.f4627m = v1Var;
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f4621g, aVar.f4621g) && p.g(this.f4622h, aVar.f4622h) && t.e(this.f4623i, aVar.f4623i) && x3.d(this.f4624j, aVar.f4624j);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long h() {
        return u.d(this.f4625k);
    }

    public int hashCode() {
        return (((((this.f4621g.hashCode() * 31) + p.j(this.f4622h)) * 31) + t.h(this.f4623i)) * 31) + x3.e(this.f4624j);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void j(g gVar) {
        f.e(gVar, this.f4621g, this.f4622h, this.f4623i, 0L, u.a(Math.round(m.i(gVar.i())), Math.round(m.g(gVar.i()))), this.f4626l, null, this.f4627m, 0, this.f4624j, 328, null);
    }

    public String toString() {
        return "BitmapPainter(image=" + this.f4621g + ", srcOffset=" + ((Object) p.m(this.f4622h)) + ", srcSize=" + ((Object) t.i(this.f4623i)) + ", filterQuality=" + ((Object) x3.f(this.f4624j)) + ')';
    }
}
