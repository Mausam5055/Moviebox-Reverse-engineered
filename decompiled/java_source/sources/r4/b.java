package r4;

import com.airbnb.lottie.LottieDrawable;
import q4.o;

/* JADX INFO: loaded from: classes2.dex */
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f74092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q4.f f74093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f74094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f74095e;

    public b(String str, o oVar, q4.f fVar, boolean z10, boolean z11) {
        this.f74091a = str;
        this.f74092b = oVar;
        this.f74093c = fVar;
        this.f74094d = z10;
        this.f74095e = z11;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new m4.f(lottieDrawable, aVar, this);
    }

    public String b() {
        return this.f74091a;
    }

    public o c() {
        return this.f74092b;
    }

    public q4.f d() {
        return this.f74093c;
    }

    public boolean e() {
        return this.f74095e;
    }

    public boolean f() {
        return this.f74094d;
    }
}
