package q4;

import com.airbnb.lottie.LottieDrawable;

/* JADX INFO: loaded from: classes2.dex */
public class n implements r4.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f73101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f73102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f73103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f73104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f73105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f73106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f73107g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b f73108h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f73109i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f73110j;

    public n() {
        this(null, null, null, null, null, null, null, null, null);
    }

    public n(e eVar, o oVar, g gVar, b bVar, d dVar, b bVar2, b bVar3, b bVar4, b bVar5) {
        this.f73110j = false;
        this.f73101a = eVar;
        this.f73102b = oVar;
        this.f73103c = gVar;
        this.f73104d = bVar;
        this.f73105e = dVar;
        this.f73108h = bVar2;
        this.f73109i = bVar3;
        this.f73106f = bVar4;
        this.f73107g = bVar5;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return null;
    }

    public n4.p b() {
        return new n4.p(this);
    }

    public e c() {
        return this.f73101a;
    }

    public b d() {
        return this.f73109i;
    }

    public d e() {
        return this.f73105e;
    }

    public o f() {
        return this.f73102b;
    }

    public b g() {
        return this.f73104d;
    }

    public g h() {
        return this.f73103c;
    }

    public b i() {
        return this.f73106f;
    }

    public b j() {
        return this.f73107g;
    }

    public b k() {
        return this.f73108h;
    }

    public boolean l() {
        return this.f73110j;
    }

    public void m(boolean z10) {
        this.f73110j = z10;
    }
}
