package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.z4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class g1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.ui.text.font.p f5788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.compose.ui.text.font.n f5789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.compose.ui.text.font.o f5790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.compose.ui.text.font.h f5791f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5792g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f5793h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.compose.ui.text.style.a f5794i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.compose.ui.text.style.m f5795j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private n0.i f5796k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f5797l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private androidx.compose.ui.text.style.i f5798m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private z4 f5799n;

    private g1(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var) {
        this.f5786a = j11;
        this.f5787b = j12;
        this.f5788c = pVar;
        this.f5789d = nVar;
        this.f5790e = oVar;
        this.f5791f = hVar;
        this.f5792g = str;
        this.f5793h = j13;
        this.f5794i = aVar;
        this.f5795j = mVar;
        this.f5796k = iVar;
        this.f5797l = j14;
        this.f5798m = iVar2;
        this.f5799n = z4Var;
    }

    public /* synthetic */ g1(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? androidx.compose.ui.graphics.u1.f4658b.e() : j11, (i11 & 2) != 0 ? o0.w.f70628b.a() : j12, (i11 & 4) != 0 ? null : pVar, (i11 & 8) != 0 ? null : nVar, (i11 & 16) != 0 ? null : oVar, (i11 & 32) != 0 ? null : hVar, (i11 & 64) != 0 ? null : str, (i11 & 128) != 0 ? o0.w.f70628b.a() : j13, (i11 & 256) != 0 ? null : aVar, (i11 & 512) != 0 ? null : mVar, (i11 & 1024) != 0 ? null : iVar, (i11 & 2048) != 0 ? androidx.compose.ui.graphics.u1.f4658b.e() : j14, (i11 & 4096) != 0 ? null : iVar2, (i11 & 8192) != 0 ? null : z4Var, null);
    }

    public /* synthetic */ g1(long j11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, pVar, nVar, oVar, hVar, str, j13, aVar, mVar, iVar, j14, iVar2, z4Var);
    }

    public final void a(long j11) {
        this.f5797l = j11;
    }

    public final void b(androidx.compose.ui.text.style.a aVar) {
        this.f5794i = aVar;
    }

    public final void c(long j11) {
        this.f5786a = j11;
    }

    public final void d(String str) {
        this.f5792g = str;
    }

    public final void e(long j11) {
        this.f5787b = j11;
    }

    public final void f(androidx.compose.ui.text.font.n nVar) {
        this.f5789d = nVar;
    }

    public final void g(androidx.compose.ui.text.font.o oVar) {
        this.f5790e = oVar;
    }

    public final void h(androidx.compose.ui.text.font.p pVar) {
        this.f5788c = pVar;
    }

    public final void i(long j11) {
        this.f5793h = j11;
    }

    public final void j(z4 z4Var) {
        this.f5799n = z4Var;
    }

    public final void k(androidx.compose.ui.text.style.i iVar) {
        this.f5798m = iVar;
    }

    public final void l(androidx.compose.ui.text.style.m mVar) {
        this.f5795j = mVar;
    }

    public final androidx.compose.ui.text.x m() {
        return new androidx.compose.ui.text.x(this.f5786a, this.f5787b, this.f5788c, this.f5789d, this.f5790e, this.f5791f, this.f5792g, this.f5793h, this.f5794i, this.f5795j, this.f5796k, this.f5797l, this.f5798m, this.f5799n, null, null, 49152, null);
    }
}
