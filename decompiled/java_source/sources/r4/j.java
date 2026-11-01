package r4;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;

/* JADX INFO: loaded from: classes2.dex */
public class j implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f74123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path.FillType f74124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f74125c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q4.a f74126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q4.d f74127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f74128f;

    public j(String str, boolean z10, Path.FillType fillType, q4.a aVar, q4.d dVar, boolean z11) {
        this.f74125c = str;
        this.f74123a = z10;
        this.f74124b = fillType;
        this.f74126d = aVar;
        this.f74127e = dVar;
        this.f74128f = z11;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new m4.g(lottieDrawable, aVar, this);
    }

    public q4.a b() {
        return this.f74126d;
    }

    public Path.FillType c() {
        return this.f74124b;
    }

    public String d() {
        return this.f74125c;
    }

    public q4.d e() {
        return this.f74127e;
    }

    public boolean f() {
        return this.f74128f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f74123a + '}';
    }
}
