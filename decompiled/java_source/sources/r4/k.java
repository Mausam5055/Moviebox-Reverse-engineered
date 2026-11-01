package r4;

import com.airbnb.lottie.LottieDrawable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class k implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f74130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f74131c;

    public k(String str, List list, boolean z10) {
        this.f74129a = str;
        this.f74130b = list;
        this.f74131c = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new m4.d(lottieDrawable, aVar, this, hVar);
    }

    public List b() {
        return this.f74130b;
    }

    public String c() {
        return this.f74129a;
    }

    public boolean d() {
        return this.f74131c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f74129a + "' Shapes: " + Arrays.toString(this.f74130b.toArray()) + '}';
    }
}
