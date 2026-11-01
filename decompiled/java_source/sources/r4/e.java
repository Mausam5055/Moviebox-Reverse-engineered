package r4;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;

/* JADX INFO: loaded from: classes2.dex */
public class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GradientType f74098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path.FillType f74099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q4.c f74100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q4.d f74101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q4.f f74102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final q4.f f74103f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f74104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final q4.b f74105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final q4.b f74106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f74107j;

    public e(String str, GradientType gradientType, Path.FillType fillType, q4.c cVar, q4.d dVar, q4.f fVar, q4.f fVar2, q4.b bVar, q4.b bVar2, boolean z10) {
        this.f74098a = gradientType;
        this.f74099b = fillType;
        this.f74100c = cVar;
        this.f74101d = dVar;
        this.f74102e = fVar;
        this.f74103f = fVar2;
        this.f74104g = str;
        this.f74105h = bVar;
        this.f74106i = bVar2;
        this.f74107j = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new m4.h(lottieDrawable, hVar, aVar, this);
    }

    public q4.f b() {
        return this.f74103f;
    }

    public Path.FillType c() {
        return this.f74099b;
    }

    public q4.c d() {
        return this.f74100c;
    }

    public GradientType e() {
        return this.f74098a;
    }

    public String f() {
        return this.f74104g;
    }

    public q4.d g() {
        return this.f74101d;
    }

    public q4.f h() {
        return this.f74102e;
    }

    public boolean i() {
        return this.f74107j;
    }
}
