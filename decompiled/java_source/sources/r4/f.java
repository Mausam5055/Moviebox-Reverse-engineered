package r4;

import com.airbnb.lottie.LottieDrawable;
import q4.o;

/* JADX INFO: loaded from: classes2.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f74109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o f74110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q4.b f74111d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f74112e;

    public f(String str, o oVar, o oVar2, q4.b bVar, boolean z10) {
        this.f74108a = str;
        this.f74109b = oVar;
        this.f74110c = oVar2;
        this.f74111d = bVar;
        this.f74112e = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new m4.o(lottieDrawable, aVar, this);
    }

    public q4.b b() {
        return this.f74111d;
    }

    public String c() {
        return this.f74108a;
    }

    public o d() {
        return this.f74109b;
    }

    public o e() {
        return this.f74110c;
    }

    public boolean f() {
        return this.f74112e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f74109b + ", size=" + this.f74110c + '}';
    }
}
