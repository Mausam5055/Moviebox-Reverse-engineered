package r4;

import com.airbnb.lottie.LottieDrawable;
import m4.r;

/* JADX INFO: loaded from: classes2.dex */
public class l implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q4.h f74134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f74135d;

    public l(String str, int i11, q4.h hVar, boolean z10) {
        this.f74132a = str;
        this.f74133b = i11;
        this.f74134c = hVar;
        this.f74135d = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new r(lottieDrawable, aVar, this);
    }

    public String b() {
        return this.f74132a;
    }

    public q4.h c() {
        return this.f74134c;
    }

    public boolean d() {
        return this.f74135d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f74132a + ", index=" + this.f74133b + '}';
    }
}
