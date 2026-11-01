package r4;

import com.airbnb.lottie.LottieDrawable;
import m4.q;
import q4.o;

/* JADX INFO: loaded from: classes2.dex */
public class h implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f74119b;

    public h(String str, o oVar) {
        this.f74118a = str;
        this.f74119b = oVar;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new q(lottieDrawable, aVar, this);
    }

    public o b() {
        return this.f74119b;
    }

    public String c() {
        return this.f74118a;
    }
}
