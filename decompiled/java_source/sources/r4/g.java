package r4;

import com.airbnb.lottie.LottieDrawable;
import m4.p;
import q4.n;

/* JADX INFO: loaded from: classes2.dex */
public class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q4.b f74114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q4.b f74115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n f74116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f74117e;

    public g(String str, q4.b bVar, q4.b bVar2, n nVar, boolean z10) {
        this.f74113a = str;
        this.f74114b = bVar;
        this.f74115c = bVar2;
        this.f74116d = nVar;
        this.f74117e = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new p(lottieDrawable, aVar, this);
    }

    public q4.b b() {
        return this.f74114b;
    }

    public String c() {
        return this.f74113a;
    }

    public q4.b d() {
        return this.f74115c;
    }

    public n e() {
        return this.f74116d;
    }

    public boolean f() {
        return this.f74117e;
    }
}
